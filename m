Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D8909382
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 22:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6BD10EE67;
	Fri, 14 Jun 2024 20:41:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMiBb8uK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF5010EE7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 20:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718397677; x=1749933677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rBUQvb6DFMvzrjAz5eiEwttT//0Q2YE+3SPpes3eIHk=;
 b=YMiBb8uKTqKSTlgXKnWYgagGrjoH1jv7GjovWH11ls50uHWKxSAWTixZ
 1mlNCe1VxlfbnzMuPxtNwgzMH9NJDGUxwDCwflOADW5nsPT6SpDX6Sok2
 fM8MnP3V3Us1dOcLDAqBeUHQ5MYpklU91p0aXqc+0kz63pyLzXmIcWlHP
 G12wpm0XOKPtok8CmpqnzCSBdC7JSRz9g5d3rsr7yxi3D/NEYPk3WV98y
 /Fw/iz2z57Jb6jGeF6xiRmoF9VDBqvP7zRHPGA2oL7VImOEoxuiET5Mbr
 pqB8W6UMXa0UppeVuBDF2ToFzLpBh5Q/dtEnqyB6gtXMljqYnJ0353k29 A==;
X-CSE-ConnectionGUID: 5bFKcKcHTLuGG0wMNVuktA==
X-CSE-MsgGUID: bgRYnh3CQfurSzh+1JwVXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="25938046"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="25938046"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 13:41:17 -0700
X-CSE-ConnectionGUID: iovNqGVJToC8cQ9mJ2EMug==
X-CSE-MsgGUID: dPR/gjtzS7WrdYs0QkadDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="78089454"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 13:41:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 13:41:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 13:41:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 13:41:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 13:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XX4YzwwFgOuLLDFaxN+ebfotDkgll5GWWQKvWGanZyZcUYwSvWGOJUSllLm4GwW3/BuzkECqzVU/iNFTtJ+5ZJYSEtkYaF4yd83qs/F6gATW3aDSVuZSEVAjnUmJyfKvPz7rD0T2YV0XxGlgZxbBBGWuE7lxAzMV/GtWaSbtAd3fXQxaVBf4FSY6NHff27ovwPu3Tcyeq3T7yFIAQeh31MICoRVe1d2xv2Dx5CHFqkoKxXoofmjBgTKXDdVNYO/KtykgyA6+xgytFU6zcljhKSZhzvCKKOn116EYFoWknyiqakOrMOor9q0EtLVnBmpNnm9UpUoTphib+Rylkt5c0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rBUQvb6DFMvzrjAz5eiEwttT//0Q2YE+3SPpes3eIHk=;
 b=WXRsmMMppr5dBn70M7Uy4o4jS9EjuWGrUdSObAaFvF/zLYBwuZnzADz1oHPErgmjqgADSD2Km03qMQnDPkTkKH0vbAcG4uAeCCXjzYi+TOJTdy5lDsTh1FPeUVwIjJuZgKoJdhNziZgMdChxMs3MnN3MUgg9i34o2NsC8Nk0YsWnRVT9cMTkdDbOjTjj1E6/XVtXABuWPm7yyes4HLyBmJO6mzf84kxi3eJlTIb5RlAVczy76DU16xSDg6jm0wC5GMU3+3LSO9VL+CJ4a2KsizARB9jtCZXLK4Tpr8Q+PFyHFTbM4dtQyzEOVgdkxFtxEeSVU2PezznsAVearn7lYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6778.namprd11.prod.outlook.com (2603:10b6:510:1c9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 20:41:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 20:41:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v8 06/20] drm/i915/psr: Disable PSR2 SU Region Early
 Transport if psr_enable is set
Thread-Topic: [PATCH v8 06/20] drm/i915/psr: Disable PSR2 SU Region Early
 Transport if psr_enable is set
Thread-Index: AQHavXS1ewOQNii3pE2UXuJ+1UZ/KrHHfHyAgAA+t4A=
Date: Fri, 14 Jun 2024 20:41:09 +0000
Message-ID: <be1941a7dd000428abaa63d3aa28f4bcf5c7755b.camel@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-7-jouni.hogander@intel.com>
 <PH7PR11MB59817D3EF50E17DD12CE34ADF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59817D3EF50E17DD12CE34ADF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6778:EE_
