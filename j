 <div class="border-b-1 max-h-xs overflow-y-auto">
                
             
                <div class="flex flex-col h-full">
                  <ng-container *ngFor="let features of featureList; let i=last"[class.border-0]="last">
                    <div>
                      <div class="flex flex-row gap-x-2 border-dark border-solid border-opacity-75 border-b-1 border-r-0 border-l-0 border-t-0 mt-2 mb-2">
                        <div class="flex "><sdf-checkbox></sdf-checkbox></div>
                        <div class="flex align-center justify-start flex-col gap-y-2 mb-4 cursor-pointer w-full">
                          <span class="text-md font-bold text-action-primary">{{features.featureName}}</span>
                          <span class="text-md text-opacity-75">0 Reviewed | 0 Not Started | 0 Send to Client | 0 Signed Off |</span>
                        </div> 
                      </div>
                    </div>
                    
                  </ng-container>
        
                </div>
              </div>
