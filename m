Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C599FCB905A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8ED910E009;
	Fri, 12 Dec 2025 14:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WpaTk4fV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A42310E009;
 Fri, 12 Dec 2025 14:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765551581; x=1797087581;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D5r6013SjR87vzK2PI0Y8X+0P2zzzT1RIAhHLbotvY4=;
 b=WpaTk4fV7FREnaSKMvzLZ3NCjSYxi0qErBn3T6pD6i4tTPMcsAuxQoUa
 gw2dHLn0QXPky5YoE2bgAob/aODAeUFIyP3TpJTuJ5eZ9CDhpMYcr/xX8
 UCvJC9oMQr6WLT7qHaNMCxkan6Ev6ky9Hv5FYhVRfGFGv58gZJ6JkAa7g
 FgkkVU8fVVM97EimTetjpwaZS716gOl9tPTfbI5aTrQQpyZHXmuwqKYlP
 GGPCneszEKeX+vKr8LBRqi9tVTL4gT61fY4Z6tXNoZENH/6GpbEn3oPel
 /5XuBnWq3M/3ushLsC4BI5v7w2iccyGHtqHT4VvdQcclHiMpcdkvyWgFP g==;
X-CSE-ConnectionGUID: jA6yqUbDRs20DKnql46O1w==
X-CSE-MsgGUID: WfO9kqSfQCqrSE+ykmyIPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67430023"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67430023"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:59:35 -0800
X-CSE-ConnectionGUID: xd1dTgTbRgeCaAQbPkLI5w==
X-CSE-MsgGUID: nHWAmahtQLmMw/6i/RP4eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197378809"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:59:34 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:59:33 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 06:59:33 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:59:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SeNOC6MxDUiOag2VBN45DBRQVxpMUC1OcBTDUHLlJZ3ey2o2aoFR8SdTpkUOxcNujG0HBKuU0HKO29in3rxl5SMFwCVPY4nism/BYBR2kJJ3RfvRhhE5m0iQnFIUI7lQShx+za88V00ck7IPJbWp1+u0MdHUkWtL93uhybtpxvuEsBYWbG6/irZb6Bd2KIUg8yM1NPsFgE6Ezm1wQt7Zq0C0ApYeFmrilvGUjea0MC16g+bRiMNXmqWRguFP+4q6ngcC/3AU0hCuTQQe0CuH+9JoeiRVxKXfWNNKwKRnxPuilclGpQg3U8jlnbWrjQMWCqRfZFN4wA4h+8ZLZ/hBIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5r6013SjR87vzK2PI0Y8X+0P2zzzT1RIAhHLbotvY4=;
 b=xJ/j7GHj/wcdh0Yp49HsXf7TOpKE6AH9JG3LG8M0gtOX8HMiK65hOheh2qZUl0FMKvG05oIXbGP0pupxHxr2VDIIYtPj86Bnz/I/0U41x7WK4J7XrsA9hvDLRLx78PGsh0JUWB3xzTOwbmNdmeqjAPXDyiOABqSM8TMBQ6op3UusFFG8yAKrYoULs0fq99lUF9W9nGqLn7/EIKFxZWzdf4al0V/VgPG6Sok6JWYnv1/SH5Xkb2e9ZPhnBC+M+dX1qZNaAmKEVnqcWWLfJvZrMJutQrYTJDTuYnZq3wcRrR45g3P5ypR40srJFg07GEG/QzYkoGkx7I7JcY96d5db2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 14:59:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 14:59:31 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 31/50] drm/i915/dp: Simplify computing DSC BPPs for DP-SST