x-ms-office365-filtering-correlation-id: 2d1d6abb-f321-4714-639f-08dc8cb2528e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?WXR2TzRTSTU2MzRaZ0ZBazVLMk5TQ3pON2lCdFlHZXU0cXREbm1GRGUrL1dT?=
 =?utf-8?B?L1YwbjdpQjBITmNNWE5PWFVPUWZIYjZQSWdHQlg4UnZWMVJEK3AzdTBudHlZ?=
 =?utf-8?B?K1BUSUR1UmRrUWkwcU0veHZWa3gzdHZBclZzV25XQTdUaXJYenJKZW5LUEpQ?=
 =?utf-8?B?cVl5U05ZOWtvakNTTjUzenhEVG8vZDd0VGxjQ3U4ejJoVXhoakdPYzV0ODBn?=
 =?utf-8?B?ejdaUldDbjRwSmRqcElHR0t0SFBlUnlaa2tuWkl3bWZzeDREK2t5aVVWK2dX?=
 =?utf-8?B?dHNqNEIvSHJGVHFpdzlpZHhqYTFyTjNqMitBWFZoc0hCblU3a3NZY21qR0U0?=
 =?utf-8?B?bWlDRitRdnVXaVBaK0s3VFR2ZThaYjl2Uml1R29KcWpUVjd0NmEwd3ZHdHNy?=
 =?utf-8?B?YzNjMFB4V3NBeTNWdlFyaGFKTFpBbFdhU2grdllNdXp0dWFkZnRYK011dzhQ?=
 =?utf-8?B?b0MxNkVJRmszRnArdk9sNEdpTm1XVXFFY0thRHZ4bnlBOEN0Uk5oNFAwMDdq?=
 =?utf-8?B?UzFRYUVuU0kwcC9XWk9vcHJFRjZzU2NxcFN3STlNdHA5TUd0bUxkSC81c0dB?=
 =?utf-8?B?WjI0cHRrSjlHSjhWR2ZJbmZNRU8rYTVZa3IxS2ZEd09BWmFjMkVxYVFhajlX?=
 =?utf-8?B?U3NJQWE1RHJZdklkeFVvbGh4SnFIYXJqcGhyaVIyZUtxcGNXRGJpMjhRVTQ0?=
 =?utf-8?B?c3JOWnV4aXJiSGx1a0NIcjNqNW1Jc1lxc2NuYWFTUG85SWZXRk0yTUJWY2x4?=
 =?utf-8?B?YVJEZXp5alpUd3BuelU0U0JqclJJUmNCWlJnQVdIUzY2T1lWdW5nY0ttRklH?=
 =?utf-8?B?OHpOVThaTjJjc3dnWDZxd1ZvL2hsc1htTjFzeFRMemZXUUNJaXhTRkRXZE02?=
 =?utf-8?B?SzZFUEVxdHJBRVJYbzY4d2FHUWJJQitOcGFKeUdBaU9Zblo3ZmI1aGJRYVQy?=
 =?utf-8?B?TDZrOTdXNXFTalR4TnZkd291RDltNEZ5cUFneXc5dFFYMXRwYnNHV1BZYVhV?=
 =?utf-8?B?WlZDeDlTTnRINlFXcXRSMjJwWDIvVWw1dVBIdWZ5Y1NUYjliZGZZQXRqTTlP?=
 =?utf-8?B?dXhNbGZPMTRUQkxvYWl2blExQkg1TVB1cXZ6RkN6MXlYK3FjekNzb0xBbkEv?=
 =?utf-8?B?VWhQaWVTSkI0YmwzejVrMmxMZ1Q4emQ5bDhxUzREbmFicmttWHdNbEcyVmZB?=
 =?utf-8?B?alhaaS9KUHFHQkRoYXRieUQySFNOWFNYSnRQVFFzWVJNbE5tdFdLT1FiN2tP?=
 =?utf-8?B?aWxROW1GNmNoMVNDK2ltenljWEtQeGpYUFhva2djekZCOHZpSE5DNXpoTUZD?=
 =?utf-8?B?SXEzN0U4Qit5MVZId2JzWDU3UHIreW1sSG1tZnZQSWFoZkpVTFpRTXhTcEZU?=
 =?utf-8?B?UitpVjhxeVVSditpNHkrdXNZRVJFTU9PSzg2Q1pEekVwYlI5WnpCT3VRSHVz?=
 =?utf-8?B?eGxZbFkreUZIVnA3MjZyT3RLaEhtVm9JeVlRcHJkbWdNek1WQnRCaXA3M1Jm?=
 =?utf-8?B?NEMwbEpGMDllTFJlTFRFL1Z4aEIyVG9DVUtKay9wTllSTkJFdFNlRWVDblA3?=
 =?utf-8?B?SjZsUnRteFBZTHlnSUJxV2tEdnN1a1JEaSt6RjVUNkN5UTFveEs1eGNaRE9V?=
 =?utf-8?B?Qy8vNXhSR09CdUxiNHVLL1NlQ3NwVU5XQWpHR293ZzZLQzBRYTh2R1R2YlVP?=
 =?utf-8?B?K2VHZGpuUURia2NiUUFZMVNCcmphdE94R2JDUjVKSFdYbUYvSlc2czluWTRt?=
 =?utf-8?B?UU9pcFpXbWJGb1dXcmtzc28yTEFxRjVyYzlCWXloZFR2QW00NXd4cG5Ca1RK?=
 =?utf-8?Q?mkN2au8OnDGSL/Voeno2jmXQ3Vf62jUsT5e8A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1Y3aU1QOTk0LzAyTnBDVnBodUlzMkE2L3VkWGpzbEc0NW8rcTh6TWNBNmR1?=
 =?utf-8?B?ZVMvVDVhbUNneWV6SlFaeE5NSjVWMUt2ZitZRGI3MEltZ2IvaEJBaGJkMkZw?=
 =?utf-8?B?eXNFa015K21xdzZ2RmxzeDhsU09IVlUrYXV6ODFLYWRybEhnUm9xdDNNOFpu?=
 =?utf-8?B?WU04OVMxTGw5VE11ZDM5NE4yV3F4M2pjdlRnVmZoNXYyNlMvVXMwQVpBdnBW?=
 =?utf-8?B?WUkvRW9ESjZudkl5eUpJUFNVMVNhUkJQdi8wZjViZkdoTGZXUUlvMGpERnF2?=
 =?utf-8?B?dGZVMVI0clQ0SU4vWEtrVlY4NTd0NXp0V3hLZHdVL05obzBrY1N4YWJtbWgv?=
 =?utf-8?B?ZituQkYvUG9udDlkZnpoaUV5Qi9HZ0VJL0hwNEROM3Rvb0RhZWpSM3hKUDJB?=
 =?utf-8?B?RDdEa3ozZGNzVUFwM1NuYWNGcStZbzZPbzI5SkRKMnhiV2pWVzRQRklYWG1W?=
 =?utf-8?B?VXRyR21LTTBOeWc4TlBqWWtMcjJaemxZODJ5dzZ4cWtteWpyTHNRRldCNDZl?=
 =?utf-8?B?TDFlQUppUnNoRlFQNmVrSVdLWVN1TG9lajJvZUkwQ256UVUzcE94NUFESjI0?=
 =?utf-8?B?U3dxTlFWTDZ5Q2p0U1JHbTJ2cHFzb25OR1dOejJxclFqRHluV3BDOGcvbk80?=
 =?utf-8?B?SERjc3lQTGJkZ2c3MmZxTEhDZlYyeDlsWlAzNnhwcmh3VXFUZ08vK25udDd3?=
 =?utf-8?B?dTdDRlhNSmI3WElWdlRiODRzMXBuUE5wTTBZNk1yKzc4R2p2c0ZuOEFVTzVr?=
 =?utf-8?B?ZTZCKzJ3bnRpWWZDdWtGbnA3aGNCZVN2SS8wZVNEQ1YwNGZJbXQ3emwvT2J4?=
 =?utf-8?B?NFN5Z0xXS0JRZHpLeUprNGw0dzNSSmw0cjdGaXNNUlB1WGV0SUZFNGJ4azFw?=
 =?utf-8?B?bDJHMUdLdTUwczlJK3R1WHNNYTRFaXd0WkFIa2FXMGQ0VUp2c3VHWWozVFF4?=
 =?utf-8?B?V0IzK0lWWkFLTWRTMlMvNnA1dWplZGpvVkcvT1J1QUwzaFVWdEFTeklRa3M1?=
 =?utf-8?B?d1JnSFpKdE9lL2hKaGRTMWw4QU0ybmIrZlN4WjhTMlFmR2hVbFpMRGRZMTBh?=
 =?utf-8?B?NjhzR25xQWZKeWxTT0tCOEpsa1M2T05Kb1daRGR6b1pTNDZtQ1JQQ1JFem1L?=
 =?utf-8?B?R1hCSVRVQnhJZkdSa3FBVWRWTS9UWW9pakRpdWpSelg1dHdGYTFlaU9DbEti?=
 =?utf-8?B?SWFNbGtMaTQ2bmQ4WjBtZjVQYVRqOE9GSFVIZzBmQ3hpU3hqVXlMdlpSQ2Ft?=
 =?utf-8?B?MWFFdEtGVCtWWTBwQlorNVBlUWs3Sk9HVzlxRjFYdkFZL3NvRXVTWi9XaEkz?=
 =?utf-8?B?NHM3UGZzb0xmYktibTVHZ0UyWnZLT201Um9KUFpDOWJCTVE5dUdYV1NOeE5B?=
 =?utf-8?B?T3pKaHhhL3dVR0krWnBxU1BLUitLVFJxcE9qT0xwL1JPbzg3ckhvYzhlMEVo?=
 =?utf-8?B?cldTQWEzMXNMV0xDVmN5UUJZNDkycDZrRTFTY0VqclQrWlNrWlV4V3MybEZY?=
 =?utf-8?B?WkFIM0Zldk1BSFlNWEVUSEVSOGttSjJoT0NxbzNnQ1JXUWt0NFZ0aHdhNzhV?=
 =?utf-8?B?YmlobDN5ZDY2aXVvQ0Fsb2lsb1pDejQwVlcrVVdjdnIrcGtoOVFSa1Y1NSt2?=
 =?utf-8?B?eWFldmhvckhXbzRuem8zdk43akk3VUpkR2t5bkpMM0o0WXl5TXRnTVhXYlRZ?=
 =?utf-8?B?MndqbFdBZWRCUFBDTUFWWVdudk9qSGY2NDJpcDhsVTlNdEJMSDJEZTdtS0gy?=
 =?utf-8?B?Y3ZVc29jczVFek14ajVNVk5FTktzWVliUmxZMGFYTFlKanBNLzNGcVdEZjN6?=
 =?utf-8?B?REswV200SzRGc2xaNXBsVWtBaVVVMnh0U2ZxQSt3YW5qWkJFSjl0RmRwYVF6?=
 =?utf-8?B?eDREZlJENk5KUlVlaktpZ0wzS2xvR3BqaWd2cFJqUFlseWNSaU9Ga3ErZEE1?=
 =?utf-8?B?VTlZYlNOVTA5bGdQMCtLR1hzTkFvZGpWdUlMRSt1dEhmdzlEVklLd2FQQ09u?=
 =?utf-8?B?Qi9uUnpCOGcxMjdmc01OOUY5WnlJbFllQjNyTVl5MTBXSFlSM3JNMzlHL3ND?=
 =?utf-8?B?Q2FERkdRY1RUZW00L09GNXBQNEFubEtQYm5FY3BXc3BpckJDaWduUy8vemVt?=
 =?utf-8?B?Ulh2SzYxeHduV3pPaCs1bXVpa2Q3bUp4R0pqSllqbXZwZ0Y1VlN0R0FPYW1v?=
 =?utf-8?B?OFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D387FAA41A73D64390F570E198271F2C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d1d6abb-f321-4714-639f-08dc8cb2528e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 20:41:09.5937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njoPBnMLOfBNmu2lH+ZJygii5JfYHpGL/ak1OhKvBXztIX6U5Q++ECssqxXP9elmkZBIWOBHyzcL04CxsfuJxNye5wHoRsCE/W5k4TNOM3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6778
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

