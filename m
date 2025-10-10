Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F44BCBCCA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 08:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E472310E271;
	Fri, 10 Oct 2025 06:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fSSqM6Lf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9404D10E26C;
 Fri, 10 Oct 2025 06:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760078445; x=1791614445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=N1di0dES1mDyHOggSflmPw3MW1MkQP2lYa4XXStiE+c=;
 b=fSSqM6Lf9Ku82rsVGfnYFnhwbqNnj7hlTbJZegfegT69MhYWsTQDhwWh
 7/6tQamiTvIfFo3sv47i5NHaJmcAarQVXhhAO6wcm7GoELbsD58Ua6nlP
 /qKjzonZprfLB9/sm9C+JpEeymZFH4nL3ENhS0SkRMe4Lx+FZyvTspu/E
 BR9hyUpMlPMp0VgH/gDavBKibfetIlAR+fljpHUwYIyPNCRTMzJvmB2bm
 VSukRVY4DSr7U76lA7kl2aVCrE4apaKiL3T0UJ4qK6S7QgOQiQCUE7Hsn
 hnYPouf/z/GYhKefcM3L5A33upkJHdRE4gFEFleaxEV+i90xrQyowu7OX Q==;
X-CSE-ConnectionGUID: 8NZgbLyUQp6Wxtg+ouLgkw==
X-CSE-MsgGUID: MDN2u0IeTIO0izWd/g48Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62215257"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62215257"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 23:40:44 -0700
X-CSE-ConnectionGUID: glaKESEZT4uclHQI88IvJw==
X-CSE-MsgGUID: 6xtzZIQKR+aBfohKqzcKOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="180155111"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 23:40:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 23:40:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 23:40:43 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 23:40:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZvOKh2pdXGk5BgKhHubvQubZWpfV+5ZDC0yOnZqKuGz0+NCvgnl7itin3wUk4sHfzmxVa2BZCaqg224Mc/mGG1BHVM1dtpx7gBrYeUU+4fp7Tvm31rAnIHJA8qY2qTnm0dDWsnWeYND9X/DXxXNLK8X58QNcnDd0oqzJeQOOtTUL9ghyolaRLhzgyHc3krmVP/93bu+BkMj6xzIjjx4ci1WINgMYH8q6h9KRhR53qisfXsfu7M8Jvazyy9XnsYwCDm2en2EquyC4nLkP2TaCUzIbTItYq3ADfJGNqRQCy7VYc2//WzxAiS3fEiNiISCTM5UF770vZpiOpCqHvUVEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N1di0dES1mDyHOggSflmPw3MW1MkQP2lYa4XXStiE+c=;
 b=rOq/0suF+EQ+F+Qx6gma6mJamNYo1M301snpA1rbxjF3hs9CK+9hF971hS+P0FRy6Q6xMmN5jsPCSOy0e1L7uhjS1MTX78VrewWiQldui0H4/RNOvaq+setJ4q2AGxQI5pVwEA/hRBc9y5DwaR1u+ZjA1pwrLUiv4C919zHt3FbOWkI6DjLmdV0uTU0c1FsHWYTvjVwxuTRc27sAU6bqt/BLwU1rg19a3p+xEAPn075Ffu2la7zXGa529uBWx/iED0LQd7qGV0A/PdA8Jdzw4ppwAmc7YH0luFOmHkLKGbu6ElOgvexp2MggicIjgnJLQLTgPU35deeQ5FiFylPnzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5312.namprd11.prod.outlook.com (2603:10b6:5:393::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.9; Fri, 10 Oct 2025 06:40:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.007; Fri, 10 Oct 2025
 06:40:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 4/8] drm/i915/psr: Consider SCL lines when validating
 vblank for wake latency
Thread-Topic: [PATCH 4/8] drm/i915/psr: Consider SCL lines when validating
 vblank for wake latency
