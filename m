Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6208C8B55EF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 13:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D439110E80D;
	Mon, 29 Apr 2024 11:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T5fTEhIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAFC310E80D
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 11:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714388581; x=1745924581;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b0YLwUZ2KgEFHfZEnosUw/RMEY7u//m+rm6640Y/qfY=;
 b=T5fTEhIc7JVQ+2dEaDlHWmnrr3YWyvWpFdBF8/YBXIzX64PIaYacDsAD
 PhNP5XYYYNwU4qh+fybmdwMJZ8xyEs4szpo9MY4M86XAq7gmIWz1EykDm
 KNeaWfTYHi31kyG8EbTd/JcEOEKpTsOoYls3Q4xY90xvsRO86PBt/7QYS
 +zzaxiHTwB7ttFgAVqZiKrPC8Vh6mcUqdfQMkG6l+q41zdpwSpJunsOpv
 yS+hHaq6OfdAt8MHE9Uw12yKyqnOryaoh7BhJNDzeGyHOwpVkgBZW7+EO
 b9wEVXFS0K3EbNMvsyUPeNS3ePLfCmqcQJKD62L4vo+sWWyfD6GHIPUkh g==;
X-CSE-ConnectionGUID: GUdjxf2GQda1KNL45F7eqw==
X-CSE-MsgGUID: 0qKFL3VHQquKILOYKzvPjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="12977256"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="12977256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 04:03:01 -0700
X-CSE-ConnectionGUID: jzsTDvO+Q4iyrr7Vk7DEeA==
X-CSE-MsgGUID: hrAI39oBRByOh6YPwBu+uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="30879668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 04:03:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:03:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 04:03:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 04:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlQJbNHS3xAguhz36VdPp+gDmnbeycODXndiKm9RmWfPjcI4bf2v2vfFUxiXTP1y0fczUxsT0anhYz0RwwPZUFOIeO2MTxHMApSxk3W7bfIKkQ/ni9CIWnRgXOzSa9VS19aXWeM2OewKiDpdVot2S5PSNp28S1Crkty0FWuilg5Qn/oBZpWHME7mX5n+z1mPquE4kCn2wEOIDawarrMwgZc9HrZb5kA0hBpERzZgC9QiKWDBhlI0BJYviT7K3SozF4ZHtNzGISgz1BsDzna2S2ScVEbJkYQVrOxgWKvZHVnTTlB4er8iRQP1nsbX4ppaa73AypKbaHhD5JMo0DzmNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0YLwUZ2KgEFHfZEnosUw/RMEY7u//m+rm6640Y/qfY=;
 b=mVbHq4ah+2XJhmujEDA9wAVjrUJ28KssDPXVfsYAaSCyT0l3JBKYm1k5x1Z6oS1TThzbhXAzvVNrgqxs5WsX7cRkYhzGyWDEQCv4clYlhuJfrQOXs/o3f/4X6/aeruS5C6CpJgovMuFVrDmvxo4xzQ/fNMMNFuyY7doZ5gRO20+pXIZeYCPqc9aH1AO+nyULAJv4Q4zb3xrS6WBadKTG7xASkYfjV9ah4kbcEOsDPUHqbPJH6i/lnNpD+fRiD4WZra5jpJThYYlW9RooFXVGyXCs8umlJmnpp4pIWBeTlfW6LFl8nO5WPtZOAuUeIMjZZKdIU0qqB84VOTnMICE67Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 11:02:58 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 11:02:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v7 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaklLS6AOHT6NrOEeP6fOj2o8397F/Ipag
Date: Mon, 29 Apr 2024 11:02:57 +0000
Message-ID: <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
 <20240419121141.2665945-7-jouni.hogander@intel.com>