Thread-Topic: [PATCH 31/50] drm/i915/dp: Simplify computing DSC BPPs for DP-SST
Thread-Index: AQHcX8kCWeQaVvn5BU2aBhDWnHF98rUeMEKA
Date: Fri, 12 Dec 2025 14:59:31 +0000
Message-ID: <3637b184eaaa74fff1eea2f19ddd91565c63c154.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-32-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-32-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB4845:EE_
x-ms-office365-filtering-correlation-id: 078dd558-645a-4003-65c5-08de398f0e3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dkFnS05rQ2YvK3dCUENEMnJNaER1TFNaWEZtY1BRYmo1NzN4bUExa2tDRjVz?=
 =?utf-8?B?K2N4TUZnWmVtMEd3ZkNoVHlIOXFqS0NQK3hzdUd0M2cvMGF2NGFCelJzblow?=
 =?utf-8?B?YU1WcDVYWThKQ1hFY3pzblhVdmp1cmFMUVFSOFliUHZoYlhzdGZjRzZwMFV1?=
 =?utf-8?B?MHNlK1RuTGtvdWhxazQ2aVZ6eGVIWGEwY2NWVUEyMEtLekZMNm0yN3ZqNXlG?=
 =?utf-8?B?czkwOVgyRWFNNThXS1kvZzZ6QkFDbjFFeVM5ekV4b3U1WFF5eDhldUx4azIx?=
 =?utf-8?B?aUdlV2NxdGtZR1dJRzVPR0YzL1VLY3l1OEdRT21CejVCdVBkSGNqN2NMVEJK?=
 =?utf-8?B?RUk1eEppTHl5ZTZadXhjQ2tXd1lWaEtDRUVzL2l2T0QyY3NTdm8wQnZwenhE?=
 =?utf-8?B?VzZSQ0w5bGsvTjNlRlJTR3F6K2tXQmxBcUdmQ2UrNFE2YnZkL0FTcHhPVkZu?=
 =?utf-8?B?K3loMmJQOGpYQUZueE1TRDVXMzVrZEEwZ1dMNFRSZndIQ0tXdGYyd1E4ZDY1?=
 =?utf-8?B?aGJ3aFUzcmtaLzBUYitOdlcvRmprVjIxTi82Tk1RQTRLdkI1dWp6eitXU2Zl?=
 =?utf-8?B?Z3djbVZ3b0txVU1TZURjSDVCMVVZWWVtOTZSeHczRk40VW9BbFR2a0JFRWhU?=
 =?utf-8?B?SHhzMkRFZEpwZmE2QWZPemUvUTl1TTdjQWxmTzRXZnVjRkd0N3B5b20xQmlC?=
 =?utf-8?B?WTJyVUhabFRxUWJaS2d0a0ZWWHI4THZVZjFtYWRrRmE4dzZHdDZMRm1veXN0?=
 =?utf-8?B?NDE1QTFLc1ZmWjBLb0oyR0ZtYXV2bWZkbTNMU0VhSHdXR01QY3JRNzlzNlpE?=
 =?utf-8?B?RGd3ZUREMmoyZGFWOWVzbFkrbjNSRDYxcXp5a2NYbllleWZuaDRQdGZqOUl2?=
 =?utf-8?B?cVRwaUpSVGRNMU9IMmY5cjc0U0lKSlJPMjJsTi8yTUovQlFJSmU3UUE2SjhT?=
 =?utf-8?B?cDlCV1VHZkhqZ1BDMWdUbmk3dDh3ZTV4a1pzd01YTlQ4MFRrZHZLTmc0K001?=
 =?utf-8?B?RFBLUlA4ZkVGWVI1QnhqQUw2SmVZMkZEZ1dlZjV0aWZiaTZhZ3k3OUZnd21B?=
 =?utf-8?B?NHpXZkFXUkNYWC9NZmpDQ0dBelQwZURudG1oR3E2SEtwbTdOTG5uUlVtaHlF?=
 =?utf-8?B?TTRqSkhqWUh3VkdCaUN0Ty9OWks3ZjkvNWdVUjYzMFcrMDZBeDBsY3V4akNL?=
 =?utf-8?B?MG5uOGYxSERoalJ4dlRkZzU3VXNaL3JXanFGRHhlY0dGK2hZbjIvN2p2blBY?=
 =?utf-8?B?d0hNVjc4QS9lR1FWTlZSWDZ3Vm8xb21heGR3bndyMGNZUEJOWGxWZXM3dm1t?=
 =?utf-8?B?MVBmNG82cjRHY1F2QnpvWW1xTDRwc0dOYWRWeXBDMmlCRVVFeGVhdU1IWC9I?=
 =?utf-8?B?Qk5sWE5ScGZZcGdxV1paR2poYUhlSVBHWUxaRzU4bWRiYkxUZlE1Zk51R1px?=
 =?utf-8?B?dHVPWkxHVkl3a2hHMDQ0RUpOZjY4WEpDWXNJUVFRVWhlTlQvTmxuOStzNmw3?=
 =?utf-8?B?N1duVk1TVEt6dDllK3ZaN2FvZXpsSFM3Q1EzQTZvSDJZVW10bGh0RXU2MWdK?=
 =?utf-8?B?azZ1K2x5ZEg3STdTQ0dnVlFyNU1DcUZDZyttVVJOTDFZdFA4R0d1YW5wYmNy?=
 =?utf-8?B?OGpFa1ViVE1FTElTSFFTMnlvL3dMOFNGNm4yVWZvVWhSaEx6L1Fmd01mOWZH?=
 =?utf-8?B?RUNHOU1va1JETTNiVllxM2hLZTZQWDRCd3pqNndjYnBwUlE0UXpadG9aZXBH?=
 =?utf-8?B?bmFYVjZXdGlyd2lGZmNaYWE3QURESWMwN3ZsaFJnSDRneC9ZUXdDV0tyVzVH?=
 =?utf-8?B?Rks4ektmQXJmS2NrRGU4bldGZzNXOFFyQWdaa3UzVUd0SWZkcWlSZXpidVdS?=
 =?utf-8?B?elNKWVo4WG9ZcHdWcUh1d2NPSXVjN203T0ZseHZhSkxiSVR4ZjhEWXJCRE9X?=
 =?utf-8?B?MzNkT0U4TG9EdmhFQ2NLVWUvSFR3Z0FOa0RpWEswT3Y4MW5mU0ozUk1lcDRG?=
 =?utf-8?B?OE1sdEsvY1JZcmloS3luMTBIL205R0VDU2FBSEtHdElDbUNwcGVrWm9DYVdP?=
 =?utf-8?Q?3ifuY6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1pCN2pWeWtxNndNV0dGKzRFbFdZR1hWWlNBZStKZGtLUlZ4bnh4TGVGM1M5?=
 =?utf-8?B?ZXU5VS96cXdySFlxOTVQak5ROHBMZTJEck9sK00rcnRxTUltL0hLd0RVR21C?=
 =?utf-8?B?K1pXT0tsbEdmM0cxbXhsN21DSmpFcjFSS3lWbEN0akZZL3NZWE9BVlFDelVw?=
 =?utf-8?B?K3NRd1B6ekR0N3lrK1lMeTdmSHRDWFdJU2Z3VEJhYm9Tdm83WllZTS9iMGds?=
 =?utf-8?B?dFRBVExqYUUzSk53aVRyalZhbjRoQlNzcnc0SmVEbXA4Q0dYMTNZVlYrNUNR?=
 =?utf-8?B?SHh1Sm9kQWh6NnJBUCtGWHd6MGhoU1Eyek9ON3U5OGJ5SmExeTFYR0dMYklL?=
 =?utf-8?B?ellEZlRJUUt1L1lycFgzUHhMR0xsdEhkek85d29DYnJZeW5udEVZTm1ZanJ0?=
 =?utf-8?B?YmE0dlVkZHpBSzFVbHhrMGk5S2ZZNkFJdG9vSWYvd3pRVmRzY0gwNW9BSlFi?=
 =?utf-8?B?ZTlZY1k4UFdPbHkrVzdJY2xMaUVTM0NCOVVkSVJYZk82dXNWbzh4aVZ4S2xr?=
 =?utf-8?B?eE1XNWFpSzdmVThmRDNiOE9XdmJMaVB4UUFRbWJSbitERktoVEZNdWtMZmVJ?=
 =?utf-8?B?b2VCRW1GbzcrQ3hYWFpBcE12UnNtR3dqNWM1eFVYY2JXbk95aWFpVDM1RURL?=
 =?utf-8?B?N1BxMjZLcTlXaFFNdktROE1kcVNsdndGV2tVQmsvS1FIeHd0ZFovcVhIWHdm?=
 =?utf-8?B?ZEZCSW1lbUh5WDdxL3hpeENaQlNWK0xSbm1RQ3JGUWk4ME9BdlFmbGJEMTEv?=
 =?utf-8?B?M1ZqRzJBeVBMdmhPR1F3eUlINU5MZWZudVp0dzh3eDNJbVpuRWJYM2dVaVNm?=
 =?utf-8?B?VEZuUzBvejlMbTJ5R3ptcUdJMkVId2dUczhXYU1rcXJFOFdvVEM3eEgzTWhu?=
 =?utf-8?B?K1prekxLcXVnRmg2RkJ5eFI1ZmFiSHM3eVVPcmgxUHVLeTVYaVhMWmlXUng1?=
 =?utf-8?B?S0NhSFB1ZkJNLy9oVVJwdzF6RkZUWG0wT0Q5QmxmTjlaMzVwRWxqdDVRQWUw?=
 =?utf-8?B?N2s4SU40VDhSSjRlOHFOUlRtWjEzeGFOV0EwUStGY2V4NXJ3V01IMEpTdlJH?=
 =?utf-8?B?VmtHUlNOUDFsTVpDQzVITjRFcEJRRlU5ajFMT0dWamc2OGdXblE3ejRiNHRZ?=
 =?utf-8?B?dW4xNGtMUmdGZGlmbVNzcy8xZTVtaUV3bE82VGFPS0FaTFg0SW1lRlhoQVlB?=
 =?utf-8?B?RmVHbVRPcDM1Zy9iNlVqMEZuV0h4MmZzNW81cFV6aXhmTHFHaU0wRUZteHNs?=
 =?utf-8?B?eG4ySDNNeE00SjE1YXpqSWlNOVhzd1F0ZWZOZmsxeG9zU29nWDFmZEpSR0lT?=
 =?utf-8?B?eHB5aWZvenF1SytrRUxCU3czZXdDRDZqb2NHOG1zZU9mbHpaWENqQ0o0R28z?=
 =?utf-8?B?cmdKMUF3S0ZTMDFZeTBNQkFjSjl5a1ZyTHU1WWdNb0FaR0lQakl2ZlBoSGlV?=
 =?utf-8?B?dG5FVm5XYlF1amRCMGdiQmxmQ0RuRVUySzV0WFFxZUZFcWtjWEhES01SYS9B?=
 =?utf-8?B?OHU0ZkFaWWp6cnI3RTd3bEU2Q1crMmp5RnZpbzlKU3RZYzkyQ3JvYXMvTmxn?=
 =?utf-8?B?THllSWhaOFNTK2xMOHg5N2Ntb0tvMDN2Ump3S1FzYWNLcWs4SjhOZjJhOWNJ?=
 =?utf-8?B?RUQwY2t1TmIwRDFXdWNQODBqUmN5V1NBSGMyLzNUWTlBVzd6dUZtSnBham1O?=
 =?utf-8?B?NDZGZzgzVHFmUEx1VlF3aXpBVlBJd1NNTXd3cWxsQk9pakxpMi9oOXQ1UFdu?=
 =?utf-8?B?YWw2SmNranpPSVBtc0xuU25EbmpqOVJ1SmhZNGRQeC96R0xMM0t1K2xHZDFh?=
 =?utf-8?B?Y0RNV29pcFU1VzhyUEViaVBKRjFWRUlNdDJsZCtOSHRYOTFLSkpKZFA3by9B?=
 =?utf-8?B?R3k5YWVnazRwUHozbHQyWGRPNnRBa0xaSkd0Y0dTQnVJWDFQbis1MnlNTXcz?=
 =?utf-8?B?UUxvWm8vSlQrWU1TTFFaemZmejRCeWZ1ZFROR2dFdHcreTlwN2xuY2NidkI2?=
 =?utf-8?B?Y3FXYjNtMVllM0JTU3RqLy9TUVRuaTJ2dk5YRzlHbmFjL3RkV2FvMEpqVTVX?=
 =?utf-8?B?M1ZNZk5rd1VrVmxuSVE1WUQxUytqckpKWEZ6VVNRRDJsMWxtZ3JEelUxYjhZ?=
 =?utf-8?B?cWZMOHkzZ3d3U21TVXpvbkdaMTRBTWNVeWU5K0dxTGhZZFpMU1Ivc2VldzdK?=
 =?utf-8?Q?jXhgTaQpTep6aH0VF6eH5og=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <760F25EEDC8D4A469D89F509A9AF5E21@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 078dd558-645a-4003-65c5-08de398f0e3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 14:59:31.4673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /3v1NpCwH6h5ZIh/ZfRApCKBohjFPR2pvf2+VQbin2QBM6dA4ilTSLYQFV4r5OgfPo9147RNqkTZRiyak2S4RAlVFSLT6TKTXjzPJ205APQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBtYXhpbXVtIHBpcGUgQlBQIHZhbHVlICh1c2VkIGFzIHRoZSBEU0MgaW5wdXQgQlBQKSBoYXMg