Thread-Index: AQHcOP0/ufl7H6sFMEal2KoWYJi1NrS675WA
Date: Fri, 10 Oct 2025 06:40:36 +0000
Message-ID: <0759f65cc1e2030c7f4bde76e907192958e1ccfd.camel@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251009090102.850344-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5312:EE_
x-ms-office365-filtering-correlation-id: 8356b358-97fc-4a98-5ccc-08de07c7eb73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V1ROQVNWbTBVZzkxUVg0bzhzcTRITklsS21hOUFxam9icmpmVVlleXdkc1Rh?=
 =?utf-8?B?dWlGT0Q1bysvY29jWlRNWmNLL1JISldKaTRScStrTHIvclV1ckc1d20rNWtt?=
 =?utf-8?B?MVhVMzlmMThpa2JtMURCRVF5aGp6QTJaM3c1amZvbXBDOEdsWG5Tc1ZSUU05?=
 =?utf-8?B?MWdqc0RjL0hrQXNVRGR3REljbXhzVDBJd3BTaVVSdXhqRWcxbmR3Y09VdWx3?=
 =?utf-8?B?SHdoa3NFQjAzcnhHc2szR2pPZnp3UmwxR1FCa0s2SG5PM29QdGhUUjZrejlw?=
 =?utf-8?B?QlNHcU1nek93QnNSdDh4cU5jeE05T0xzVDRkalZoa0pqbStidTdCd2U1VnR3?=
 =?utf-8?B?dzdEcml5cXphVHFqYVVsK1granh4NVkzOTVVR0EvRU00ejk3Nm9PNWVhZmxH?=
 =?utf-8?B?NXZZVXFQdzNVOXlZYWU0dXhlS3RTSmp1VTgvZmluOVYxMUNDTWdVZVlRQWZ0?=
 =?utf-8?B?V0pDMEZXMVBqYUJnVElaM2plZ3NPWWtBVUc3eld5ZW1ibjA2bzE3NHZUN21E?=
 =?utf-8?B?TGI2ZTNJRmdjMXlKdDF1Y2hWbDYvdWYrWFFiL2x4QUNsdG9zTUhza1FxS3U2?=
 =?utf-8?B?Nyt5MDBPZmQ0NHExUkVqamhoYzhsd1VML0QxZnV5cDZMMSs0a0l1SC9TalZr?=
 =?utf-8?B?MWhsTTRUVUVNSXkrejlkbGozbzZNWXhPazhCMitDVy9td0trZkZja21MMHR0?=
 =?utf-8?B?QTJ2R2tzRXZmUmc5MVB2TTNnMUk1c21ZOVJYRUh6QkdlYytOdjdFL2twZ28w?=
 =?utf-8?B?K0t4cVQzaXp3MHNYdkkzVytrVnZjd3VxNE9nVVhYeU1VdythbjlyNE50OGhZ?=
 =?utf-8?B?b1VTak5sVHZXVjJxTWVGRDV3Q3UwYlQ3dXRvV1Nadk9nMHJlc1cwTjJUU1JJ?=
 =?utf-8?B?SXlyallPTU9ueUpieTdMbTQ1cm9vdGxDeXM2QUtycElYanZYYy9hMWNuajdt?=
 =?utf-8?B?Y3QzR0ZkNWs5NklLaXlNb0M4TURWeSt2aU94UlRMckxsbVpmNXcxakxabkNa?=
 =?utf-8?B?TmhLZUViKzNIZXd6SVErVmRhTjQ5VXRDMHhHL2x1QnZMYVNxcUFJMFlTMDcw?=
 =?utf-8?B?ZHZyQldPWGVtbEpoUVRZZE9SV05nZURlMjZmZzFzVWlPaE5IVG16aTFBRWxQ?=
 =?utf-8?B?bDhjUFJ6WTgrSjNROEJIVUtRTmI1SnlaUmp5ZVluYURNVU9sS3BCSE9iV3Z2?=
 =?utf-8?B?ZFo1VHMvSFl5RGJOK3JScVZTVGI4cmZrbk9FcGNTWXI2d2g2T1FWdXFJREM0?=
 =?utf-8?B?YVc2RCtKUkNSam82SDNSTm5nN2lQenVwWFlrYnhOdTJjNEk5VURraDd2WEl2?=
 =?utf-8?B?R1FlUFNJdlJkTnVoano4Y3VSamViZnFmT1A2WHUrTU5SZUViM0J5YnRCMDJB?=
 =?utf-8?B?N3l2bG8zR1BmaDN0Y0lpRW5hcGdyNXBEUER3UmVjVnV5OTdLTEl1RUNnNFNQ?=
 =?utf-8?B?MzFiSzVOOVBoQk1jQ2pOdDRraytnMjgyM0poS0NSc2VPY3YvVUJHYmI2T1NL?=
 =?utf-8?B?UGlwNHlKUzIrVkpVcW1KV2JtSXYxUEVIbk5DYnUvUHVUSklBc0t4TS84Q0h5?=
 =?utf-8?B?OVJQM2VVU2ZhUU1EcWhGN3F6T280R0ZRemgyRy9oeVRUNW8ycC9hNnJ1aDNQ?=
 =?utf-8?B?SmlPQjBnS0krUWlycU4xb2F2V0hUMXZHemNLM0lwcGRpVkU4RmdWbVF6elpF?=
 =?utf-8?B?UmFwcCtRZGhYZmEyZ0IwYVpoQ3ppcmd2Tnd3OHI4OG5hbFFwQ1k0cjhLb3NR?=
 =?utf-8?B?VS9LajF1UGdrbnYvWjdsclYwNzlXNnBXeGNtRXZlZVhJRUkvYjQrQ0d1QXpQ?=
 =?utf-8?B?azh6eDIxRThUSGY2TWdTNVNyd0xzMmVDeVlpK25PeXI5TldwTWtpZUNhOVdP?=
 =?utf-8?B?Q2FjUEJOZmlXTVh1Y00wc1FqUW42THNyYjRzL2lzSktoZEkvNnJqOHpsKytx?=
 =?utf-8?B?aTZlUW14VU84bXQySjdkVnlwcFVFQXREbnRtbnRVKzhJMDVsUkkrdEpDY29p?=
 =?utf-8?B?andvZno4UjZsMElqK2RzRFZzeFRmTlVadlV4MEV3cndyS3dWZFMyZnY2S0Nu?=
 =?utf-8?Q?Etzh7K?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHFBWUY4NXd1RDY0bXVOQXhuMVhlTWw1WmNuMEVQSm85MXpXVERtZk9uWUlS?=
 =?utf-8?B?SUNoZGFjSnZzb3k1MytxQk1rcVRITGFWTUNhbFY2RUZTNmNVYnNsaFkrVzNU?=
 =?utf-8?B?U3JzK1Z2UWhIc0NNNEROeVZ3ckd5d2pwMFFhaEV0ZGlqL1VQOGN4M2dVL1la?=
 =?utf-8?B?TmorTXFzQzEyVFZPVnlVcWNpQmdZcWNwS01IampXWkxINFRFNWlMVnZzQzJE?=
 =?utf-8?B?TW11QVZpQTBGY1BidTZOQmpJdW5WZ201TDU3UU1ma3l5T2psak85WWc4b1hF?=
 =?utf-8?B?STBkUjdsMTNJODVzS3dUSFhDcmlleXNrMUtxM2ZyOTNxaHJ2SkpWTXdEN25t?=
 =?utf-8?B?Rnp5NEkrc05IRlVsWnVnRHFsZTRMV0FnV1VuazY4QlBFT3lVN2ZUY01mRHRE?=
 =?utf-8?B?ZVBlYUxOWHNXTURyQUpsK0lGaXVQdUhhOVhFRGN2cW5iYnNOdU16WTAvN0dE?=
 =?utf-8?B?ZHQrN2tmZE1malR4QkNyaGxneHBtRDFMYVpCK2xERDFsY2YrR0JwaysrUlRn?=
 =?utf-8?B?NnRyNEEva3JlWFkwVCtxLzg2cDB0cnZBcEFpMzV3TlhUbG0zNFU1SkFFVjJl?=
 =?utf-8?B?dUVzRXRxREMvaFhIQ0xtbU1ONWZ2Y1pYN3psTmoreEM4TGlmaWhMRFk5T1Bh?=
 =?utf-8?B?SkxVeFpyK1d3K0tVbG1RMkxsZFoxdWpjQStmVHFFTTNFZ2pNNnlDeWhZTU9N?=
 =?utf-8?B?cFR4RVY2bVNwSkdxOUNpQmJveEMrNW9aU0lzbGs4ZTEvdkdLREVINVFrM2N6?=
 =?utf-8?B?Ujg5WldtSnJxSHM5dno4WDczNTlYUis0dFBjRVpWNWlLQWdsaUhvRlhsaUlD?=
 =?utf-8?B?dFhsc05GRDBKb2JGZ0owM2FSczZZWm80enI3MzhiQzdWKytXdGpjdzFoaG5w?=
 =?utf-8?B?T0hMbkxQeWNOaS92bE5zRXNKVi9LREJmS25RY1pDRVBkeDRaRGI1YnMzaU92?=
 =?utf-8?B?eHhrL1YwZjNwWTFaS3M0N2lFVUtMR3BuMFdYYXRjMnl4aDFMS29VWm85R3p5?=
 =?utf-8?B?UDFpU053ZGhXSkdydURGWE8wZXJaRGFubFhxQVA0RFhjZU1neE83aTdONnRy?=
 =?utf-8?B?aDVIeVJTN3E3OXorSThGWTJHVUtJekJ6clhDWXdXQUxnWWpXREtjZTV5QUZa?=
 =?utf-8?B?ODNOZDROdldkM3ZTV29BNHB2S3RuaERqcFJyUENQcmhHL0lLMzlhdzhHVFY5?=
 =?utf-8?B?bVZzU3MyM1VuV1d4TTlvU2l6SHZLb2JwbXlva21ZNmpMTGJOQ0xoaXY0ZWN1?=
 =?utf-8?B?NGFZZERpckFrWDZ4bXU1RWlPUXJQQU02UmZDc20rL1VhVndrbjFTVWdEdUN6?=
 =?utf-8?B?TWptRVVHZTlmSnhlZjJOcTNKUjhiMTlkMEE5MUczS3huSGVmdi9KOHhIU0xI?=
 =?utf-8?B?NVFUcmJtQXgxTld1aDZzWFhNM1liRGdVdFVlYkZFRWs5ZVc2QkVVTUZkWUN3?=
 =?utf-8?B?VGFBQmNGamh6YzhSVTZDeCtLbytkWEl5WU5tUGQ2c0VzYnF6UXRJQjBucVox?=
 =?utf-8?B?UjNGME9oM0RaWFdWUXJoeDk2Rnh2N2s2M282UFVBbm4zMm83dzgwbFJoUXdO?=
 =?utf-8?B?UUdyclMwZVZLREdwbFVsakkyc1phcVJqTG9kbVFRVno4ZTBTNURUd1E3UUpU?=
 =?utf-8?B?RFo5MlNlUDY3c3FoVUh0Sitvak9vY3dPTHNLNndycmZzKzlFTEpEa2g4SDlV?=
 =?utf-8?B?UE8yTnVNY2JPcTJCSCt2Y0FOcTgzcHZoWEc1Nzc5dnZFOEVOU3czbXFXN2Yv?=
 =?utf-8?B?bm5Ma1pDeS9KaTFHdXpSekdrTW9aQ0VkSVByOCthQW9zMEJWL1FVOURDMTly?=
 =?utf-8?B?R051ZUIxYmtjcFY0aGttZUlEUHJSY2NVN0pkcVBhUk9aRG91VFBYTFA0RExx?=
 =?utf-8?B?dE83UUtwbTFmL2prQTdwR0h3QzhxT1VHbllNWnE4U2lwUGJXRnZieisxUEV0?=
 =?utf-8?B?OVBZRGw1UC83MVcyNmY4SkY5R1RDbDRSTlFRS1pmQTZmcjVpdUIrM3l2VFZi?=
 =?utf-8?B?aEpBYnE3QlhTbjdEUTZnZlptSUN6OFRxYlhxaU0yeEVjZkhJK3hib1ZTS2Jw?=
 =?utf-8?B?ZUVwajZsUzFaYU5MQXdHMUM2ZUM4aFFVY1AwWjdnbkQzNFNBS2g3MnF3K1ky?=
 =?utf-8?B?eERhWU9VK2JNMHRiV1RxWm40MGd3MVVQWWZhOGt4bEFqMUVLSXZoTmtQQ1dN?=
 =?utf-8?B?aDBubklRaVFwWTV0MHhQeG5hWllVN1pjdTAvaGxNd3hKZk8vWHYyWVVhN1lr?=
 =?utf-8?B?eFJDVDA2TVc1ekM5TGFDVzgzTitnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <58CA97691FE738418178BD58A436A7CF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8356b358-97fc-4a98-5ccc-08de07c7eb73
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 06:40:36.2656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8uBCZ4GKDeOyAelCO+mFqQYEP1J+Whkj5Z3qqvdxIsEFhk9mgGE6Nu8T7H3izd/OLlzOmmTnjQ/5ToPRSvpPSfkREVpCaKVFq/MOXW4v9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5312
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