In-Reply-To: <20240419121141.2665945-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6992:EE_
x-ms-office365-filtering-correlation-id: 7c285d7a-7b51-46fc-5ba7-08dc683beda2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WUkwVXRBcHVrdmlRS1JjeERsd2h4VlFwTDJEQ2hRRnlqS1prL3FWTHNMb1dC?=
 =?utf-8?B?bHY0dWFpKytOSGVUc3E4Y01OU0E2cWpVeTlGV3RKL3FyNnFvSklnSEhiR2tp?=
 =?utf-8?B?cVl0OFFhdXlIbTBGem1ZK1FFRHJycHE0c3ExYlpjUjl2bUpvRWt0Y2x4eThY?=
 =?utf-8?B?c0ZrempCR3hwS1plRXBCTGJCL1ZjWUo4ZFlON1lUdCtjRW5KZUpXWWJDTjB6?=
 =?utf-8?B?a2Y3aDhZbUlrckd6NmZnMUNpbkhqallFcklTRnRYS2MyZ0xXeU52V1Zsaml4?=
 =?utf-8?B?ckxUMWwzbE9qNzBvTWNKaDRGZ3ZqR2d3SzlxTzMzTXNvditNcFhNbk5iV0Fm?=
 =?utf-8?B?YnN3a2NOTGFNNE1kYThUb0hQOUNmREY2Q1M5ek5XMUtlcStMSTNqMVhaM1NM?=
 =?utf-8?B?cER6OEpCWlJFbVpCczNUWEdyNlBRZjhFU3pyU0M3eGErOERESDBjTW8zanEr?=
 =?utf-8?B?SzFIMndRbDRuUlJ2c2JzYkkvMEdXZ012M0dwaFVtRHMyOE1KcFRhVWFPd2V4?=
 =?utf-8?B?ZzYvaElFb1lRMzY3Z2MvOC9KUGdWdnpVVTJRMVJVLysrSGE2NWdjYnpRS0N3?=
 =?utf-8?B?UVVJQktaK2FIbytwYm56Um9MK1ozNXJQbit6SkkyN2lJaHVWWFhtODV3aGU2?=
 =?utf-8?B?R1phZzF2aVNqN21tVHd5MFAvK1FmMDM2ZXF4VzM0WmVnUWJoU1lGL1NoeHlj?=
 =?utf-8?B?bGtCb3libFpDYnA2bHVDWXQ0MzNvSDBCY0loQmtwTlgwK3B5UW0reHJTMDdB?=
 =?utf-8?B?bFU4V3FKYlk4dzh4OGpSdU0xTTl5eUJNRzZ0MHR2bWkvYWJ2Z29NcE1qWFA4?=
 =?utf-8?B?cS9hMUxzMXd2NVhFcmNmMVNyREROZTdJalF2RHJ2SnRGZjVzdWt1dXFNSWxU?=
 =?utf-8?B?RlR4bkovZnlOaUwxSkREWFM5d2FiWDYrODNKcFpzRzgwbDlkQUlnV2pXcDI3?=
 =?utf-8?B?UHRRajV0UGFqYXV0c0NQcGJOQjVpczZkRnVwQzZYcG9wTmJtRkpPYk5HYkhy?=
 =?utf-8?B?bTlXTUF0OGUwVVE3WU5pQ2kxdDgzcHhoREtxaDVFNTdHMVYyU1NLdy9WNE9X?=
 =?utf-8?B?S2ZTU0ZabUxPVmpjTEx4L0xWREFtQzgweEZSL1lXUm5uY2pMeTUvQ2JVck56?=
 =?utf-8?B?OC9Ca3dkSGI0U1YzV1o0OWNZa0I1MGxHVll3YUc1Q0dQd2ZGbTBkVVJpaDlk?=
 =?utf-8?B?UDV2dmVjOHJyZmw1Z29hK3dMMkRiQXlXZ1hCMkZSR2Frb0tnQ0p3MExiUUVS?=
 =?utf-8?B?R1NBVXVkd1dYTWF1Z1IxSGF4eWFOcFVKSXBlQ0I0ZDBuRjdxU3kxaUxsL051?=
 =?utf-8?B?Z0ExWlBKcWNlT0o5cjFwcjVteXA2R1kzWEdrZmJMSHNoZ0xrcEh2RE13RGFF?=
 =?utf-8?B?Z3JWUEdWOVc0ZUNhblBkZGFJckwyR2djanVxY1JDOHlFOCtieVQ2OFgxTmFD?=
 =?utf-8?B?d2lJQWt3ZUtpTE11SG04NHU0d0J6ZHR0TDhtY04xeEZkVk8wa0poNU5yYTlw?=
 =?utf-8?B?YVptdVZOaGVOQ09UMjFQNVRreXJRMXRsUFhqMElsME5NZ3Ayd2dMOHhHS3p1?=
 =?utf-8?B?NThpamVUaUczRGJUWHFmY2xiTFROR3F5clFUMnJIU09sNnBYSXlWYmw1a0Vv?=
 =?utf-8?B?MkhWM256R0t2czdycldIN0k0bzZJaythR0JUMElUcHVQRVExaEkvaXlKNWFz?=
 =?utf-8?B?YXpJYVczMmMvR25ac2FmU1lDUkhoZzVFb2hvOVVodjJnNVg4QUZYRDRmMXN4?=
 =?utf-8?Q?pJbHKsOz0C/0LKlt/1Q3ic//PzBoW8ttjphUI5t?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUorVVZJbnNTb1hpeEhxZTV6REVGYzlWTnpKZ0I4R1UyaDhaNVZVVUZjNnBD?=
 =?utf-8?B?emdFWkNwNEFqY2pyWC94UEo3VFkrRlBlMTY1bjFtM1BHcDR1OFlJSWtPQXhr?=
 =?utf-8?B?QjRFa2xpeWxWOXhhUHloOEVsQk12VlNTRXhSYUU2OTltODVrUERKOUJXaXJ5?=
 =?utf-8?B?SHlmWks3SjRCUkhIN3pOdC9uZFF5RENnYUUvRkNPUU81T1ZkU3EvKzVaRHp2?=
 =?utf-8?B?ZDNJMk5Ua3BUY0VuaTVOWFJCQ2R6U3hRNGluYmhRckRVRk1LQU1hWUdJdHFW?=
 =?utf-8?B?U0hRRFVWZUR1YWFNS3BQNTZybUVPRUYxNFg2VHM5Yi9STkV6d0c2YjhhdDNK?=
 =?utf-8?B?QXZKNlVmQ2ZneFVaYUhPbUY0eFRtU0xFM051MUhCZFRtN3FVR0VaMHo2QXRv?=
 =?utf-8?B?YUlrNFR5dU1rdnZOak9Xby8xWk05VXRyMVQ2cWh6dk1uajA1VWc0MmorbVJZ?=
 =?utf-8?B?SzgwRXhjZWgvMVk2R0QzZkZ1NzVveFJWc2l2THRvU2pRRTB4VzlwY2I0cHFU?=
 =?utf-8?B?ZEprZ3NrbEk2d2dUZGRXNVQxT1NVRHJGdnBQaEIvcEQ0cWNWQWRha0lJbjRi?=
 =?utf-8?B?d1JJczRtLzc1NnBWc3dRazJ5Vzc0ckMzcnVIeTRGWEhxMURqcmtEUXlSdzdF?=
 =?utf-8?B?NkJHSEFsWHJDM1ptaDNyYzFUN2IwVXhvZ2w5bjl3VTJhUUYzOEhKc3JuUGlp?=
 =?utf-8?B?QS9WN1RMWEJlc0cwS0xqMTA5SXNGL1FaYVNOZzVWdjRPOVBsekRPQk4wWFpB?=
 =?utf-8?B?amxHTnIrV2Yvc3lNeDFJMXlPT29LZmhVOTNkcFZRR1VPQzRYa2E2Q2NKM3Yw?=
 =?utf-8?B?bmdlOFI1THZKUEE1d05Mc25pdXdjdEVydU4vaUZRM01LWkUrZWorSGF0aHBt?=
 =?utf-8?B?TWFNVk02c3VZemZqZVR1akYvdFlqcWttcDdMMXRHcmZyek1KeW15Ykh6LzY0?=
 =?utf-8?B?Q3R2cmlsUHBiV2NUdE9UUG8xNDNiSVR0WWpydG9rVmNUaUtDL1RyQWYvS3U4?=
 =?utf-8?B?T25PMk5yUEpqVlI4bmFSMC9ad0p6Nm1kMGRTenljaktCTk1sRU5XU0wwTHh3?=
 =?utf-8?B?VFVvT2dNbmZIUnhYZ3hlRkphTmVlSSsrTFJHNFhGWitxM0JiZU0yMWVoR0dK?=
 =?utf-8?B?MGw0MEI0RW1jekFVL200L3g4Skt3S0hML01iWnJMdTNadk9mNW0rblJ5a09M?=
 =?utf-8?B?L1NpUzF0Z3VMdGYzSlc3OU1oamJ0Z3BZN1ROUnJGdnFDT2NvTkpTT1ZUbWtz?=
 =?utf-8?B?Wk5kay9jNlJyR0J5bndqYk9MYnQ1cWhsYjN2aEZQNnNUQ3ZFNHl1WWJUbXVJ?=
 =?utf-8?B?N1liZjhkZU5TQTBaSGJFNDdMYnBoWW9sVHpJQWo5V0RHZVhDR2lmNk1hZlRH?=
 =?utf-8?B?T1R6TVErTFQ4cVJ0d01tdS8yUXRLckhJMHJzM20rZzhqRktoUGVPRkVtc05M?=
 =?utf-8?B?V01lS1NnMExqTE54YnR3ejh3aEtQcHhKRXhQMGVCa1hOcFJzbEQ2UjdjeGtZ?=
 =?utf-8?B?LzkxSjZzd2ZKcDByZ1YwbjNUK2U4dUtQb2c0VXB3RnlDUkhqYUxDaW8yaFVy?=
 =?utf-8?B?RllaVGUyWTJ6SjFVMEF0MnEyZyt2aXlma201anhnWFZybXNiMG4vczRlSGtR?=
 =?utf-8?B?NHZ5Q01CaS9aZWl2WUx2TmkyR1NqaEcya1ZRejNYZy9hU0RrSkJIbEM0SlY1?=
 =?utf-8?B?VGhxSXhJZnNBTk1vUG1TVXNlUnBaOHdSRXpydmxKTGdOU0UxbGRTc1c0aEZt?=
 =?utf-8?B?cG1tc0R6SDI4enExL0dPQTlxeitGdDl1dVlJaVJKSDl3ZWFCS1FGS1NmV0Zn?=
 =?utf-8?B?eUFsMkY2T2NTQ3NBTFN0TlBrZjhwZDRmWnN0SjVla0I3TUxwaUREMHREMlM1?=
 =?utf-8?B?dno3UmM5NUpOR3g2Y1BnSXZrcENIQnN5QnZEWk1pUUgxZGNTdkVENk5TZFFQ?=
 =?utf-8?B?SGxJMWlIMTU3Z3lZL1g5ZkFZMEtVQ25SSjB5eXNhV1p5OVpxTm5zL3VhZngy?=
 =?utf-8?B?RzRsQmVlM1pISHNGb1lOMVp0Rzd5MU4ySVdjaDJUWVQvUFhyR2MzSC9Sczhw?=
 =?utf-8?B?bURBRDZLeWNSQzFKWWZ2QmJEaGFkV21ERzNwR2gwMUFxK3Z6cUZsTzhDL0lR?=
 =?utf-8?Q?HykEMw0mEISv+0sUpB7S038Bu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c285d7a-7b51-46fc-5ba7-08dc683beda2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 11:02:57.8949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2upRaJDmNSkJIcVHKpq0lYmpiNHr/YJjTXcEwL2gzAQFhpjFc+ecLKt7xIxqkOC84bTwIepJYaB4x4SfRSsr1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMTksIDIw
