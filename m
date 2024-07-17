Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713A8933FB3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F299910E05B;
	Wed, 17 Jul 2024 15:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iJagepCu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A6E10E148
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721230251; x=1752766251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OGzwMDkiRRVGCBciU/eLwATrjbrDkBphu+z/5DRh1W8=;
 b=iJagepCuXfFwWPTT43W/7AnNwKm4M8AZg/tRKZiIARK6vhlSGVbK3k2X
 riM13llS4UcinrcZKWis1SG8EOYchEIH9uFumQM691Mc395UD/r2/Djk1
 JLW9ZvFwKSunH7vH1oTAWHPwfu0VquOeKpGuItm76jsQPma2SqijjVHEr
 N45wPue2NINntpduCPv+pIPWuJZSi5AwkHi+ouGWI9BjsZQdsV+cQvg2O
 JQlIGiZvyd9LeDUOhidXyXnoGj5ZQrMiGRthVOStoSWqIkwAC+wqDIIfI
 PW/oBhHcgpKIMNQpFYxU1GRjiTxuWoB5pBuaH50/4Ey5oRrsT8TwME3YZ w==;
X-CSE-ConnectionGUID: T8+wjV7BTT6FUJYsjElyWw==
X-CSE-MsgGUID: lbEffYaERAev5bLIwgtBiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18878759"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="18878759"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 08:30:51 -0700
X-CSE-ConnectionGUID: lDTKeOP2T4qP8rcZDDEMnQ==
X-CSE-MsgGUID: aHYIGVD5SDa/lb3o6BoOiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="87901680"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 08:30:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 08:30:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 08:30:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 08:30:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 08:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRmeTf5uJN3U8ME9YDp1L6a0Xo8oTwyAP+7AGlQVmYrZntRhxAnA/n8F4NqV82GNJEltWwOveIVp5yUXJxwLQwfX7/OHIkUZwpUz59IVID0hhYQcly9/k5hyl0ChmFZdZC0muggrH/0OoID8cPIZgZZNb00kuHXQg3NNqflyiJ0ia7iPttCJloW0F+iK6QOvocpf9hrB9O5+Gg9HHvHdSIfkMKoqL9UopSgUkQunqZNTQrqh0AUYgqtoYQeKvVMCTcMywSNrnBfMS3kGFFJmQ754lprHOlvpFz4CnXfHnPwiTUp4Hcd8DuyGSIr4s9Y96vrQdu1QX7NZOcFaHVgDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OGzwMDkiRRVGCBciU/eLwATrjbrDkBphu+z/5DRh1W8=;
 b=nIvEK8bjEllxstong0FukS7c0qN5baXAiAOH7OTH39LBkQRimZhyjgMln2fiwSh0eaeYIbCkEjdhKFnKZ4/8+7JcHhecrg8FX/fbYqDxM6DSnFjb5iY8FKt8YQ0CAox2TeHVkpdVW9qEUDFecokDuZFoSGJMJEorNz8EXSjqbIAemUE1JtOKWpSQIPdKR+aZ48afS3gPc072o547HV0LgW//HA7FinldmUOFz8RxIxqWtLYuP+ygJBnXXFXIueMax9baQgsAC8N4cDBycgOx6QBv4tS+5Z3sP3MsU/CUpM4VVJRjM3Mg3ffkUJxvuwduP0k4H3laTYFq1rtTnemnTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Wed, 17 Jul
 2024 15:30:46 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7784.016; Wed, 17 Jul 2024
 15:30:46 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Allow NULL memory region
Thread-Topic: [PATCH] drm/i915: Allow NULL memory region
Thread-Index: AQHa1KbN5UTvSEpbjUOefTSt9WtVWrH7DFeAgAAAesCAAAPqAIAAAZkw
Date: Wed, 17 Jul 2024 15:30:46 +0000
Message-ID: <CH0PR11MB5444B7668BEE8E3815D05EDCE5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
 <CH0PR11MB5444A0D640A7B0E8C32189A0E5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
 <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
