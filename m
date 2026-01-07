Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FC2CFD901
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 13:10:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850C789F35;
	Wed,  7 Jan 2026 12:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzMzLp3u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B53589F35;
 Wed,  7 Jan 2026 12:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767787816; x=1799323816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6e9MDoJxc6ussyqbh1LYomL0M7SeIuvQ2UPMnW5lzEk=;
 b=FzMzLp3uFYc2DpnoXU1VqI7TxmSJPcRLXloPqXO6FSVbkkE8nfplZBs3
 MQGBJ7bfJeFsBJ/aqqjypoS9JPeE2M10jIdDOjCSwPudcOIvh9F6UhZl4
 7iv+lwb8jRHPw/7VjbJrXlqt1bXq+E8FpNgphMVVAJTRtJ2418wHlLBqr
 2IK4FTWGxrgmGX5JBaIuYJd4Ekn620FjzbCLh3Gs+Dy3xpeE4nzzVlGwT
 oT9s4M0pGh4gVv/HBGdOFt58AsXhjGFzplvYOReTRkMz7VyBejBuY+Wjk
 D4oo3FJrOsoG4XcFPimWSMUqgHZhAuSbNaKFZ1lJOrBqQQ7Z0PHDJ/MY1 A==;
X-CSE-ConnectionGUID: Cs7G84X1QKikxa3SKiXqXg==
X-CSE-MsgGUID: SDzlwpUwSFakneyNd6AAIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="86741688"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="86741688"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:10:16 -0800
X-CSE-ConnectionGUID: vWGE/ZSXTkyFEU0WsbEwnw==
X-CSE-MsgGUID: 8z+PhVxYQoSkNXbr4OKBrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202926718"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:10:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:10:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 04:10:15 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:10:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YCFi/MdbZz9FhvV/niHU5S+Co2RtewuRDLrQEgHaSTp3PxnA5I+ieOCpgH5xBfJ/DWXn85eM3wuT49Kr4H1CF/O3nRfffwvhc608gCoVxuQHTiv425ePZ+YpJ52U2FYEntaU6QwNh3JlU3WRJ1tzdTuOihTJLQbdgma30vvR/5HeR3uMJsdtRY3wsZbEHDRTPpC1avK0Mn/BPXcHOezmjTVfOv7F1f6HqVzuoA2QwyfEOSi+s3WdpRg4WYHygf+k8k8pvDUY5cZ/eMknA9FjL3rIJSWiobz8lp6aJyxmfxtwJu2uZPhpwgsM8wSvHlOsCMYO543aaze+W0SkwIs+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6e9MDoJxc6ussyqbh1LYomL0M7SeIuvQ2UPMnW5lzEk=;
 b=w9ewsG6tGqmwljeGheHZXjYvOvS2AMlMzTSunNA+0sqc5varw0nQMLE238DFBXPucVwFwWSYhpNcbuz64sp98dkJGdxCFtRyIcXt1WJb+SDnM5z1g20GDRRifdFvfSMzGTdID7Q+IPolwhd0ZJbLlPrSeQcJel/y0VXU/AYRwWXJmi31LUZrfGtMtQzmp/nIg/IVuR0pGjaqtEJ1InZktCgz/4LyntyaVNCt+1AhQqCWzhxJzCHPelpi5tUS5J52mXTmO+hnkyPwnfYhj7RG27asq+kMTHGGAi4NqgunHtSPQr5sIEt6B6yfUO1jZcp7EOM0VLJGLn2s4Ja4rlGRYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 12:10:12 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 12:10:12 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update the wa_22014263786
Thread-Topic: [PATCH v2] drm/i915/display: update the wa_22014263786
Thread-Index: AQHcfjDzSbKiIzBcNkWRbYQ2ruG+ELVD2YyAgALHNQA=
Date: Wed, 7 Jan 2026 12:10:12 +0000
Message-ID: <88c3310e63e1a0dfbb8e683e3a5481fb156e815f.camel@intel.com>
References: <20260105104858.283686-1-vinod.govindapillai@intel.com>
 <176763507911.9480.16301562560632046947@intel.com>
