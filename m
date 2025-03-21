Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8F2A6BB89
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 14:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2AAF10E139;
	Fri, 21 Mar 2025 13:14:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8iqX5mm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5471410E135;
 Fri, 21 Mar 2025 13:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742562897; x=1774098897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sRAt6/DTA2gQlOvIIgWoD2FYL62JeeHPgxXpocuGH+s=;
 b=g8iqX5mmpzeZGFbb05lFlH6SpNArAlWLilAWWPCh41vtcMsPjOyMAYkg
 XGwNIb1b+2zHawDhLW4iA78VFiKsUWV9G97O9LKg7VZeVqama22JBnbIl
 S8yVWhyQTCXUIFRCZqOs82KxzH3I8VepmQcfdR+aq5w1RlAReR7zb+l1z
 JzGGNkHgfBz0Sebx1bXC93YvcoOfILNH4qJnAYCnMi4KKIHXA6nazS64Z
 5ZuSNL1zcsw07X6C9xhg3QSraARyyJu8VgjLXujZke6eK/lhXcIlmMJ2f
 V3vWmYx2Nw80iWnGGqOMAW1AovQ5Ugkk8AkHTNFCeR73AsbNX9I0j2Jad w==;
X-CSE-ConnectionGUID: rjbs5vzvQY6t5qvB0K7n0Q==
X-CSE-MsgGUID: g78iRnloQRm5FKzHms8p2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43710836"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43710836"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 06:14:57 -0700
X-CSE-ConnectionGUID: 1vMLY4WpRIO69dGU/1ixBQ==
X-CSE-MsgGUID: BCzVGelXRB+CFlDU+5iJ1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123102076"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 06:14:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Mar 2025 06:14:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 06:14:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 06:14:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EMnG85EjnuN2+Jzx85wmx7PEJCZVbO3JxuzgS6PBy3kzP3PLyn+uWCOLmzzJssnaLvXseyWGrEG3uLtu0RF2vrfOCYEzxU0Q8oOflb6S6sb1xD6DPQ9xu/f8Ju8yLdkYGB71khSCdAKlDEQEgDioENFzbmTW6nNKfbPK4beACcOAp6St7tLhH6eWE48cmrGGDKDT4QWX1faeM3E6BYNyFOzP6sDnKipyUhdzEq0FSkfZS2VCvt0PO8iB7yimrJ+THh3PDFFoQn9N4KKI7yU4wDzWKfebimaZ1HXMOV8CJ742MmFwz6ePJOfVQ3MKeuCcltWndMgLFXBTw2F6P8AQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sRAt6/DTA2gQlOvIIgWoD2FYL62JeeHPgxXpocuGH+s=;
 b=K+VlfXpKSeGGlSeoRYVNoLMrnsGW72H8SEBRFInlXILdG1W2RBrEzdjAX8PNmyaioISDRSleyFFEhbtRamIDbey91zqm4WcZWTCelUMi94gJj8Lc3zMjDo8xTP9hunuo2vH4mdgToQN+b0frq9xjpSGa6NfRRC00dZjFvTvinAM4nMT5l1/OU6C2zOwbf+lGmkoynGRIvyrD3mI4/8zYE7/uajqFk4w99QygZp2kMa106mAnNL/Dk626xEH+6hqJwoC2z5hffhPjGeZFkv+Ecelc6c278F/OiLIInQnt2J6RYgAWZJw2xpDxCQNjErbNA+rHDzZr27H2ih2l00jiIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5003.namprd11.prod.outlook.com (2603:10b6:806:11e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.36; Fri, 21 Mar 2025 13:14:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 13:14:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>, "B,
 Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective
 update is on in xe2lpd
Thread-Topic: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective
 update is on in xe2lpd
Thread-Index: AQHbmkYREYh1cjaYd0+uVX/GKbcgybN9keIA
Date: Fri, 21 Mar 2025 13:14:48 +0000
Message-ID: <f52fae5f3b52d5f6c2d55af9ea4f84d6ea00b3f3.camel@intel.com>
References: <20250321094529.197397-1-vinod.govindapillai@intel.com>
 <20250321094529.197397-2-vinod.govindapillai@intel.com>
In-Reply-To: <20250321094529.197397-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5003:EE_
x-ms-office365-filtering-correlation-id: 73b212dd-f9b4-4fa8-c655-08dd687a5b64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MWV1SFFveS9iUkhjamVRVktWMnFaaTh2dUw2ZUxXQW54WDBiY2o2MTdaS09x?=
 =?utf-8?B?dE5FbTI4cmdXLzc5VjFBUmF1Rko4SE9yUExQYVhiMUx3bEhCMFZNVHllcG5G?=
 =?utf-8?B?M1dNb2FsNDUyRWZpZGVpdU5NU2h6YUxYZWw4VzArSVV0QWhJVzFRSzlYSGp6?=
 =?utf-8?B?MmI0TzlMeTVxd2NWdXlKU284Ymx4dVNiNXdUNTlDTENRdUVqMmN1VHBHY2du?=
 =?utf-8?B?NzUxUy9SdmVoaS94dXFxYXdHKzNhTVFjcStaUXlxWVQ3ZHZTOEJwdXRiRDR6?=
 =?utf-8?B?NGZYSE9MeTlNNk1UTG1TQ2E3bmY4S2tVVThVMUM2R1B1SHdTQjdEckd5bTh5?=
 =?utf-8?B?bEpkU2k5Wmw3UjYyOEFIaXBrenVtTEprcW9Lc3ZEblNIcmRlbGlrUlZLVld0?=
 =?utf-8?B?RncvZTllR2k3SVQvK09sVmFnbWxGN1N3UVJYbzVIay9vZ0ZQUWVWeFhqVWtx?=
 =?utf-8?B?amZFd3k3MGRXdTBZYnpEdkgzRVJIWnlyczc2V3l1bHdqK3NkQmpOSXNzQy85?=
 =?utf-8?B?NS92bGRwVmdLb0h4WjFYUU4rWGNtVmt0eGthV1BOc3AvZnMrREVlai81dlNB?=
 =?utf-8?B?dEhIeG5qS0RiaURZalBnTlhFZnBMQVh0c3JVSzFwYkNIb2RES2x2WXRFUW1z?=
 =?utf-8?B?OTB2Yisxa2NuSE1Dc2FpY0ZNTVd6MDZ1ODREVWtyeU1zWE5pYWt2OG05Vm1T?=
 =?utf-8?B?ZGNNbG5vQlI4NWxIWTlsSDBsUlFQZjh4enZLQm9sNjVBREhCOUFQQlh0RDhF?=
 =?utf-8?B?UkZuaFU4STIyK3djUVNON1pSRzcwQ0ZEOUJ0dk1RRUZnZy9SUjhFdnViTWlv?=
 =?utf-8?B?UHFtTWZrNmRlMHdsQnVoTkg2b0JXN3FaVWg2SXh0U2dIcUh1RFcwWk8yNmRD?=
 =?utf-8?B?TzZxdFg3ejBXNnhxcjRTZVJiQm52NHJ5ckU2VTZMYVgzZ0MwU3FGQ3d2NG5P?=
 =?utf-8?B?RDVJQVRFRU5kMi9OTnlaV1hmM2xsVDhaY21JWitXbmZkWElxZ3ZrRVVGYnp3?=
 =?utf-8?B?WTVHZStoenY4RjFsU05UWWVNeThmVEpXTUxmUnA5dnBIdGxjM2dyem5WWmZa?=
 =?utf-8?B?cEJrMTlKaGpDekVRL0c0NlI1ck5HanUreG9jY0FEUXRQeSs4NjJpMUgzQkxO?=
 =?utf-8?B?enllekpvY29KaU5BUmJiZDNBS2JYcGo5a2hVaW1FaUVmSjU0d3pwTXpHd1Jt?=
 =?utf-8?B?WTJaTXFVWkhtN3pjUXJXa0Y3SG1lVWM0eDJ4RDdsOTREdVJ2UndBa2hRT3Rr?=
 =?utf-8?B?QzNRWGNkY01EYmdLSkZXRVpyWnVJSURsSThUMGJwQXNheXFoUVFQL1RHaUhr?=
 =?utf-8?B?TkYxdTA3S09QdU1DY01pVWs1S1ZNNEpaRmZ1bmR4NmNUckU3SStmWlpWNHpX?=
 =?utf-8?B?bHF5dnc3RTE3NGVCdzBuMUlEc21TQzBNY1R2amtpQlQ4RFhSRm4xemVkSVp6?=
 =?utf-8?B?M1FWd1lPRzFuY2tNdUpSYlNVaXMyWWN0WmJvQ1IycWJZQjE1NlRHNkM2Z1Zv?=
 =?utf-8?B?NlFZUUZWTlhmM20rZWl5MjlwNTBzcmplVTlTSGJLc3FkelBQZWs5OUdpM0NW?=
 =?utf-8?B?OHNiZTJZalhPMkQvNUplaVBPVGZqTXp5UmFEUGkvTmdmYzdZSlpwMWQ2T25r?=
 =?utf-8?B?Sy84b0FPNTJYUkZ3bS96QTV5OVhaVlVweTJDUEEvMHU4UTdlYWJuNHlKZ1Zi?=
 =?utf-8?B?ekJyYjNQK20yQmZiYW9YTHdZVS9uc3ZjSnd4L0l6bkxiWUl1RkZhd3JKbnN2?=
 =?utf-8?B?Qml3VUZEaVB4UUxNZTRKRTNSS1FiSVkvdzdIU1l1SkxUam5MWTN2T3AweWxL?=
 =?utf-8?B?ZERacFVkb0xQY2RQSWRQRlpKcTc2ejc3SjRLSEJSVTJWYzMxRXdQQlhId2VL?=
 =?utf-8?B?Mzc1MmZ1NlgwR2RJTnlBekhWWWFGS0RWcGFwaUFtNVVxcnhKUVlSS1Z2WkhS?=
 =?utf-8?Q?k7klFbq7pLCLx+EuKqcFhv5/FT9nWn1N?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkRodVMvQTd3T0I1b0Rtdlp2VXE1eU9YaVVsS0RjNDFTSU1tcWdkdjQxWnRE?=
 =?utf-8?B?dWlRdUY1SE52bW1QM2dwd1VhdjFhc3U3aVdvS2d6THp2ZG11WGd4SURVcVVQ?=
 =?utf-8?B?VWgyOGpLc2VpR3VGZGkwWWRlZ0NQNEh2NXFDQS8rT3dIdzJUa0t6UUgzcHk2?=
 =?utf-8?B?YnZoVUpwOW9BYkQyTVNITlRFQjZoSlNiakRGRHMvM0QxVFhpTHpFKzM1Yzli?=
 =?utf-8?B?Q0t5eUNNaFFQWWxyQlpKNXExY05PVERKUGtZejdsdG1Dem5Vc2JqZlFNUURt?=
 =?utf-8?B?VDliN3EvNEN6SU9PMCtvekh1V1hyTklBNEkwVDNxS2FOdTZiU1AxdTZwU08v?=
 =?utf-8?B?K1NKcjlETzcvVklGWC9RTkd0NmVKTDFjMFhOeUl2ZGxKWG5lQ21vSFg4d3dH?=
 =?utf-8?B?anN3ZFJkbEtmYVkxR08yQ1VUTGRHR0R3NzIrbVdocDduNjErb3R0R2JFb0Z0?=
 =?utf-8?B?R0dtQjFMOFVxTE5CTUp5NEZDSU9OeDhuTHhSTEt1RjZhRlJHNFNsMUV3Qkc4?=
 =?utf-8?B?UTRsVis4RGVGUWJKeGhpUXdkTnAvVnQ5dXI5d1YrWThYRkxrdER6YVNUZ2or?=
 =?utf-8?B?MHZSZ1Vqa21IRXFCaWpTeW5QSW5WUUV2WlNGaHdtNlc3SE00N216ay9zd2Vj?=
 =?utf-8?B?QzNHazZvWDVWMGNqWloyYlpBYW01UlNZRlhXQWIyakh1L2NnaTRpb053S2hN?=
 =?utf-8?B?UU1UM0xSWGRGUmJ0Y2pHbEMzTkVtdldLcjNMa0lMdm1GdVgyWm9JSlRvdXdR?=
 =?utf-8?B?K0k4Q0w3VFhsV2ZNQy9ZQjgwOXFHVDBha2U5ZFVYT2hxTElwWEc2Q3pFVkFE?=
 =?utf-8?B?UHFaNFoxQ0JCZWJURkV4aVd6RHEyVWR0dEFha0FNWHdjMkxKQjBqUnR3Um41?=
 =?utf-8?B?eEYrR0UvRGpyYi9QZSt1dmQyVFp3Vk9CcjJaWlBoMjNsZnZWZGVBTVg0Ukhm?=
 =?utf-8?B?N3ZJcHpJZGhJeDBHRjMrYUQ2QWVuYTB6SWZtUGlzeHRRNUhXVjd5S1U5aXFE?=
 =?utf-8?B?NFJpQ2RWd2g5TlI5QXBHTk5DUVgyWS80M0xwZUt3REpvODZwM3FNaUJQTFhz?=
 =?utf-8?B?dXdTVXZoUy9lQVlxc1FweGhwMEFCZGw2U0s1aXdvemt0Q0FUYTlGSGRrUURX?=
 =?utf-8?B?MkxBTVVpVmpBRTEzTEJRcDVDTFdYMlR0MG1EMEw3REMzOGdManhjYVd0NWhw?=
 =?utf-8?B?VDJJTUhJQkZwcEYvWDczN3ZIVEtDUXdxUXFweU10Wmw5T0FESXpCZGhka2pT?=
 =?utf-8?B?eVVlYW9zTUdrd3VvQlJCck1pTFpiTUZDaUNDLzJWU0M2alhmemo0ekhCSDhh?=
 =?utf-8?B?OUxCTUdwWDcrT3AwNUFIWC9BZ1ZHRzRwWFZwMTNOVDRDSEh4NHAzRzVzZTdB?=
 =?utf-8?B?bFlnVHlSS0RpSTVtd1RzbHFyV3o0ZHZ4MlBFMGxtczNtdC9NS1BqSncrTnNT?=
 =?utf-8?B?OXJzMFFPVUxPUXUzaVV0NDdrZkFaL0Q0djBtZjkzVlVTMFZDdDlGUURpdWEv?=
 =?utf-8?B?bTM0S1l6N1k0UWZXUUxWTXNkK05SNWhkZXhIMUlQNkZmZG5uZ05HTUdEWHZR?=
 =?utf-8?B?eitVR05RU1l3Z29ucHNZSkNyYmtDTWZ5b1NDbjF4cFg2allUeUtvVS9Mbjdz?=
 =?utf-8?B?Sy9oMFgxaENsdTJ3Q1djUjdDaFhzZnV6Y1F1Rm5ubVJQNGJUSlVWbWFDVlZ1?=
 =?utf-8?B?QUNlZlgxWXBYaHFyZDhXc1A3QTRrK0dKNWVmWktMWUJORHVGc3lCWlJSZ2VS?=
 =?utf-8?B?MWJtZSt5SVE2RVBSOUt1TUFRNTB6ODNLNG1MQ0FSbEdZOTNTT3lwR3hzejFH?=
 =?utf-8?B?ZTRGRTlTZ0RLbk0vMGlPS3RGZXN4UWFqMHNKWFZDblhjdWF0dytzanlVNWpQ?=
 =?utf-8?B?SXBUREJzTE9oV1FOMEVNUlVlNHhYUDRJRGptVjhsTk83eGI3OGwwS2dKVUpU?=
 =?utf-8?B?eUxRN2tyRGF2azJhMUxnM1FncTF3QTh1ZUhKdkJIeEZPN1BVMFN0dG9TTHNK?=
 =?utf-8?B?bUllZ2ErTjNBd0hrOHFLVUdac0tBS1Z3N3ZUWmEreERtakw4MDlOclpiWjRp?=
 =?utf-8?B?WncrNDl0WkhYVXQxaDZwekVVdDIySzhJZUhMQ1ZCd21kRTdBSUhiSDdPTlRS?=
 =?utf-8?B?SEJvMGlNQTEydGtxRm8wdll6bVFkM2lnL2o3M3BHaVlXaVpnSFNjTnVzbUpE?=
 =?utf-8?B?aXU1bjVQMS9KVWdadk9xTHk2cVlvZFpxRHYzaWlUS08zTGNMMnM2amVmaUE4?=
 =?utf-8?B?SW53NEJWL3NpVjVlU09IbCtIVDB3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <623191ECFB30A945B8632290752AFB3E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73b212dd-f9b4-4fa8-c655-08dd687a5b64
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 13:14:48.4495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1XAD4MRyhbD3fIi9Gn9gbcomrhhEoIM/dTvwLzlU9vV8/jv/q5ixAyX/VGFhmEtVpZsf0WfRqztmGwKjSe87EwFVV8Dkh6Vv9TpMMbFTk1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5003
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

T24gRnJpLCAyMDI1LTAzLTIxIGF0IDExOjQ1ICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBGQkMgd2FzIGRpc2FibGVkIGluIGNhc2UgUFNSMiBzZWxlY3RpdmUgdXBkYXRlIGlu
IGRpc3BsYXkgMTIgdG8NCj4gMTQgYXMgcGFydCBvZiBhIHdhLiBGcm9tIHhlMmxwZCBvbndhcmRz
IHRoZXJlIGlzIGEgbG9naWMgdG8gYmUNCj4gaW1wbGVtZW50ZWQgdG8gZGVjaWRlIGJldHdlZW4g
RkJDIGFuZCBzZWxlY3RpdmUgdXBkYXRlLiBVbnRpbA0KPiB0aGF0IGxvZ2ljIGlzIGltcGxlbWVu
dGVkIGtlZXAgRkJDIGRpc2FibGVkIGluIGNhc2Ugc2VsZWN0aXZlDQo+IHVwZGF0ZSBpcyBlbmFi
bGVkLg0KPiANCj4gdjE6IHVwZGF0ZWQgcGF0Y2ggZGVzY3JpcHRpb24gYW5kIHNvbWUgZXhwbGFu
YXRpb24gYW5kIHRvZG8NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkg
PHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDE0ICsrKysrKysrLS0tLS0tDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBiNjk3ODEz
NWU4YWQuLjkyYjAwZGE0YzBhYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IEBAIC0xNDY0LDEzICsxNDY0LDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZmJjX2NoZWNrX3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDC
oAkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQN
Cj4gwqAJICogQnNwZWM6IDUwNDIyIEhTRDogMTQwMTAyNjAwMDINCj4gwqAJICoNCj4gLQkgKiBJ
biBYZTMsIFBTUjIgc2VsZWN0aXZlIGZldGNoIGFuZCBGQkMgZGlydHkgcmVjdCBmZWF0dXJlDQo+
IGNhbm5vdA0KPiAtCSAqIGNvZXhpc3QuIFNvIGlmIFBTUjIgc2VsZWN0aXZlIGZldGNoIGlzIHN1
cHBvcnRlZCB0aGVuDQo+IG1hcmsgdGhhdA0KPiAtCSAqIEZCQyBpcyBub3Qgc3VwcG9ydGVkLg0K
PiAtCSAqIFRPRE86IE5lZWQgYSBsb2dpYyB0byBkZWNpZGUgYmV0d2VlbiBQU1IyIGFuZCBGQkMg
RGlydHkNCj4gcmVjdA0KPiArCSAqIFRPRE86IEltcGxlbWVudCBhIGxvZ2ljIHRvIHNlbGVjdCBi
ZXR3ZWVuIFBTUjIgc2VsZWN0aXZlDQo+IGZldGNoIGFuZA0KPiArCSAqIEZCQyBiYXNlZCBvbiBC
c3BlYzogNjg4ODEgaW4geGUybHBkIG9ud2FyZHMuDQo+ICsJICoNCj4gKwkgKiBBcyB3ZSBzdGls
bCBzZWUgc29tZSBzdHJhbmdlIHVuZGVycnVucyBpbiB0aG9zZSBwbGF0Zm9ybXMNCj4gd2hpbGUN
Cj4gKwkgKiBkaXNhYmxpbmcgUFNSMiwga2VlcCBGQkMgZGlzYWJsZWQgaW4gY2FzZSBvZiBzZWxl
Y3RpdmUNCj4gdXBkYXRlIGlzIG9uDQo+ICsJICogdW50aWwgdGhlIHNlbGVjdGlvbiBsb2dpYyBp
cyBpbXBsZW1lbnRlZC4NCj4gwqAJICovDQo+IC0JaWYgKChJU19ESVNQTEFZX1ZFUihkaXNwbGF5
LCAxMiwgMTQpIHx8DQo+IEhBU19GQkNfRElSVFlfUkVDVChkaXNwbGF5KSkgJiYNCj4gLQnCoMKg
wqAgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgJiYgIWNydGNfc3RhdGUtDQo+ID5oYXNfcGFu
ZWxfcmVwbGF5KSB7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEyICYmIGNydGNf
c3RhdGUtPmhhc19zZWxfdXBkYXRlDQo+ICYmDQo+ICsJwqDCoMKgICFjcnRjX3N0YXRlLT5oYXNf
cGFuZWxfcmVwbGF5KSB7DQo+IMKgCQlwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1Iy
IGVuYWJsZWQiOw0KPiDCoAkJcmV0dXJuIDA7DQo+IMKgCX0NCg0K