T24gVGh1LCAyMDI1LTEwLTA5IGF0IDE0OjMwICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gUGFuZWwgUmVwbGF5IGFuZCBQU1IyIHNlbGVjdGl2ZSB1cGRhdGUgcmVxdWlyZSBzdWZmaWNp
ZW50IHZibGFuaw0KPiBkdXJhdGlvbg0KPiB0byBhY2NvbW1vZGF0ZSB3YWtlIGxhdGVuY2llcy4g
SG93ZXZlciwgdGhlIGN1cnJlbnQNCj4gd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoKSBsb2dp
YyBkb2VzIG5vdCBhY2NvdW50IGZvciB0aGUgbWluaW11bQ0KPiBTZXQgQ29udGV4dCBMYXRlbmN5
IChTQ0wpIGxpbmVzLg0KPiANCj4gU2VwYXJhdGUgb3V0IF9pbnRlbF9wc3JfbWluX3NldF9jb250
ZXh0X2xhdGVuY3koKSB0byBjb21wdXRlIHRoZQ0KPiBtaW5pbXVtDQo+IFNDTCByZXF1aXJlbWVu
dCBiYXNlZCBvbiBwbGF0Zm9ybSBhbmQgZmVhdHVyZSB1c2FnZS4NCj4gDQo+IFRoZSBhbHBtX2Nv
bmZpZ192YWxpZCgpIGhlbHBlciBpcyB1cGRhdGVkIHRvIHBhc3MgdGhlIG5lY2Vzc2FyeQ0KPiBj
b250ZXh0IGZvcg0KPiBkZXRlcm1pbmluZyB3aGV0aGVyIFBhbmVsIFJlcGxheSBvciBQU1IyIHNl
bGVjdGl2ZSB1cGRhdGUgaXMgZW5hYmxlZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5h
dXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gQ2M6IEFuaW1lc2ggTWFubmEg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAxMDIgKysrKysrKysrKysrKystLS0tLS0tDQo+IC0tDQo+IMKgMSBm
aWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDQxIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDIxMzE0NzNj
ZWFkNi4uMjEyYmQyNDRiZWVkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTEzNjEsMTQgKzEzNjEsNjQgQEAgc3RhdGljIGludA0KPiBpbnRl
bF9wc3JfZW50cnlfc2V0dXBfZnJhbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKg
CXJldHVybiBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+IMKgfQ0KPiDCoA0KPiArc3RhdGljDQo+ICtp
bnQgX2ludGVsX3Bzcl9taW5fc2V0X2NvbnRleHRfbGF0ZW5jeShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gKwkJCQnCoMKgwqDCoMKgwqAgYm9vbCBuZWVk
c19wYW5lbF9yZXBsYXksDQo+ICsJCQkJwqDCoMKgwqDCoMKgIGJvb2wgbmVlZHNfc2VsX3VwZGF0
ZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVs
X2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3Ip
DQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJLyogV2FfMTQwMTU0MDE1OTYgKi8NCj4gKwlpZiAo
aW50ZWxfdnJyX3Bvc3NpYmxlKGNydGNfc3RhdGUpICYmDQo+IElTX0RJU1BMQVlfVkVSKGRpc3Bs
YXksIDEzLCAxNCkpDQo+ICsJCXJldHVybiAxOw0KPiArDQo+ICsJLyogUmVzdCBpcyBmb3IgU1JE
X1NUQVRVUyBuZWVkZWQgb24gTHVuYXJMYWtlIGFuZCBvbndhcmRzICovDQo+ICsJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJLyoNCj4gKwkg
KiBDb21tZW50IG9uIFNSRF9TVEFUVVMgcmVnaXN0ZXIgaW4gQnNwZWMgZm9yIEx1bmFyTGFrZSBh
bmQNCj4gb253YXJkczoNCj4gKwkgKg0KPiArCSAqIFRvIGRldGVybWluaXN0aWNhbGx5IGNhcHR1
cmUgdGhlIHRyYW5zaXRpb24gb2YgdGhlIHN0YXRlDQo+IG1hY2hpbmUNCj4gKwkgKiBnb2luZyBm
cm9tIFNSRE9GRkFDSyB0byBJRExFLCB0aGUgZGVsYXllZCBWLiBCbGFuayBzaG91bGQNCj4gYmUg
YXQgbGVhc3QNCj4gKwkgKiBvbmUgbGluZSBhZnRlciB0aGUgbm9uLWRlbGF5ZWQgVi4gQmxhbmsu
DQo+ICsJICoNCj4gKwkgKiBMZWdhY3kgVEc6IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgPiAw
DQo+ICsJICogVlJSIFRHOiBUUkFOU19WUlJfQ1RMWyBWUlIgR3VhcmRiYW5kIF0gPCAoVFJBTlNf
VlJSX1ZNQVhbDQo+IFZSUiBWbWF4IF0NCj4gKwkgKiAtIFRSQU5TX1ZUT1RBTFsgVmVydGljYWwg
QWN0aXZlIF0pDQo+ICsJICoNCj4gKwkgKiBTUkRfU1RBVFVTIGlzIHVzZWQgb25seSBieSBQU1Ix
IG9uIFBhbnRoZXJMYWtlLg0KPiArCSAqIFNSRF9TVEFUVVMgaXMgdXNlZCBieSBQU1IxIGFuZCBQ
YW5lbCBSZXBsYXkgRFAgb24NCj4gTHVuYXJMYWtlLg0KPiArCSAqLw0KPiArDQo+ICsJaWYgKERJ
U1BMQVlfVkVSKGRpc3BsYXkpID49IDMwICYmIChuZWVkc19wYW5lbF9yZXBsYXkgfHwNCj4gKwkJ
CQkJwqDCoCBuZWVkc19zZWxfdXBkYXRlKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsJZWxzZSBpZiAo
RElTUExBWV9WRVIoZGlzcGxheSkgPCAzMCAmJiAobmVlZHNfc2VsX3VwZGF0ZSB8fA0KPiArCQkJ
CQnCoMKgwqDCoMKgwqANCj4gaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLA0KPiArCQkJ
CQkJCQnCoMKgDQo+IElOVEVMX09VVFBVVF9FRFApKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsJZWxz
ZQ0KPiArCQlyZXR1cm4gMTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBib29sIHdha2VfbGluZXNf
Zml0X2ludG9fdmJsYW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCcKgwqDC
oMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4g
LQkJCQnCoMKgwqDCoMKgwqAgYm9vbCBhdXhfbGVzcykNCj4gKwkJCQnCoMKgwqDCoMKgwqAgYm9v
bCBhdXhfbGVzcywNCj4gKwkJCQnCoMKgwqDCoMKgwqAgYm9vbCBuZWVkc19zZWxfdXBkYXRlLA0K
PiArCQkJCcKgwqDCoMKgwqDCoCBib29sIG5lZWRzX3BhbmVsX3JlcGxheSkNCj4gwqB7DQo+IMKg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9k
cCk7DQo+IMKgCWludCB2YmxhbmsgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
dmJsYW5rX2VuZCAtDQo+IMKgCQljcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJs
YW5rX3N0YXJ0Ow0KPiDCoAlpbnQgd2FrZV9saW5lczsNCj4gKwlpbnQgc2NsID0gX2ludGVsX3Bz
cl9taW5fc2V0X2NvbnRleHRfbGF0ZW5jeShjcnRjX3N0YXRlLA0KPiArCQkJCQkJwqDCoMKgwqAN
Cj4gbmVlZHNfc2VsX3VwZGF0ZSwNCj4gKwkJCQkJCcKgwqDCoMKgDQo+IG5lZWRzX3BhbmVsX3Jl
cGxheSk7DQoNCldoeSBjYW4ndCB5b3UgdXNlIGNydGNfc3RhdGUtPnNldF9jb250ZXh0X2xhdGVu
Y3k/DQoNCj4gKwl2YmxhbmsgLT0gc2NsOw0KPiDCoA0KPiDCoAlpZiAoYXV4X2xlc3MpDQo+IMKg
CQl3YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2FrZV9s
aW5lczsNCj4gQEAgLTEzOTAsNyArMTQ0MCw5IEBAIHN0YXRpYyBib29sIHdha2VfbGluZXNfZml0
X2ludG9fdmJsYW5rKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgDQo+IMKgc3Rh
dGljIGJvb2wgYWxwbV9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
wqAJCQnCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAt
CQkJwqDCoMKgwqDCoCBib29sIGF1eF9sZXNzKQ0KPiArCQkJwqDCoMKgwqDCoCBib29sIGF1eF9s
ZXNzLA0KPiArCQkJwqDCoMKgwqDCoCBib29sIG5lZWRzX3NlbF91cGRhdGUsDQo+ICsJCQnCoMKg
wqDCoMKgIGJvb2wgbmVlZHNfcGFuZWxfcmVwbGF5KQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gwqANCj4g
QEAgLTE0MDAsNyArMTQ1Miw4IEBAIHN0YXRpYyBib29sIGFscG1fY29uZmlnX3ZhbGlkKHN0cnVj
dCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQlyZXR1cm4gZmFsc2U7DQo+IMKgCX0NCj4g
wqANCj4gLQlpZiAoIXdha2VfbGluZXNfZml0X2ludG9fdmJsYW5rKGludGVsX2RwLCBjcnRjX3N0
YXRlLA0KPiBhdXhfbGVzcykpIHsNCj4gKwlpZiAoIXdha2VfbGluZXNfZml0X2ludG9fdmJsYW5r
KGludGVsX2RwLCBjcnRjX3N0YXRlLA0KPiBhdXhfbGVzcywNCj4gKwkJCQkJbmVlZHNfc2VsX3Vw
ZGF0ZSwNCj4gbmVlZHNfcGFuZWxfcmVwbGF5KSkgew0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiUFNSMi9QYW5lbCBSZXBsYXkgbm90IGVuYWJsZWQsIHRv
bw0KPiBzaG9ydCB2YmxhbmsgdGltZVxuIik7DQo+IMKgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0x
NDkyLDcgKzE1NDUsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1
Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoAl9DQo+
IMKgDQo+IC0JaWYgKCFhbHBtX2NvbmZpZ192YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZmFs
c2UpKQ0KPiArCWlmICghYWxwbV9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGZh
bHNlLCB0cnVlLA0KPiBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5KSkNCg0KVGhpcyBpcyBh
IGJpdCBtaXNsZWFkaW5nLiBTb21lb25lIG1pZ2h0IHRoaW5rIGludGVsX3BzcjJfY29uZmlnX3Zh
bGlkDQpjb3VsZCBiZSBjYWxsZWQgd2l0aCBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID09
IDEuIFJhdGhlciB1c2UNCmZhbHNlIGhlcmUuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiDCoAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9w
c3IyX3NlbF9mZXRjaCAmJg0KPiBAQCAtMTY0Myw3ICsxNjk2LDcgQEAgX3BhbmVsX3JlcGxheV9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJcmV0dXJu
IGZhbHNlOw0KPiDCoAl9DQo+IMKgDQo+IC0JaWYgKCFhbHBtX2NvbmZpZ192YWxpZChpbnRlbF9k
cCwgY3J0Y19zdGF0ZSwgdHJ1ZSkpDQo+ICsJaWYgKCFhbHBtX2NvbmZpZ192YWxpZChpbnRlbF9k
cCwgY3J0Y19zdGF0ZSwgdHJ1ZSwgZmFsc2UsDQo+IHRydWUpKQ0KPiDCoAkJcmV0dXJuIGZhbHNl
Ow0KPiDCoA0KPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gQEAgLTIzNzEsNDMgKzI0MjQsMTAgQEAgdm9p
ZA0KPiBpbnRlbF9wc3JfdHJpZ2dlcl9mcmFtZV9jaGFuZ2VfZXZlbnQoc3RydWN0IGludGVsX2Rz
YiAqZHNiLA0KPiDCoCAqLw0KPiDCoGludCBpbnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVu
Y3koY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IMKgew0K
PiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gdG9faW50ZWxfZGlzcGxheShj
cnRjX3N0YXRlKTsNCj4gLQ0KPiAtCWlmICghY3J0Y19zdGF0ZS0+aGFzX3BzcikNCj4gLQkJcmV0
dXJuIDA7DQo+IC0NCj4gLQkvKiBXYV8xNDAxNTQwMTU5NiAqLw0KPiAtCWlmIChpbnRlbF92cnJf
cG9zc2libGUoY3J0Y19zdGF0ZSkgJiYNCj4gSVNfRElTUExBWV9WRVIoZGlzcGxheSwgMTMsIDE0
KSkNCj4gLQkJcmV0dXJuIDE7DQo+IC0NCj4gLQkvKiBSZXN0IGlzIGZvciBTUkRfU1RBVFVTIG5l
ZWRlZCBvbiBMdW5hckxha2UgYW5kIG9ud2FyZHMgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPCAyMCkNCj4gLQkJcmV0dXJuIDA7DQo+IMKgDQo+IC0JLyoNCj4gLQkgKiBDb21tZW50
IG9uIFNSRF9TVEFUVVMgcmVnaXN0ZXIgaW4gQnNwZWMgZm9yIEx1bmFyTGFrZSBhbmQNCj4gb253
YXJkczoNCj4gLQkgKg0KPiAtCSAqIFRvIGRldGVybWluaXN0aWNhbGx5IGNhcHR1cmUgdGhlIHRy
YW5zaXRpb24gb2YgdGhlIHN0YXRlDQo+IG1hY2hpbmUNCj4gLQkgKiBnb2luZyBmcm9tIFNSRE9G
RkFDSyB0byBJRExFLCB0aGUgZGVsYXllZCBWLiBCbGFuayBzaG91bGQNCj4gYmUgYXQgbGVhc3QN
Cj4gLQkgKiBvbmUgbGluZSBhZnRlciB0aGUgbm9uLWRlbGF5ZWQgVi4gQmxhbmsuDQo+IC0JICoN
Cj4gLQkgKiBMZWdhY3kgVEc6IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgPiAwDQo+IC0JICog
VlJSIFRHOiBUUkFOU19WUlJfQ1RMWyBWUlIgR3VhcmRiYW5kIF0gPCAoVFJBTlNfVlJSX1ZNQVhb
DQo+IFZSUiBWbWF4IF0NCj4gLQkgKiAtIFRSQU5TX1ZUT1RBTFsgVmVydGljYWwgQWN0aXZlIF0p
DQo+IC0JICoNCj4gLQkgKiBTUkRfU1RBVFVTIGlzIHVzZWQgb25seSBieSBQU1IxIG9uIFBhbnRo
ZXJMYWtlLg0KPiAtCSAqIFNSRF9TVEFUVVMgaXMgdXNlZCBieSBQU1IxIGFuZCBQYW5lbCBSZXBs
YXkgRFAgb24NCj4gTHVuYXJMYWtlLg0KPiAtCSAqLw0KPiAtDQo+IC0JaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDMwICYmIChjcnRjX3N0YXRlLQ0KPiA+aGFzX3BhbmVsX3JlcGxheSB8fA0K
PiAtCQkJCQnCoMKgIGNydGNfc3RhdGUtDQo+ID5oYXNfc2VsX3VwZGF0ZSkpDQo+IC0JCXJldHVy
biAwOw0KPiAtCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzAgJiYgKGNydGNfc3Rh
dGUtDQo+ID5oYXNfc2VsX3VwZGF0ZSB8fA0KPiAtCQkJCQnCoMKgwqDCoMKgwqANCj4gaW50ZWxf
Y3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLA0KPiAtCQkJCQkJCQnCoMKgDQo+IElOVEVMX09VVFBV
VF9FRFApKSkNCj4gLQkJcmV0dXJuIDA7DQo+IC0JZWxzZQ0KPiAtCQlyZXR1cm4gMTsNCj4gKwly
ZXR1cm4gX2ludGVsX3Bzcl9taW5fc2V0X2NvbnRleHRfbGF0ZW5jeShjcnRjX3N0YXRlLA0KPiAr
CQkJCQkJwqAgY3J0Y19zdGF0ZS0NCj4gPmhhc19wYW5lbF9yZXBsYXksDQo+ICsJCQkJCQnCoCBj
cnRjX3N0YXRlLQ0KPiA+aGFzX3NlbF91cGRhdGUpOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMg
dTMyIG1hbl90cmtfY3RsX2VuYWJsZV9iaXRfZ2V0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KDQo=