In-Reply-To: <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB5246:EE_
x-ms-office365-filtering-correlation-id: 8b778dd2-1bb5-4f2c-76c2-08dca6756dd4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U05JVlgxWHpaQjdvV3A3VllLLzA5RGtLL0tJODJDV2xFdzB1Q3RwMEs4MUlG?=
 =?utf-8?B?Yi9MR2F1UHpSYkphRFRXWjQ1NksrWHhHbExDU1F3KzNDRGlVRWJxNURESWF1?=
 =?utf-8?B?ZXlFREV6eEtZSSsrK3lmVzJGa1ZKQzR1WDNzd1R6ZjRJR2JROUNMbVVFcEo4?=
 =?utf-8?B?TmxLVVh6Z3V2Y3ladTd1VDg1WEZIUzhaRGRoRDFYZTBxd0l1Zy9id3dSN2NJ?=
 =?utf-8?B?V2lBdlVVOTRtQmJSWWJmakRsVzM2a1BXR3Flc0txZUxuVUs4MVNWQnY2bko5?=
 =?utf-8?B?dk1oUXRTeTJITmhOem54c2JmNFpVc1F4eG10MnJ3QWlXN1JZUmVtSVlvQVV3?=
 =?utf-8?B?NWlMZXpXbUdVd3Z5SWJucGhzWG41MmNMZE5TYzNLMmo1V0RLejlsVGVyejh3?=
 =?utf-8?B?QUJvV2lCN1RXRW1HUlRaeWZHT1dWSzJTU3gwckV2amhmdS83OXdEWDhnaDNL?=
 =?utf-8?B?M0hGZ2NmekJ4RjVuMElzYjFQWno3cjZ2UVNjY0pFTGlqdnZ4R0hZUHE2UUYy?=
 =?utf-8?B?T3V0U3V1eDJTeWxyYVBPZE8vZHdLSzEwZHZOcVRLQlZCdFZTb1ZFaS9Wb0tv?=
 =?utf-8?B?cXRmYUk4YktqdkFhTHFwTVBsL013Y1ZwbFZFbmVSWk0yb2o3andaazhMNTFB?=
 =?utf-8?B?YlltWm52WFBhTGRSaHBOZmd0MHArbk44VXJ3TkFqeUs3OWo1TUo3RDJDcVlh?=
 =?utf-8?B?M1R1M21lVFNDMjdack9lT21jYzB4M216ZXVTQnZFZmIvblE5UWc3UWN2UjFm?=
 =?utf-8?B?MFRabTJJSVB4QnQxN0dWamVYTmVRdjlRWTdjYm9MUjZ1KzMrd2tBOU44SFY3?=
 =?utf-8?B?cEVUNm53WCtTRlFsRUhKcnpIUk9WZ1lPOXRON2hvZkEvNlc3bTNRczgzcWtn?=
 =?utf-8?B?c2haZWlHSjZrUEJkeGJIdmxLQ1NzVXFSdzIxQVh6aHpZWFZVWkM2M1lxVlJy?=
 =?utf-8?B?TFQxYWt0Q2NMSkZaNTlyZVgweTRCaHVWMkpCTHV4OWR2NmkvckJxbXlRSW1x?=
 =?utf-8?B?YWJqc0phV1hYRmszNHEyVUc0TlhyVklIRUROMS9OaFhMOWZBbmp3Nm1LUmhH?=
 =?utf-8?B?OHJ4dHV5MTlDVFFaaFN0RXlreitJekcyWE9FZ1VvK3l5UFA4ajNSZEhsd1dx?=
 =?utf-8?B?ckJUNkswZ05kK2hERlBOc2xBcFcxTXdvWEkyTmY5czdDQU15aC9IWXh2MVB6?=
 =?utf-8?B?eWh3Vks3aVYwSGNJNTd3MjN0YWR1MVVxQXJhRXM3RW9kVy9HQTc2RjdsTUdJ?=
 =?utf-8?B?OGhta3BNbGgvMExaVlBvY1g5LzZETm1QeVVYaWtuVU9DNEpBem1Yd1pDLzhR?=
 =?utf-8?B?cnhreWFHSWw5U1l0SXBqakdtNVFNSnhXc3BTWS84RURzVUlWWXNLanV1by9D?=
 =?utf-8?B?YkV5L3lma1ZGUUhpR20ybDZxTVpaOUNORkVLT0hqRkxhS1pMdjM5cW5JMlNM?=
 =?utf-8?B?Sm5mc0lOMHRCaVZvYXpTWkpZK3RnR2RLck8rdktSWEtWR3UveUQzOWMvcTJU?=
 =?utf-8?B?bkJ2ZmErOC8xNnlZeGpWNFdKR0UwZUY5MVZKb0ZQRUtYM2R5eHlqdEFGbmR2?=
 =?utf-8?B?SHE5b0IxZXVsSHZsK0c3WnNHeE40RkVPT25GSnRaZGRIWXVhVUhvSkpKMENu?=
 =?utf-8?B?azZFT2llMFhwcEIzbTEyb0dkZFpWUjQzQk5abDVOcU1QUG84bnZxMGwrWU9i?=
 =?utf-8?B?VVEzblBtU01oL2M1ajYyK1cyYTVtRStqNVJiSkh1dzF0L0dQdXJQYTdJMjRS?=
 =?utf-8?B?MTdJUFAwVU51TWRuMUZWamtHYWtlSUthZ1k5bGRRYkdSRGRzRG4rN21CaWsr?=
 =?utf-8?B?OGJQeWM0TWx4TTRZVHZJK3BidERRNlVXUVE1NXZSMFdFVTduY3dKRG81NzZl?=
 =?utf-8?B?UUc4Zm1GSUxSMjZmc1hhN2RLQWk2UHJyTjJmcVByWndTTmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Wm10TENPTm9LK3Zld3JTTTVoQzlMMDlXc2FzekRnbWNKaEVZSk9icWkxazJw?=
 =?utf-8?B?ZFdncFBGU25IaUdEYmpsZnNjZUc4bmxKdHQzUUNZcVNveUwxbWlMUWEyd0Ju?=
 =?utf-8?B?aktUdzlmc0czdG1wRlpZQ2pRaTNWZ1pPbnQySVgwaC9vb09IVC85MG9BQS9w?=
 =?utf-8?B?SWhabGVtUVBITDk3M1VDZ0xjRUc3RTNnSFVvMVhBRHNtejViTGs4RnN5UDBD?=
 =?utf-8?B?NWNGRVIyY0NCSDN1bkVpNzA3T0R1bEdmRUpLR2k4bHJlQjYrYlBnbnpZZ2lZ?=
 =?utf-8?B?UVZhNFBjMGhIRHlDZjg2Ymxtdzc5NnlmT2JWVStxZnAzWUJkUks1KzM3MUVt?=
 =?utf-8?B?NU1TcjVVOU9NNFBLemtacjhTeEJkeTN0RXl2d09qcHVFNzRRTmtLNG1JSUFW?=
 =?utf-8?B?MVN2L21JQmFBRjR3K2N2L3VQZzlRWkdYbS9JVGM4ajJac3hWR3pRbmF6Vm5y?=
 =?utf-8?B?U2V5aldjdnhHbGdIelM4SzY4SUFUMTdNeTg3a0EwRTlaWkl6SkFiUXZiRnBP?=
 =?utf-8?B?UW9mWGFXNTVTdFRhSlBrV0NjVE1RcGswWTBUZ2hBRXZnYlo4enJBb3RtUGxu?=
 =?utf-8?B?UFNkY3F5WTRiN1B0M1orU1lyZmNQTERRMnlpdzBLc2JVMFBGdDhwQStObmVQ?=
 =?utf-8?B?bnZsNWhlRVBoTkIvMkxPMy9ja2FQQUFybUpvMTZFOHVWNllUemZqbXBwTWFZ?=
 =?utf-8?B?SlZxRGo1YmpacXQ2dHVzcFlDK1BCNGtvSFRrWEVLbEt2dzZiTVNFZ01mQzBC?=
 =?utf-8?B?eDNFaUhjVUwyVjdBYXZITXg5Qm56R2Eya3c0Ny9FV2NnblRoMlU1Z2hWTnpT?=
 =?utf-8?B?N0lvQWFpTkE3cGo0TUxiNWhzNURQRUZVMXZXRXRjamhRQUFzb0dqMXNTQS9O?=
 =?utf-8?B?SGZZRjBQN1B3RmI3Z2llUWkyTFNWVlpJaFJWRkhPRkhINFJJNE9uN0o4K2Ja?=
 =?utf-8?B?RGNGUVprbGxSUnRkWTBHMzB0RGl5T3h3M1B2eXVQMkF1dUswRGRIVXE3Z2Rt?=
 =?utf-8?B?d3hkUGxRelRpektSZE9kN3RWZ0hTemtHTlcwa1JrYlJwUmlFaWZrcHdwK2hE?=
 =?utf-8?B?R0twUStWZFFQWVFBSHE5V00ra3p4aENLdTFkNWpFTWhQMlVFL25IejRoMnFt?=
 =?utf-8?B?TTNia2Q3R3ZmMXBsK0xudURXMUZDa3Q1NkxTNm8vRFRtWFJWTjNWb1hXZmdX?=
 =?utf-8?B?TllNalI5dE9tTjZuUXVlZmcvT3dJT01UUXR5c3dvdi9KTHduaS9NN0QzK25E?=
 =?utf-8?B?bjlaOGVaekMwbHFTYkRKMUp0NlVqbmtUMysvU3k3d29XTEI3YStsVmxLT1FN?=
 =?utf-8?B?Z2JQbUlJcEVFSlJadlB5MmRqd3NGOVUzNmlWUkRqSDROckhLc3AzbG9ERUxm?=
 =?utf-8?B?a2VJUmRtK01EYlM5T2tJNEVERWFsK25aVGpROWljNkxJNW1nLzZZTGQ3TTM5?=
 =?utf-8?B?bG54L2Z3WENXNWIwWDBxVjdlYXVmQ3plM3VkdmtIbTJnaUl6SDhrVVVwM1Bs?=
 =?utf-8?B?WmRaRHVxRmZVK0lxUC84TThwVWd1WGxqMU13VVVXeDdzYzdmLzJwOGR0UE1o?=
 =?utf-8?B?OWdudGFDT1NUeitzdFhWU1BjY3hMcTRMSG5mQkVBT3cxaFpRS3loRjhjTkJE?=
 =?utf-8?B?eFFkenZUL3lyVGdZWG9PYTh0aVQzU253aVh5Mmd2cHJWQ1ltMDRkUWlRcGRJ?=
 =?utf-8?B?ZHlGNEdUM3gwaGpKclQ5TlQzSnBkalZqaC9uR2o0WmowUm1MOEZub0FKLzQ1?=
 =?utf-8?B?ZEZib2xIcFZkZnpkTHhncDZITG13REFGNGdwUWhPRE5aMUJxNFNBSVJBWVhF?=
 =?utf-8?B?b0J5dytFSmU3SHc2OWpjQ2NReURkTmljQUttQ1dTUCtkSk9aeXJ6SUhYT1Ix?=
 =?utf-8?B?RUl1TVRicjVsRFFQOG52K0lwV2hDTlg1VUs4eHJHT0R6ejN0WDdNN1lqMTVq?=
 =?utf-8?B?bTNXSWtKZkdXcDZaaStkWXhBUWVVU1RGdk5Db1pkUEtlMmxBMHg4aXM4djNl?=
 =?utf-8?B?eGQ1Yng5NjFaVDNDRCtQVFdYUUdYRWxMT0YzU2VFN0N5d1ZFU082TFhhdE5a?=
 =?utf-8?B?eFhZVUhTK1lLR04xdU00WEtKOHZxTzZIQkpFZlRSaFUzVGxYYTdScy8yZW5H?=
 =?utf-8?Q?5nkEuFwLr2ybEJ46SBGU19ENZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b778dd2-1bb5-4f2c-76c2-08dca6756dd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2024 15:30:46.3765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K3fzmdwXL/ts40WmimR/RLO0vxome44cAzLghdKrXa4phAaX3bQDF7+thHXzOvBQvzlyZYidZ60A4xLUK+3mU+Uhma+AaQbn4+/JwXA7SIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE5pcm1veSBEYXMgPG5pcm1veS5kYXNA