YmVlbg0KPiBhbGlnbmVkDQo+IGFscmVhZHkgdG8gdGhlIGNvcnJlc3BvbmRpbmcgc291cmNlL3Np
bmsgaW5wdXQgQlBQIGNhcGFiaWxpdGllcyBpbg0KPiBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19s
aW1pdHMoKS4gU28gaXQgaXNuJ3QgbmVlZGVkIHRvIHBlcmZvcm0gdGhlDQo+IHNhbWUNCj4gYWxp
Z25tZW50IGFnYWluIGluIGludGVsX2RwX2RzY19jb21wdXRlX3BpcGVfYnBwKCkgY2FsbGVkIGxh
dGVyLCB0aGlzDQo+IGZ1bmN0aW9uIGNhbiBzaW1wbHkgdXNlIHRoZSBhbHJlYWR5IGFsaWduZWQg
bWF4aW11bSBwaXBlIEJQUCB2YWx1ZSwNCj4gZG8NCj4gdGhhdC4NCj4gDQo+IEFsc28sIHRoZXJl
IGlzIG5vIHBvaW50IGluIHRyeWluZyBwaXBlIEJQUCB2YWx1ZXMgbG93ZXIgdGhhbiB0aGUNCj4g
bWF4aW11bTogdGhpcyB3b3VsZCBvbmx5IG1ha2UgZHNjX2NvbXB1dGVfY29tcHJlc3NlZF9icHAo
KSBzdGFydCB3aXRoDQo+IGENCj4gbG93ZXIgX2NvbXByZXNzZWRfIEJQUCB2YWx1ZSwgYnV0IHRo
aXMgbG93ZXIgY29tcHJlc3NlZCBCUFAgdmFsdWUgaGFzDQo+IGJlZW4gdHJpZWQgYWxyZWFkeSB3
aGVuIGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKCkgd2FzIGNhbGxlZCB3aXRoDQo+IHRoZQ0K
PiBoaWdoZXIgcGlwZSBCUFAgdmFsdWUgKGkuZS4gdGhlIGZpcnN0IGRzY19jb21wdXRlX2NvbXBy
ZXNzZWRfYnBwKCkNCj4gY2FsbA0KPiB0cmllcyBhbHJlYWR5IGFsbCB0aGUgcG9zc2libGUgY29t
cHJlc3NlZCBCUFAgdmFsdWVzIHdoaWNoIGFyZSBhbGwNCj4gYmVsb3cNCj4gdGhlIHBpcGUgQlBQ
IHZhbHVlIHBhc3NlZCB0byBpdCkuIFNpbXBsaWZ5IHRoZSBmdW5jdGlvbiBhY2NvcmRpbmdseQ0K
PiB0cnlpbmcgb25seSB0aGUgbWF4aW11bSBwaXBlIEJQUCB2YWx1ZS4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMjkgKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyMSBkZWxl
dGlvbnMoLSkNCj4gDQoNCkkgZ3Vlc3MsIHR5cGljYWxseSB0aGlzIGlzIGEgdHdvIHBhdGNoIHNv
bHV0aW9uLiBCdXQgY29uc2lkZXJpbmcgdGhlDQpjb2RlIGNoYW5nZXMgaXQgbWFrZSBzZW5zZSB0
byBoYXZlIGl0IGFzIG9uZSBwYXRjaC4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGVlMzM3NTlhMmY1ZDcuLjkwMmYzYTA1
NGE5NzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
QEAgLTIyOTQsMTEgKzIyOTQsOCBAQCBzdGF0aWMgaW50DQo+IGludGVsX2RwX2RzY19jb21wdXRl
X3BpcGVfYnBwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCQkgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUsDQo+IMKgCQkJCQkgY29uc3Qgc3RydWN0
DQo+IGxpbmtfY29uZmlnX2xpbWl0cyAqbGltaXRzKQ0KPiDCoHsNCj4gLQljb25zdCBzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQ0KPiAtCQl0b19pbnRlbF9jb25uZWN0b3IoY29u
bl9zdGF0ZS0+Y29ubmVjdG9yKTsNCj4gLQl1OCBkc2NfYnBjWzNdID0ge307DQo+IMKgCWludCBm
b3JjZWRfYnBwLCBwaXBlX2JwcDsNCj4gLQlpbnQgbnVtX2JwYywgaSwgcmV0Ow0KPiArCWludCBy
ZXQ7DQo+IMKgDQo+IMKgCWZvcmNlZF9icHAgPSBpbnRlbF9kcF9mb3JjZV9kc2NfcGlwZV9icHAo
aW50ZWxfZHAsIGxpbWl0cyk7DQo+IMKgDQo+IEBAIC0yMzExLDI1ICsyMzA4LDE1IEBAIHN0YXRp
YyBpbnQNCj4gaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGlwZV9icHAoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gwqAJCX0NCj4gwqAJfQ0KPiDCoA0KPiAtCS8qDQo+IC0JICogR2V0IHRoZSBt
YXhpbXVtIERTQyBicGMgdGhhdCB3aWxsIGJlIHN1cHBvcnRlZCBieSBhbnkNCj4gdmFsaWQNCj4g
LQkgKiBsaW5rIGNvbmZpZ3VyYXRpb24gYW5kIGNvbXByZXNzZWQgYnBwLg0KPiAtCSAqLw0KPiAt
CW51bV9icGMgPSBkcm1fZHBfZHNjX3Npbmtfc3VwcG9ydGVkX2lucHV0X2JwY3MoY29ubmVjdG9y
LQ0KPiA+ZHAuZHNjX2RwY2QsIGRzY19icGMpOw0KPiAtCWZvciAoaSA9IDA7IGkgPCBudW1fYnBj
OyBpKyspIHsNCj4gLQkJcGlwZV9icHAgPSBkc2NfYnBjW2ldICogMzsNCj4gLQkJaWYgKHBpcGVf
YnBwIDwgbGltaXRzLT5waXBlLm1pbl9icHAgfHwgcGlwZV9icHAgPg0KPiBsaW1pdHMtPnBpcGUu
bWF4X2JwcCkNCj4gLQkJCWNvbnRpbnVlOw0KPiArCXBpcGVfYnBwID0gbGltaXRzLT5waXBlLm1h
eF9icHA7DQo+ICsJcmV0ID0gZHNjX2NvbXB1dGVfY29tcHJlc3NlZF9icHAoaW50ZWxfZHAsIHBp
cGVfY29uZmlnLA0KPiBjb25uX3N0YXRlLA0KPiArCQkJCQkgbGltaXRzLCBwaXBlX2JwcCk7DQo+
ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+IMKgDQo+IC0JCXJldCA9IGRzY19j
b21wdXRlX2NvbXByZXNzZWRfYnBwKGludGVsX2RwLA0KPiBwaXBlX2NvbmZpZywgY29ubl9zdGF0
ZSwNCj4gLQkJCQkJCSBsaW1pdHMsIHBpcGVfYnBwKTsNCj4gLQkJaWYgKHJldCA9PSAwKSB7DQo+
IC0JCQlwaXBlX2NvbmZpZy0+cGlwZV9icHAgPSBwaXBlX2JwcDsNCj4gLQkJCXJldHVybiAwOw0K
PiAtCQl9DQo+IC0JfQ0KPiArCXBpcGVfY29uZmlnLT5waXBlX2JwcCA9IHBpcGVfYnBwOw0KPiDC
oA0KPiAtCXJldHVybiAtRUlOVkFMOw0KPiArCXJldHVybiAwOw0KPiDCoH0NCj4gwqANCj4gwqBz
dGF0aWMgaW50IGludGVsX2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLA0KDQo=