MjQgNTo0MiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
TWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5p
DQo+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NyAwNi8x
MV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5DQo+IHRv
IHN1cHBvcnQgcGFuZWwgcmVwbGF5DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfZHBfZ2V0X3N1X2dy
YW51bGFyaXR5IGRvZXNuJ3Qgc3VwcG9ydCBwYW5lbCByZXBsYXkuDQo+IFRoaXMgZml4IG1vZGlm
aWVzIGl0IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5IGFzIHdlbGwuDQo+IA0KPiB2MjogcmVseSBv
biBQU1IgZGVmaW5pdGlvbnMgb24gY29tbW9uIGJpdHMNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYyICsrKysrKysrKysrKysrKysr
KysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
aW5kZXggYjk0ZjhlMzNlZDFmLi4yOTQwMGZhYzEzYzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDY2LDYgKzQ2Niw0MCBAQCBzdGF0aWMg
dTggaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19sYXRlbmN5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ICAJcmV0dXJuIHZhbDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdTggaW50ZWxfZHBf
Z2V0X3N1X2NhcGFiaWxpdHkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0KPiArCXU4IHN1
X2NhcGFiaWxpdHk7DQo+ICsNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxh
eV9zdV9zdXBwb3J0KQ0KDQpXaGlsZSByZWxvb2tpbmcgZm91bmQgdGhhdCBnb29kIHRvIGFkZCBh
IGNoZWNrIGZvciBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQg
KDZ0aCBiaXQgb2YgZHBjZCAweGIxKS4gV2hhdCBpZiBpdCBpcyB6ZXJvIG1lYW5zIGdyYW51bGFy
aXR5IG5vdCBuZWVkZWQgYnV0IHdpbGwgY29udGludWUgdG8gdXNlIHgtZ3JhbnVsYXJpdHkgYW5k
IHktZ3JhbnVsYXJpdHkuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gKwkJZHJtX2RwX2RwY2Rf
cmVhZCgmaW50ZWxfZHAtPmF1eCwNCj4gKwkJCQkgRFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JB
TlVMQVJJVFksDQo+ICsJCQkJICZzdV9jYXBhYmlsaXR5LCAxKTsNCj4gKwllbHNlDQo+ICsJCXN1
X2NhcGFiaWxpdHkgPSBpbnRlbF9kcC0+cHNyX2RwY2RbMV07DQo+ICsNCj4gKwlyZXR1cm4gc3Vf
Y2FwYWJpbGl0eTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHVuc2lnbmVkIGludA0KPiAraW50ZWxf
ZHBfZ2V0X3N1X3hfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
IHsNCj4gKwlyZXR1cm4gaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0
ID8NCj4gKwkJRFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JBTlVMQVJJVFkgOg0KPiArCQlEUF9Q
U1IyX1NVX1hfR1JBTlVMQVJJVFk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQN
Cj4gK2ludGVsX2RwX2dldF9zdV95X2dyYW51bGFyaXR5X29mZnNldChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKSB7DQo+ICsJcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlf
c3Vfc3VwcG9ydCA/DQo+ICsJCURQX1BBTkVMX1BBTkVMX1JFUExBWV9ZX0dSQU5VTEFSSVRZIDoN
Cj4gKwkJRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZOw0KPiArfQ0KPiArDQo+ICsvKg0KPiArICog
Tm90ZTogQml0cyByZWxhdGVkIHRvIGdyYW51bGFyaXR5IGFyZSBzYW1lIGluIHBhbmVsIHJlcGxh
eSBhbmQgcHNyDQo+ICsgKiByZWdpc3RlcnMuIFJlbHkgb24gUFNSIGRlZmluaXRpb25zIG9uIHRo
ZXNlICJjb21tb24iIGJpdHMuDQo+ICsgKi8NCj4gIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9z
dV9ncmFudWxhcml0eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBAIC00NzMsMTgN
Cj4gKzUwNywyOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAl1MTYgdzsNCj4gIAl1OCB5Ow0KPiANCj4g
LQkvKiBJZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRz
IHNldCBsZWdhY3kgb25lcw0KPiAqLw0KPiAtCWlmICghKGludGVsX2RwLT5wc3JfZHBjZFsxXSAm
DQo+IERQX1BTUjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQpKSB7DQo+ICsJLyoNCj4gKwkgKiBU
T0RPOiBEbyB3ZSBuZWVkIHRvIHRha2UgaW50byBhY2NvdW50IHBhbmVsIHN1cHBvcnRpbmcgYm90
aCBQU1INCj4gYW5kDQo+ICsJICogUGFuZWwgcmVwbGF5Pw0KPiArCSAqLw0KPiArDQo+ICsJLyoN
Cj4gKwkgKiBJZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1l
bnRzIHNldCBsZWdhY3kNCj4gKwkgKiBvbmVzLg0KPiArCSAqLw0KPiArCWlmICghKGludGVsX2Rw
X2dldF9zdV9jYXBhYmlsaXR5KGludGVsX2RwKSAmDQo+ICsJICAgICAgRFBfUFNSMl9TVV9HUkFO
VUxBUklUWV9SRVFVSVJFRCkpIHsNCj4gIAkJLyogQXMgUFNSMiBIVyBzZW5kcyBmdWxsIGxpbmVz
LCB3ZSBkbyBub3QgY2FyZSBhYm91dCB4DQo+IGdyYW51bGFyaXR5ICovDQo+ICAJCXcgPSA0Ow0K
PiAgCQl5ID0gNDsNCj4gIAkJZ290byBleGl0Ow0KPiAgCX0NCj4gDQo+IC0JciA9IGRybV9kcF9k
cGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+IERQX1BTUjJfU1VfWF9HUkFOVUxBUklUWSwgJncs
IDIpOw0KPiArCXIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiArCQkJICAg
ICBpbnRlbF9kcF9nZXRfc3VfeF9ncmFudWxhcml0eV9vZmZzZXQoaW50ZWxfZHApLA0KPiArCQkJ
ICAgICAmdywgMik7DQo+ICAJaWYgKHIgIT0gMikNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwNCj4gLQkJCSAgICAiVW5hYmxlIHRvIHJlYWQNCj4gRFBfUFNSMl9TVV9YX0dSQU5VTEFSSVRZ
XG4iKTsNCj4gKwkJCSAgICAiVW5hYmxlIHRvIHJlYWQgc2VsZWN0aXZlIHVwZGF0ZSB4IGdyYW51
bGFyaXR5XG4iKTsNCj4gIAkvKg0KPiAgCSAqIFNwZWMgc2F5cyB0aGF0IGlmIHRoZSB2YWx1ZSBy
ZWFkIGlzIDAgdGhlIGRlZmF1bHQgZ3JhbnVsYXJpdHkgc2hvdWxkDQo+ICAJICogYmUgdXNlZCBp
bnN0ZWFkLg0KPiBAQCAtNDkyLDEwICs1MzcsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0
X3N1X2dyYW51bGFyaXR5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaWYgKHIg
IT0gMiB8fCB3ID09IDApDQo+ICAJCXcgPSA0Ow0KPiANCj4gLQlyID0gZHJtX2RwX2RwY2RfcmVh
ZCgmaW50ZWxfZHAtPmF1eCwNCj4gRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZLCAmeSwgMSk7DQo+
ICsJciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ICsJCQkgICAgIGludGVs
X2RwX2dldF9zdV95X2dyYW51bGFyaXR5X29mZnNldChpbnRlbF9kcCksDQo+ICsJCQkgICAgICZ5
LCAxKTsNCj4gIAlpZiAociAhPSAxKSB7DQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+
IC0JCQkgICAgIlVuYWJsZSB0byByZWFkDQo+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWVxuIik7
DQo+ICsJCQkgICAgIlVuYWJsZSB0byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUgeSBncmFudWxhcml0
eVxuIik7DQo+ICAJCXkgPSA0Ow0KPiAgCX0NCj4gIAlpZiAoeSA9PSAwKQ0KPiBAQCAtNTg4LDcg
KzYzNSw4IEBAIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiAgCWlmIChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ICAJCV9wc3JfaW5pdF9kcGNk
KGludGVsX2RwKTsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQp
DQo+ICsJaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQgfHwNCj4gKwkgICAgaW50
ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0KQ0KPiAgCQlpbnRlbF9kcF9n
ZXRfc3VfZ3JhbnVsYXJpdHkoaW50ZWxfZHApOw0KPiAgfQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoN
Cg==
