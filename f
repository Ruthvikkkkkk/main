import { Component } from "@angular/core";
import { ProcessStorageService } from "project/modules/process/service/util/process-storage.service";

@Component({
  selector: 'app-story-stats-bar',
  templateUrl: './story-stats-bar.component.html'
})

export class StoryStatsComponent {
  constructor(public processStorageService: ProcessStorageService) { }
  public numberOfSection: string = '00';
  public readForApproval: string = '00';
  public completedSection: string = '00';
  public demoFailed:string='00';
  public demoPassed: string = '00';
  public readyForDemo: string = '00';
  public isCountCheckCompleted(): boolean {
    let totalStories: number = this.processStorageService.userStories.length;
    if (this.processStorageService.stateCounts  && this.processStorageService.userStories) {
      let result: number = totalStories - this.processStorageService.stateCounts.outofScope;
      this.numberOfSection = result + '';
      if (result < 10) {
        this.numberOfSection = '0' + result;
      }
      result = this.processStorageService.stateCounts.readyForApprovalSectionsCount;
      this.readForApproval = result + '';
      if (result < 10) {
        this.readForApproval = '0' + result;
      }
      result =  this.processStorageService.stateCounts.completedSectionsCount;
      this.completedSection = result + '';
      if (result < 10) {
        this.completedSection = '0' + result;
      }
      result=this.processStorageService.stateCounts.demoFailedCount;
      this.demoFailed=result+'';
      if(result<10){
        this.demoFailed = '0'+ result;
      }
      result=this.processStorageService.stateCounts.demoPassedCount;
      this.demoPassed=result+'';
      if(result<10){
        this.demoPassed = '0'+ result;
      }
      result=this.processStorageService.stateCounts.readyForDemoCount;
      this.readyForDemo=result+'';
      if(result<10){
        this.readyForDemo = '0'+ result;
      }

    }
    return true;
  }

}