T24gRnJpLCAyMDI0LTA2LTE0IGF0IDE2OjU1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEp1bmUgMTMsIDIwMjQgMzowMiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjggMDYv
MjBdIGRybS9pOTE1L3BzcjogRGlzYWJsZSBQU1IyIFNVIFJlZ2lvbg0KPiA+IEVhcmx5DQo+ID4g
VHJhbnNwb3J0IGlmIHBzcl9lbmFibGUgaXMgc2V0DQo+ID4gDQo+ID4gQ3VycmVudGx5IFBTUjIg
U1UgUmVnaW9uIEVhcmx5IFRyYW5zcG9ydCBpcyBlbmFibGVkIGJ5IGRlZmF1bHQgb24NCj4gPiBM
dW5hcmxha2UNCj4gPiBpZiBwYW5lbCBzdXBwb3J0cyBpdCBkZXNwaXRlIHBzcl9lbmFibGUgdmFs
dWUuIFByZXZlbnQgU1UgUmVnaW9uDQo+ID4gRWFybHkNCj4gPiBUcmFuc3BvcnQgaWYgcHNyX2Vu
YWJsZSBpcyBzZXQgdG8gdGhhbiAtMSB3aGljaCBpcyB0aGUgZGVmYXVsdC4NCj4gPiANCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAxMyArKysrKysrKysrKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggMGRmNTU3Njc2ZTA4Li4yN2NmMzMwZDEzZTIgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBA
QCAtMjM1LDYgKzIzNSwxNiBAQCBzdGF0aWMgYm9vbCBwc3IyX2dsb2JhbF9lbmFibGVkKHN0cnVj
dA0KPiA+IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+
ID4gwqB9DQo+ID4gDQo+ID4gK3N0YXRpYyBib29sIHBzcjJfc3VfcmVnaW9uX2V0X2dsb2JhbF9l
bmFibGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiArew0KPiA+ICvCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpOTE1LT5kaXNwbGF5LnBhcmFt
cy5lbmFibGVfcHNyICE9IC0xKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+
ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIGJvb2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVk
KHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCnCoCB7DQo+ID4gwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBA
IC0NCj4gPiA2ODMsNw0KPiA+ICs2OTMsOCBAQCBzdGF0aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9l
dF92YWxpZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gYm9vbCBwYW5lbF9y
ZXBsYXkNCj4gPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBhbmVsX3JlcGxheSA/DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHJfZHBjZCAmDQo+
ID4gRFBfUEFORUxfUkVQTEFZX0VBUkxZX1RSQU5TUE9SVF9TVVBQT1JUIDoNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzcl9kcGNkWzBdID09DQo+ID4gRFBf
UFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyX2RwY2RbMF0gPT0NCj4gPiBEUF9QU1IyX1dJVEhfWV9D
T09SRF9FVF9TVVBQT1JURUQgJiYNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cHNyMl9zdV9yZWdpb25fZXRfZ2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApOw0KPiANCj4gSG93IHRv
IGVuYWJsZSBlYXJseSB0cmFuc3BvcnQgd2l0aCBwc3IvcHNyMj8gSXMgaXQgbm90IHBvc3NpYmxl
DQo+IG5vdy9mdXR1cmU/DQoNCkl0IGdldHMgZW5hYmxlZCBpZiBwYW5lbCBzdXBwb3J0cyBpdC4g
VW5sZXNzIGRpc2FibGUgYml0IGlzIHNldA0KKEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9E
SVNBQkxFKSBvciBlbmFibGVfcHNyIG1vZHVsZSBwYXJhbWV0ZXIgaXMNCnNldC4NCg0KQlIsDQoN
CkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+IA0KPiA+IMKg
fQ0KPiA+IA0KPiA+IMKgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9lbmFibGVfc2luayhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KDQo=