bGludXguaW50ZWwuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgSnVseSAxNywgMjAyNCA4OjIyIEFN
DQpUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBHdXB0YSwgc2F1cmFiaGcgPHNhdXJhYmhn
Lmd1cHRhQGludGVsLmNvbT47IGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZzsgY2hyaXMucC53aWxz
b25AbGludXguaW50ZWwuY29tOyBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNv
bT4NClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1OiBBbGxvdyBOVUxMIG1lbW9yeSByZWdp
b24NCj4gDQo+IA0KPiBPbiA3LzE3LzIwMjQgNToxMSBQTSwgQ2F2aXR0LCBKb25hdGhhbiB3cm90
ZToNCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IE5pcm1veSBEYXMg
PG5pcm1veS5kYXNAbGludXguaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAx
NywgMjAyNCA4OjA2IEFNDQo+ID4gVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0
dEBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEd1
cHRhLCBzYXVyYWJoZyA8c2F1cmFiaGcuZ3VwdGFAaW50ZWwuY29tPjsgZGFuLmNhcnBlbnRlckBs
aW5hcm8ub3JnOyBjaHJpcy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb207IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAbGludXguaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9p
OTE1OiBBbGxvdyBOVUxMIG1lbW9yeSByZWdpb24NCj4gPj4NCj4gPj4gT24gNy8xMi8yMDI0IDEx
OjQxIFBNLCBKb25hdGhhbiBDYXZpdHQgd3JvdGU6DQo+ID4+PiBQcmV2ZW50IGEgTlVMTCBwb2lu
dGVyIGFjY2VzcyBpbiBpbnRlbF9tZW1vcnlfcmVnaW9uc19od19wcm9iZS4NCj4gPj4+DQo+ID4+
PiBGaXhlczogMDVkYTdkOWY3MTdiICgiZHJtL2k5MTUvZ2VtOiBEb3duZ3JhZGUgc3RvbGVuIGxt
ZW0gc2V0dXAgd2FybmluZyIpDQo+ID4+PiBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFu
LmNhcnBlbnRlckBsaW5hcm8ub3JnPg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQ2F2
aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiA+Pj4gLS0tDQo+ID4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgfCA2ICsrKystLQ0KPiA+Pj4g
ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPj4+
DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3Jl
Z2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jDQo+ID4+
PiBpbmRleCAxNzJkZmE3YzM1ODhiLi5kNDBlZTFiNDIxMTBhIDEwMDY0NA0KPiA+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jDQo+ID4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMNCj4gPj4+IEBAIC0zNjgs
OCArMzY4LDEwIEBAIGludCBpbnRlbF9tZW1vcnlfcmVnaW9uc19od19wcm9iZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPj4+ICAgIAkJCWdvdG8gb3V0X2NsZWFudXA7DQo+ID4+
PiAgICAJCX0NCj4gPj4+ICAgIA0KPiA+Pj4gLQkJbWVtLT5pZCA9IGk7DQo+ID4+PiAtCQlpOTE1
LT5tbS5yZWdpb25zW2ldID0gbWVtOw0KPiA+PiBUaGVyZSBpcyBhIGNoZWNrIGZvciBtZW0ganVz
dCBiZWZvcmUgdGhhdC4gWW91IGNvdWxkIHVzZQ0KPiA+PiBJU19FUlJfT1JfTlVMTChtZW0pIGlu
c3RlYWQgb2YgSVNfRVJSKCkuDQo+ID4gSSB0aGluayB5b3UncmUgcmVmZXJyaW5nIHRvIHRoZSAi
Z290byBvdXRfY2xlYW51cCIgcGF0aD8NCj4gDQo+IFllcy4NCj4gDQo+ID4NCj4gPiBtZW0gYmVp
bmcgTlVMTCBpcyBhIHZhbGlkIHVzZSBjYXNlLCBzbyB3ZQ0KPiA+IHNob3VsZG4ndCB0YWtlIHRo
ZSBlcnJvciBwYXRoIHdoZW4gaXQncyBvYnNlcnZlZC4NCj4gTm90IGFuIGVycm9yIHBhdGggaWYg
eW91IHJldHVybiBleHBlY3RlZC9jb3JyZWN0IHZhbHVlLg0KDQppbnRlbF9tZW1vcnlfcmVnaW9u
c19kcml2ZXJfcmVsZWFzZSByZWxlYXNlcyBhbGwgcHJldmlvdXNseQ0KZ3JhYmJlZCBtZW1vcnkg
cmVnaW9ucyBpbiB0aGUgb3V0X2NsZWFudXAgcGF0aC4NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiAN
Cj4gWW91IGNvdWxkIGRvDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVn
aW9uLmMNCj4gaW5kZXggMTcyZGZhN2MzNTg4Li40MWVmN2ZkZmE2OWIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMNCj4gQEAgLTM2Miw5ICszNjIs
MTAgQEAgaW50IGludGVsX21lbW9yeV9yZWdpb25zX2h3X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQ0KPiANCj4gICAgICAgICAgICAgICAgICBpZiAoSVNfRVJSKG1lbSkpIHsN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIobWVtKTsNCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgZHJtX2VycigmaTkxNS0+ZHJtLA0KPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICJGYWlsZWQgdG8gc2V0dXAgcmVnaW9uKCVkKSB0eXBlPSVkXG4iLA0K
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciwgdHlwZSk7DQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGlmIChlcnIpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZHJtX2VycigmaTkxNS0+ZHJtLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIkZhaWxlZCB0byBzZXR1cCByZWdpb24oJWQpIHR5cGU9JWRcbiIsDQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIsIHR5cGUpOw0KPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgZ290byBvdXRfY2xlYW51cDsNCj4gICAgICAgICAgICAgICAgICB9
DQo+IA0KPiBQVFJfRVJSKE5VTEwpIHNob3VsZCBiZSAwIEkgdGhpbmsgYW5kIGNvdWxkIGV2ZW4g
YWRkIGEgaW5mbyBzYXlpbmcgc2tpcHBpbmcgc2V0dGluZyB1cCB0aGF0IHJlYXNvbi4NCj4gDQo+
IFJlZ2FyZHMsDQo+IE5pcm1veQ0KPiANCj4gPiAtSm9uYXRoYW4gQ2F2aXR0DQo+ID4NCj4gPj4N
Cj4gPj4gUmVnYXJkcywNCj4gPj4NCj4gPj4gTmlybW95DQo+ID4+DQo+ID4+PiArCQlpZiAobWVt
KSB7IC8qIFNraXAgb24gbm9uLWZhdGFsIGVycm9ycyAqLw0KPiA+Pj4gKwkJCW1lbS0+aWQgPSBp
Ow0KPiA+Pj4gKwkJCWk5MTUtPm1tLnJlZ2lvbnNbaV0gPSBtZW07DQo+ID4+PiArCQl9DQo+ID4+
PiAgICAJfQ0KPiA+Pj4gICAgDQo+ID4+PiAgICAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUo
aTkxNS0+bW0ucmVnaW9ucyk7IGkrKykgew0KPiANCg==
