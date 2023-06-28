// The Power of Partnership

// File: partnerships.ts

// Initializing variables 
let success: boolean;
let efforts: number;
let resources: any;
let stakeholders: string[];
let challenge: string;

// 1
stakeholders = ["Businesses", "Nonprofits", "Governments", "Educators", "Community Leaders"];
challenge = "As we face a changing global economy and complex societal challenges, it is increasingly important to build strong partnerships across sectors to ensure success.";

// 2
console.log(challenge);
console.log("We need to bring together the right stakeholders to create the most beneficial outcomes. The power of partnership lies in the collective effort and resources of all stakeholders.");

// 3 
for (let i = 0; i < stakeholders.length; i++) {
  console.log(`${stakeholders[i]} are essential partners in this effort.`);
}

// 4
resources = {
  financial: "Financial resources for innovation and growth.",
  expertise: "Sharing expertise and experiences between sectors.",
  talent: "Creating new opportunities to attract and engage talented individuals."
};

// 5
for (const resource in resources) {
  console.log(`${resources[resource]}`);
}

// 6
efforts = 10;
success = true;
while (efforts > 0 && success) {
  efforts--;
  console.log(`Through collaboration and a commitment to shared goals, the power of partnership creates successful outcomes. ${efforts} more efforts to progress!`);
  if (efforts === 5) {
    console.log("Halfway there!");
  }
  if (efforts === 0) {
    success = false;
    console.log("Success! Partnerships are a powerful and highly effective tool to achieve breakthroughs and progress in any field of work.");
  }
}