In-Reply-To: <176763507911.9480.16301562560632046947@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8279:EE_
x-ms-office365-filtering-correlation-id: b7dc5247-ab58-4c94-022e-08de4de5b5a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?M1N0bFJ1RlI4ZWlVbzlmcGRpTkx1K0pnQ0tSYTFUWHE5c25BQnJhZUtkVWh2?=
 =?utf-8?B?OGc2TU1LSEsvbklvNGMrNHkxY0V2ZDRSOXpMa1FYT3dQZlU3di9HZzkxVGUw?=
 =?utf-8?B?T1I0NjB2RzlvT1VkNlZ1a211S0JDUEsyY1ZTVktGdklYS1VMMzF6bmpRVkpn?=
 =?utf-8?B?Z1V1UTIxemJ3TXdqMEhDd2hkY2dYNUJ5VUJhaEpkUzVFbjFWeXp4R2MxMEVG?=
 =?utf-8?B?Z1EvSTA5QVY5TzlNNTJnWmVZZ29wMFJKeWN3b3NMVmVjSmMzd1FiQUxDalVH?=
 =?utf-8?B?N2JvNXNQRkF0NVVyVk9sUmlCTk54eURQMTNvcWUrTjhWMGd0VTB0VWhzVkhz?=
 =?utf-8?B?cTEvNFlTR25XdXFwZFBqUTg5T01pR243bExwNWwwL0pHL1dYMjdRZGFWN3RS?=
 =?utf-8?B?Wk4rYTBaMHNDMlBxRE9HZmdPVENCV2dZUDZ0SzAyOG9veDFlc0czL21TNnpK?=
 =?utf-8?B?aUdBTjBqb2VGM0t0SHROWmZ5NnVCQ1hBYnBPNmVPOFEyUDZ2TmV6Uk9aeDl5?=
 =?utf-8?B?amJTME1ZQ2pjUWRZc3d1bWVWV1lSODlKdUY4Ukc1SDJMMm4yZlhqRTlLU0JU?=
 =?utf-8?B?MGxSMHlmQk82c09vdDNGZ01HMTY1TjQvQmZsNGV6M2kxMVhIMU90WjJkU0NJ?=
 =?utf-8?B?VFRqSzdPMDVyQkJIUUFzQ21xbitoMm0vRVZzcVpCUkluYzUwUGhFR0w0ME5F?=
 =?utf-8?B?WXBtYjNiUFc4MjYvWm5OcllGb3R3NGRMWUVhOW9vY0MyaUhvMkUrWnZUSVZX?=
 =?utf-8?B?YUN1cXJZdHNOdEdoNTg0Y1FsVXJXT0JtTS9xOTdpRzd6UGpzNkdkbHdiMUFq?=
 =?utf-8?B?WjhMcllMVlJLbTJRYzE0WFJEMmV1dDlPUmZpbHZKUUFBNU1lQ25nZHpjc1g1?=
 =?utf-8?B?dWo0REhrYWhCRFhKT1VUSkNPM0lyQlpJZU5TL09hMlN2RE8zeXZEMGNjSWJN?=
 =?utf-8?B?aTB4R0RkN3R3b1R4WVJYNnJ5YU0zbXZhM043VDZyVTJrbU1Sc2syTkNlRnp4?=
 =?utf-8?B?TXJXbUxxdDlnRUNnWmQ3QVFGeGwwaGRyc2o0VFEwZkxJdXNmU3o1NFpwWll6?=
 =?utf-8?B?NlA1Yk81dzRqQktHYW5qeUJwWTdPMFJjU29ZUm5aSGozNGM3cE5tc3F2ejNB?=
 =?utf-8?B?Ym9uNFVjemRVWTJ5THU1STNJc1lGWDdIcjN1NGZCMG1RZ2VXVnpZT0kyUnpa?=
 =?utf-8?B?MEpwRjUzYXdGNFdLNWdpQnUwREQzc1UyN21kMEtSTmthZ2hIajYzTFAyYnRs?=
 =?utf-8?B?MzB0eXBVNXRUZ0x0Z0prMmR0OE9mbjRLM3FMWkM5NmdFTmZwOHRLbndqMFgx?=
 =?utf-8?B?MDVxOHIvMXR2dVdpbmdFWVY4UlhiYWhidXlXVVl6cWlKQnJSaWtRb2xqRUhL?=
 =?utf-8?B?M1EydjZaTER1cFQxNjYwa3hvZklLNzhMVFcvY3RJYmo4dVlFbk00c1hrc01B?=
 =?utf-8?B?dmdGR1BtMXU0cldoZ1FiaVBZWmJqTTdDM1lmMmRFZnRKZXpESzQzR0ZEdDlB?=
 =?utf-8?B?Q0tBeDF5dHVWWEtHUFprMGpDWlk1UUx6dEY1cldPQU9US2R5QkR4REJJVjhF?=
 =?utf-8?B?UnpjVjRCcHFEWFdPK3VXN09Qb2JzQkpKSmgrVysyMmxWdjY0QzhQNndERzYr?=
 =?utf-8?B?S0pPOXJBTW5wa216RExjdTh5ZC9lM2dxZERCL3VRdThnMm9vbWI0dGFld3E5?=
 =?utf-8?B?K3lUWEd2VE9mekNWYU9KNkJ4S2Y2WE1RYWlCMjRaNW9BQi9qTkcrZ2VYWkdT?=
 =?utf-8?B?MVdVVEFYY1JJS2t2U1kydzc4bThma3BoaXB1Q3IzL0dHR0hidU1YOUkzYmZH?=
 =?utf-8?B?NlZvWFlzYTVReG5qYlpkeHV0WkVpSVVsTzJXd3c3K3RpUVVHcjdHMGpZamN4?=
 =?utf-8?B?Y1RpR3NOeW03UkU0YlpzbTFJaFFZc2ZwUzZLbDMvQmtjSERSTEtQOXhNWUlo?=
 =?utf-8?B?QkZSNis2cjU3TEZQSjc3VDNob1hWVFoxQ254alJOVk45TXZzbERLTEIxUWM4?=
 =?utf-8?B?Q040R1VNNi9hNElhc2R4LzFhTkFON3Y4YVFTbnhNMHpuMkhGV3phVjFYODBX?=
 =?utf-8?Q?HPm0g8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnJiQjhrRFF0YXJpMFdSa1BVQ203VCtIS2E0Nnd6MVdWbnppOVhKaUk5UklJ?=
 =?utf-8?B?SGszQ0Z0U1BQUDFiamRldkRZTHYrRnMvN2M2NndobnRNT3ZoaTBBRTNkTXl6?=
 =?utf-8?B?MmV2d2FRYnRlK2F5Y2pPTVNJZStUL29uRjdwTWVNaU9IbUtGeVlHcXNxMUh1?=
 =?utf-8?B?MDZyWEVGS1ovaGcvSS9FVlp4eXVybDNvUEVwUXBNUEovc3BSSXJUeWQxYklP?=
 =?utf-8?B?ckgwdncwOHJ3TVVKbXdGNzhZRXV4cGloazJvUkRwYzZ2YWFTV3VkSEVTL3Nr?=
 =?utf-8?B?NnZkRUN5WDRxbVpQTmIyNlRqRmZmTzBDVGRRcjZBZnl6SjFTMVpqSDRoOHpY?=
 =?utf-8?B?dTlpQTMwOUEzUlloWjNhVGoxNW5TOWJpZllzenFqSVVGb2wrRGl2eUNnVFdI?=
 =?utf-8?B?R003TnZadmt5bWYvcDUvVzRTdFlPTVlkYlFGYVRNUDhKY25xSFc3RWZQcEQ4?=
 =?utf-8?B?Q2ZheU5sa005ZTJ3dE1JeVN2OVZqVU1HSXpNWXhSczFwUTdnQmVKdGtmeVN3?=
 =?utf-8?B?YkRRWkhlZTV4Z1F4WlhsV202czlVNGJod2R6SXR5RVArbTNvRWh5MlU1dHlE?=
 =?utf-8?B?eUR4Q1hqMzh4ZGszKzl3ZHA1QjdSdE1seXphWXJmZDRaYlhLZnJiQ0thMUFN?=
 =?utf-8?B?QnVWKzFFK0FqQUx1ODBYeXIwSXltbDAxZkc5eDhiSFczWDBvNnY2ODhsUkxC?=
 =?utf-8?B?Vk9Uc01tSGlPbmNjR0F2TFo3eFM1VldNOGgzME9RN3hvblllQXpnZmVid2sv?=
 =?utf-8?B?RngrKyt0K2FFMHVsbk10cXM2QStUbXZQcjFOeUJKUnJvUkJRSE51dVVMck9R?=
 =?utf-8?B?UEJwR1V5bWZZM0hVOC90V2xSQXJScXpVQ3JwRFNCS21CcFM4ejVzbUVZV0Zs?=
 =?utf-8?B?TVhBMVRBWjlyUTBBeTg4aVFnTW4xYTVDMERpV2hnRHJYTEpPRHJtMExmNlNM?=
 =?utf-8?B?UUhkMUhsSUlLVWlVQkF1eTlwbFhpTlRwazhac2NacXBpbVQ2eFVyQ1l2YUxa?=
 =?utf-8?B?czUrT2xSc3VRT3d2dE5oTS8wS3VrSVFPcEt2SkdneTByMC9XcGwvY1ZNZWRp?=
 =?utf-8?B?YmlMaTI1c0grbTg0eUFqTW53UHVPeUJpUkc0bkdtN3Z4bG9NMWdROUwvNlU3?=
 =?utf-8?B?dzNYclpYTEoya0xLR1ZVRzFlZlhqWER1eE1vWXBJMlBtVSs1NGlHVUFvQWQx?=
 =?utf-8?B?U2RvM0dyQ05UTFprRm1DOVhwaEU5NmFpdGsyMGxQbjE2OXpyRXlMZEZBS2xI?=
 =?utf-8?B?MDdsT0ptRDFJUjVCT0t1SzdxQnVMek5FV3lpR3o0L1ZmaXNiSmhEZ2FjREFV?=
 =?utf-8?B?cXZLV0dQTXh6UzlCRjYzcWR6UFdhS01oMlNYdzVQdkgzQnBtdVAvZFJkN2lp?=
 =?utf-8?B?UjJsU0tyaTlPNjVjN2Q1YTFqOFZhYUE2WThwVkJKQ2xZQ3pHWTFDUlVHV3NE?=
 =?utf-8?B?c1J4ZkVYWCt4NDFmY0VzM3JEUWZEZXBKaVZrWHZCSWsyMXZRaXRITks2dEF1?=
 =?utf-8?B?ZVg4NDI5c0pqOXNFck5udEI0OEFPN0QwMXhKVklJVnpNL2VjM2JNMEhwMmEz?=
 =?utf-8?B?bG1rMTFuWC8zd3o3VWw5NXBqYzltSEhRcmhvWGs5enZOSENKYVBRRE0xVmd3?=
 =?utf-8?B?K3BMWFVFcUg5b1RMUUJGY1hGcWliUk5kMkNydmF2SDVSa3hlVCs4UG1FNGwr?=
 =?utf-8?B?WmJkYTFxWTc3ZzNWWG5WYk1OOVIwVnNHdjg4YTNEbnJDV2dvbWdFcmtnajBI?=
 =?utf-8?B?cklMM2lxT25kdXlpWnFIL0xEUjF5TTg5VEFySEFKcThIdmxaZXpRaDZybHhj?=
 =?utf-8?B?dStFb1BBOElxWlJYbTk2S2k1WW95WUFQSG8rMm95WVhJMXljdTBrRFE3ek10?=
 =?utf-8?B?cTFHNUV1bWdqNUducktFMUhkWU9RU0FyR1lKdTNUZFA0bHJmdmNHdkR0Tm1V?=
 =?utf-8?B?MVp4UDJudFhOQ1VUalFTdG41OUpEY2ZESmxTMzBvSWtXSzZwK0I1SktTL0lB?=
 =?utf-8?B?OHNwL1RNbkc5WkQrYko0KzZnL1YvUlI0bzZ6L29pek1lTzdNWWtVYWQ3a1BV?=
 =?utf-8?B?Qk5PTjlKWHBNSGNaRGVmZ2p4ZWxud1Z4dHI1Umw2Y2NxdHVVVVRFczZNdXBs?=
 =?utf-8?B?b0ZIZURod0E1bnY0aDNKcExlcHRsRkxpSU5EbHpWTkdoc0I1TkhMV3pHd1Fi?=
 =?utf-8?B?OXVZWjFQTThWaStwUmxlT3J0WkdrWCtYN1dKLzM2a3oveFF5eVB3b2VRdlVU?=
 =?utf-8?B?Q0lkVmY1cWNRM3A5UEw4VmRObWRIWU1nQlZwdmNFT1U4OXRnMTJsMWJBcUZW?=
 =?utf-8?B?OEhEcklmcHVvR1oyYnpMZ0orYUNGMU1RbENIYmpPM3VEekJDUmkvOUxWZVA3?=
 =?utf-8?Q?LY5ywclRpWdjrT6TxNUPAY0vkudNVMe3rDDZaDPhjlxEh?=
