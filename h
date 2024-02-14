import { HttpClientTestingModule } from "@angular/common/http/testing";
import { ComponentFixture, waitForAsync, TestBed } from "@angular/core/testing";
import { RouterTestingModule } from "@angular/router/testing";
import { CountryLevelPipelineService } from "project/modules/country-specific-dashboard/services/pipeline/country-level-pipeline.service";
import { GlobalDataService } from "project/modules/dashboard/services/global/global-data-service";
import { NameSearch } from "project/modules/process/service/pipe/name-search.pipe";
import { StateSearch } from "project/modules/process/service/pipe/state-search.pipe";
import { ProcessPipelineService } from "project/modules/process/service/pipeline/process-pipeline.service";
import { ProcessStorageService } from "project/modules/process/service/util/process-storage.service";
import { SharedService } from "project/shared/services/shared-service/shared.service";
import { StorageService } from "project/shared/services/util/storage.service";
import {StoryStatsComponent} from "./story-stats-bar.component"

describe('StoryContainerComponent',() =>{
    let stateSearch: StateSearch;
    let nameSearch:NameSearch;
    let processStorageService: ProcessStorageService;
    let component : StoryStatsComponent;
    let fixture: ComponentFixture<StoryStatsComponent>;
    let processPipelineService: ProcessPipelineService;
    beforeEach(
        waitForAsync(() => {
          TestBed.configureTestingModule({
            declarations: [StoryStatsComponent, StateSearch,NameSearch],
            providers: [ProcessStorageService,StoryStatsComponent,ProcessPipelineService,StorageService,SharedService,StateSearch, NameSearch, CountryLevelPipelineService,GlobalDataService],
            imports: [RouterTestingModule, HttpClientTestingModule]
          }).compileComponents();

          component=TestBed.inject(StoryStatsComponent);
        })
      );
      beforeEach(() => {
        fixture = TestBed.createComponent(StoryStatsComponent);
        component = fixture.componentInstance;
        processStorageService = TestBed.inject(ProcessStorageService);
        processPipelineService =  TestBed.inject(ProcessPipelineService);
        stateSearch = TestBed.inject(StateSearch);
        nameSearch = TestBed.inject(NameSearch);
        fixture.detectChanges();
      });
      it("StoryStatsComponent",()=>{
        let result=component.processStorageService.stateCounts.demoFailedCount+'';
        expect(component.demoFailed).toEqual(result)
      })
    });