x-ms-exchange-antispam-messagedata-1: 47+5zU6k0OHowSgWp8Qs3gfg5riSU5KXD5Q=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1F033C6959A52140856BAA39FE3F694B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7dc5247-ab58-4c94-022e-08de4de5b5a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 12:10:12.3046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: umBAXBX+loU9X3dOZMDn12N9ipKwmCIacIzPlOOCDmB/qMz5hSaekBQtFl18ohuIGkLUhWI0+TdNffjjvw2cGAe01C2pMAzcPUDnsVLaP1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
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

T24gTW9uLCAyMDI2LTAxLTA1IGF0IDE0OjQ0IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOgo+
IFF1b3RpbmcgVmlub2QgR292aW5kYXBpbGxhaSAoMjAyNi0wMS0wNSAwNzo0ODo1OC0wMzowMCkK
PiA+IEZvciBERzIsIHdhXzIyMDE0MjYzNzg2IGlzIGFwcGxpY2FibGUgb25seSBpZiB0aGUgbnVt
YmVyIG9mIGFjdGl2ZQo+ID4gcGxhbmVzIGlzIGdyZWF0ZXIgdGhhbiAxIGluIHBpcGUgQSBhbmQg
cGlwZSBCLiBDdXJzb3IgcGxhbmVzIGFuZAo+ID4gYW55IHBsYW5lcyBvbiBwaXBlIEMgb3IgcGlw
ZSBEIGFyZSBub3QgY29uc2lkZXJlZCBmb3IgdGhpcy4gQXMgZm9yCj4gPiBERzIgdGhpcyB3YSBj
b25kaXRpb24gaXMgYmFzZWQgb24gdGhlIG51bWJlciBvZiBhY3RpdmUgcGxhbmVzLCB0aGUKPiA+
IGNoZWNrIGlzIG1vdmVkIHRvIHRoZSBmYmMgcG9zdCBwbGFuZSB1cGRhdGUgY2FsbHMuIFRoZSBm
b3JjZSBzbGIKPiA+IGludmFsaWRhdGlvbiBjaGlja2VuIGJpdCBpcyBzZXQvdW5zZXQgYmFzZWQg
b24gdGhlIGNvbmRpdGlvbi4gRm9yCj4gPiB0aGUgb3RoZXIgcGxhdGZvcm1zIHdoZXJlIHRoaXMg
d2EgaXMgdmFsaWQsIHRoZSB3YSBhcHBsaWVkIGJlZm9yZQo+ID4gZW5hYmxpbmcgdGhlIEZCQyBV
bmNvbmRpdGlvbmFsbHkgYXMgYmVmb3JlLgo+ID4gCj4gPiB2Mjogd3JvbmcgdmVyc2lvbiBzZW5k
IGFzIHRoZSBpbml0aWFsIHBhdGNoc2V0Cj4gPiDCoMKgIGZvciBERzIsIGFjdGl2ZSBwbGFuZXMg
Y2hlY2sgc2hvdWxkIGJlIGRvbmUgYWxsIHBpcGVzIG5vdCBqdXN0Cj4gPiDCoMKgIHRoZSBGQkMg
cGlwZcKgIChNYXR0KQo+ID4gCj4gPiBCc3BlYzogNTQwNzcsIDcyMTk3Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDYy
Cj4gPiArKysrKysrKysrKysrKysrKysrKysrLS0KPiA+IDEgZmlsZSBjaGFuZ2VkLCA1OSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gPiBpbmRleCAxNTViMzA4ZWQ2NmYuLmIwMWY5NjIyNTEw
ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+
IEBAIC05MTUsNiArOTE1LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19wcm9ncmFtX2NmYihz
dHJ1Y3QKPiA+IGludGVsX2ZiYyAqZmJjKQo+ID4gwqDCoMKgwqDCoMKgwqAgZmJjLT5mdW5jcy0+
cHJvZ3JhbV9jZmIoZmJjKTsKPiA+IH0KPiA+IAo+ID4gK3N0YXRpYyB2b2lkIGZiY19zbGJfaW52
YWxpZGF0aW9uX3dhKHN0cnVjdCBpbnRlbF9mYmMgKmZiYywKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJv
b2wgZm9yY2VfaW52YWxpZGF0aW9uKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqDCoCB1MzIgc2V0
ID0gZm9yY2VfaW52YWxpZGF0aW9uID8KPiA+IERQRkNfQ0hJQ0tFTl9GT1JDRV9TTEJfSU5WQUxJ
REFUSU9OIDogMDsKPiA+ICvCoMKgwqDCoMKgwqDCoCB1MzIgY2xlYXIgPSBmb3JjZV9pbnZhbGlk
YXRpb24gPyAwIDoKPiA+IERQRkNfQ0hJQ0tFTl9GT1JDRV9TTEJfSU5WQUxJREFUSU9OOwo+ID4g
Kwo+ID4gK8KgwqDCoMKgwqDCoMKgIGludGVsX2RlX3JtdyhmYmMtPmRpc3BsYXksIElMS19EUEZD
X0NISUNLRU4oZmJjLT5pZCksCj4gPiBjbGVhciwgc2V0KTsKPiA+ICt9Cj4gPiArCj4gPiBzdGF0
aWMgdm9pZCBpbnRlbF9mYmNfcHJvZ3JhbV93b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZmJjICpm
YmMpCj4gPiB7Cj4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IGZiYy0+ZGlzcGxheTsKPiA+IEBAIC05NDYsMTAgKzk1NSwxMyBAQCBzdGF0aWMgdm9pZAo+
ID4gaW50ZWxfZmJjX3Byb2dyYW1fd29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2ZiYyAqZmJjKQo+
ID4gwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzIyMDE0MjYzNzg2Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
ICogRml4ZXM6IFNjcmVlbiBmbGlja2VyIHdpdGggRkJDIGFuZCBQYWNrYWdlIEMgc3RhdGUKPiA+
IGVuYWJsZWQKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBXb3JrYXJvdW5kOiBGb3JjZWQgU0xCIGlu
dmFsaWRhdGlvbiBiZWZvcmUgc3RhcnQgb2YgbmV3Cj4gPiBmcmFtZS4KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRm9yIERHMiwgd2EgaXMgYXBwbGllZCBv
bmx5IGlmIHRoZSBudW1iZXIKPiA+IG9mIHBsYW5lcyBpbgo+ID4gK8KgwqDCoMKgwqDCoMKgwqAg
KsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQSVBFIEEgYW5kIFBJUEUgQiBpcyA+IDEuIFRoaXMg
d2EgY3JpdGVyaWEKPiA+IGlzIGFzc2Vzc2VkCj4gPiArwqDCoMKgwqDCoMKgwqDCoCAqwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHNlcHJhdGVseSBvbiBldmVyeSBwb3N0IHBsYW5lIHVwZGF0ZSBj
YWxsCj4gPiB0byBjaGVjayBpZgo+ID4gK8KgwqDCoMKgwqDCoMKgwqAgKsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBwbGFuZXMgY29uZGl0aW9uIGlzCj4gPiBt
ZXQuCj4gPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiAtwqDCoMKgwqDCoMKgwqAgaWYgKGludGVs
X2Rpc3BsYXlfd2EoZGlzcGxheSwgMjIwMTQyNjM3ODYpKQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbnRlbF9kZV9ybXcoZGlzcGxheSwgSUxLX0RQRkNfQ0hJQ0tFTihmYmMt
PmlkKSwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAwLAo+ID4gRFBGQ19DSElDS0VOX0ZPUkNFX1NMQl9JTlZBTElEQVRJT04pOwo+
ID4gK8KgwqDCoMKgwqDCoMKgIGlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksIDIyMDE0MjYz
Nzg2KSAmJiAhZGlzcGxheS0KPiA+ID5wbGF0Zm9ybS5kZzIpCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZiY19zbGJfaW52YWxpZGF0aW9uX3dhKGZiYywgdHJ1ZSk7Cj4gPiAK
PiA+IMKgwqDCoMKgwqDCoMKgIC8qIHdhXzE4MDM4NTE3NTY1IERpc2FibGUgRFBGQyBjbG9jayBn
YXRpbmcgYmVmb3JlIEZCQwo+ID4gZW5hYmxlICovCj4gPiDCoMKgwqDCoMKgwqDCoCBpZiAoZGlz
cGxheS0+cGxhdGZvcm0uZGcyIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQo+ID4gQEAg
LTE4ODcsMTMgKzE4OTksNTcgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91cGRhdGUo
c3RydWN0Cj4gPiBpbnRlbF9mYmMgKmZiYykKPiA+IMKgwqDCoMKgwqDCoMKgIGludGVsX2ZiY19h
Y3RpdmF0ZShmYmMpOwo+ID4gfQo+ID4gCj4gPiArc3RhdGljIHZvaWQKPiA+ICtkZzJfZmJjX3Vw
ZGF0ZV9zbGJfaW52YWxpZGF0aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUKPiA+
ICpzdGF0ZSkKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsKPiA+ICvCoMKgwqDCoMKgwqDCoCBp
bnQgaSwgbnVtX2FjdGl2ZV9wbGFuZXMgPSAwOwo+ID4gK8KgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwo+ID4gK8KgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOwo+ID4gK8KgwqDCoMKgwqDCoMKgIGVudW0gaW50ZWxfZmJjX2lkIGZi
Y19pZDsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwKPiA+IGkpIHsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdTggYWN0aXZlX3BsYW5lczsKPiA+ICsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNydGMtPnBpcGUgIT0gUElQRV9BICYmIGNydGMt
PnBpcGUgIT0gUElQRV9CKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGludWU7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFjdGl2ZV9wbGFuZXMgPSBjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICYKPiA+IH5C
SVQoUExBTkVfQ1VSU09SKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbnVt
X2FjdGl2ZV9wbGFuZXMgKz0gaHdlaWdodDgoYWN0aXZlX3BsYW5lcyk7Cj4gCj4gSSBkb24ndCB0
aGluayB0aGlzIHJlYWxseSBjb3VudHMgdGhlIHRvdGFsIG51bWJlciBvZiBhY3RpdmUgbm9uLQo+
IGN1cnNvcgo+IHBsYW5lcyBpbiBwaXBlcyBBIGFuZCBCLsKgIFdoYXQgaWYgdGhpcyBkaXNwbGF5
IGNvbW1pdCBpcyBmb3Igb25seSBvbmUKPiBvZgo+IHRob3NlIHBpcGVzIGFuZCB0aGUgb3RoZXIg
b25lIGlzIGFscmVhZHkgZW5hYmxlZCB3aXRoIGEgbm9uLXplcm8KPiBub24tY3Vyc29yIHBsYW5l
PwoKaG1tLi4geWVhaCEgdGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dC7CoAoKTWF5IGJlIGZv
cl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCkgY291bGQgYmUgdXNlZC4gQnV0IHRoZW4g
aXQKZG9lc250IG1ha2Ugc2Vuc2UgdG8gaGF2ZSB0aGlzIGluIHRoZSBmYmMgcG9zdCBwbGFuZSB1
cGRhdGUgYXMgaXQgZ2V0cwpjYWxsZWQgZWFjaCBjcnRjIGluIHRoZSBzdGF0ZS4gTWF5IGJlIGEg
bmV3IGNhbGwgaXMgbmVlZGVkIGZyb20KYXRvbWljX2NvbW1pdF90YWlsKCkganVzdCBmb3IgdGhp
cyEgTmVlZCB0byBjaGVjayEgIAoKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoCB9Cj4gPiArCj4gPiAr
wqDCoMKgwqDCoMKgwqAgZm9yX2VhY2hfZmJjX2lkKGRpc3BsYXksIGZiY19pZCkgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSBkaXNw
bGF5LQo+ID4gPmZiYy5pbnN0YW5jZXNbZmJjX2lkXTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsKPiA+ICsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGZiYy0+c3RhdGUucGxhbmUpCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmYmNfc2xiX2ludmFs
aWRhdGlvbl93YShmYmMsCj4gPiBudW1fYWN0aXZlX3BsYW5lcyA+IDEpOwo+ID4gKwo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtdXRleF91bmxvY2soJmZiYy0+bG9jayk7Cj4g
PiArwqDCoMKgwqDCoMKgwqAgfQo+ID4gK30KPiA+ICsKPiA+IHZvaWQgaW50ZWxfZmJjX3Bvc3Rf
dXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKPiA+IHsKPiA+ICvCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOwo+ID4gwqDCoMKgwqDCoMKgwqAgY29u
c3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIF9fbWF5YmVfdW51c2VkICpwbGFuZV9zdGF0ZTsK
PiA+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7Cj4gPiDCoMKgwqDC
oMKgwqDCoCBpbnQgaTsKPiA+IAo+ID4gK8KgwqDCoMKgwqDCoMKgIC8qCj4gPiArwqDCoMKgwqDC
oMKgwqDCoCAqIFdhXzIyMDE0MjYzNzg2Cj4gPiArwqDCoMKgwqDCoMKgwqDCoCAqIEZpeGVzOiBT
Y3JlZW4gZmxpY2tlciB3aXRoIEZCQyBhbmQgUGFja2FnZSBDIHN0YXRlCj4gPiBlbmFibGVkCj4g
PiArwqDCoMKgwqDCoMKgwqDCoCAqIFdvcmthcm91bmQ6IEZvcmNlZCBTTEIgaW52YWxpZGF0aW9u
IGJlZm9yZSBzdGFydCBvZiBuZXcKPiA+IGZyYW1lLgo+ID4gK8KgwqDCoMKgwqDCoMKgwqAgKsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGb3IgREcyLCB3YSBpcyBhcHBsaWVkIG9ubHkgaWYgdGhl
IG51bWJlcgo+ID4gb2YgcGxhbmVzIGluCj4gPiArwqDCoMKgwqDCoMKgwqDCoCAqwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFBJUEUgQSBhbmQgUElQRSBCIGlzID4gMS4gVGhpcyB3YSBjcml0ZXJp
YQo+ID4gaXMgYXNzZXNzZWQKPiA+ICvCoMKgwqDCoMKgwqDCoMKgICrCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc2VwcmF0ZWx5IG9uIGV2ZXJ5IHBvc3QgcGxhbmUgdXBkYXRlIGNhbGwKPiA+IHRv
IGNoZWNrIGlmCj4gPiArwqDCoMKgwqDCoMKgwqDCoCAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHRoZSBudW1iZXIgb2YgYWN0aXZlIHBsYW5lcyBjb25kaXRpb24gaXMKPiA+IG1ldC4KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgICovCj4gPiArwqDCoMKgwqDCoMKgwqAgaWYgKGRpc3BsYXktPnBsYXRm
b3JtLmRnMikKPiAKPiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlCj4gCj4gwqDCoMKgIGlmIChpbnRl
bF9kaXNwbGF5X3dhKGRpc3BsYXksIDIyMDE0MjYzNzg2KSAmJiBkaXNwbGF5LQo+ID5wbGF0Zm9y
bS5kZzIpCj4gCj4gLCBmb3IgY29uc2lzdGVuY3kuCgpOb3Qgc3VyZSBpZiB0aGF0IGFkZCBhbnkg
dmFsdWUhCgo+IAo+IEFsc28sIHdlIHByb2JhYmx5IHNob3VsZCBkcm9wIG9uZSBvZiB0aGUgY29t
bWVudHMgdG8gYXZvaWQgdHdvCj4gZHVwbGljYXRlZCBkZXNjcmlwdGlvbnMgb2YgdGhlIHdvcmth
cm91bmQ7IG1heWJlIGRyb3AgdGhpcyBvbmUuCgpKdXN0IHdhbnRlZCB0byBoYXZlIHRoYXQgd2Ff
aWQgbWVudGlvbmVkIGhlcmUhIE1heSBiZSBJIGNhbiBnZXQgcmlkIGlmCnRoZSBkZXNjcmlwdGlv
biBvZiB0aGUgd2EsIGJ1dCBrZWVwIGp1c3QgdGhlIHdhOmlkIQoKVGhhbmtzClZpbm9kCj4gCj4g
LS0KPiBHdXN0YXZvIFNvdXNhCj4gCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRnMl9mYmNfdXBkYXRlX3NsYl9pbnZhbGlkYXRpb24oc3RhdGUpOwo+ID4gKwo+ID4gwqDCoMKg
wqDCoMKgwqAgZm9yX2VhY2hfbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwK
PiA+IHBsYW5lX3N0YXRlLCBpKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGludGVsX2ZiYyAqZmJjID0gcGxhbmUtPmZiYzsKPiA+IAo+ID4gLS0gCj4gPiAyLjQz
LjAKPiA+IAoK
