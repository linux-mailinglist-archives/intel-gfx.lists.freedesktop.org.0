Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A31A0091E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA1E10E26A;
	Fri,  3 Jan 2025 12:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GATokLpI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A925B10E26A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735906495; x=1767442495;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0IJ9FoKhxyOJUry9NMxQbJ/q9cI6d71RsQtTSdbgtRo=;
 b=GATokLpIPGKNEB6MxJC3rDLSJBVwSCpXcHEdFy+9HVPyl/6jwrXYwqhm
 LzIfQitRKWSztbZSgC0rvk5dJRIVess+hlcUqpFDas/RfCGnazXTwBgk1
 KXrCtW2qNLN6kArMl+nc6TynT7Ldm65Nhjb++NUR3d2F+7Eqawe6CLop7
 WVThjd9skwurn75Vdy3fM8OYeEmB0U9IpXnLQxyZZI6KDIRLAkgLsqelS
 nG/CK5X7pb/Nsl7SEOwN5PrqjN32Ab4UY9ZAp5XGv8MMdEwn6YDGvK6k8
 shAK/F24ylGLQ4YKjaPl387K1C76QnQq0ZRBkWFL4IUwGtxmHFoSIOHpv A==;
X-CSE-ConnectionGUID: 9YfICVD0Qma+9Xw5kDlpdA==
X-CSE-MsgGUID: YJItAO0NRCyN5onoqMeP1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36033353"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36033353"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:14:55 -0800
X-CSE-ConnectionGUID: 7WJHNNqZRyui4WyWQZyGAA==
X-CSE-MsgGUID: TdQwcUQXTkah96Wa7mDMGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101855925"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:14:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:14:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:14:54 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:14:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cuIaBlPBKe+9NuYaC4iXr4u+Rp4MGXfvRKCQTPQWGL/fUUyy/6KJQukxVMi/fUwLh7Hgj1j5F6eS4/yf6LSlEhAvMoKz5NQtWfUOnqjj8DwbLKwPbzTW2zjs0AMAYNbP6qgFz/JaEcSbxAKLPFcPSqX+DyPY48M1Fo/Uhzwx5RvD2zo801b4/+8xK32UNND3xqOelcFuu2vsfd39Qo2C/Cf/jllZvli/Eef2v5wcwvahn/X9p3P8jlLZTMOg18D/nTE8Zn6Cg9mro6B1U7lBcoH7OZIMilK71lngqFby7NwZMobPtuK+46PjSqedBVF/LBUPpM1XIHnZc4dYRorTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mb5PfyoPI7KYJ8bV7Fz5vGsQm8LkHFy/HzS06zP4B/A=;
 b=iXxvc1ZE3xrVLKHTz31X9EyInFPk4buZ48ntr+PVQ3hS9zzApAqG+a3eP0pLe6+ylSOzPYsUxfupHxhH5Zj64XPfuYy+mh04KtangXx8ueqouIcHXmvdyJML8YnK/m6zc1pCouxbI7aByNsUlm1zuTALC0M4zjPISalU0QAnfpiAniluKGsiNpNGwdPiL2t17K7M2jPFIRKum8Iy8HLOooaJtiFFY39qSyQQr677iHsvZXQREsuyoRX3xVUdrtixn9MqrOxbwygDkNzVfuHVca/sAhNzNNUMa1/aUJ3my0JC1bPvmn+ZRwZJrJ69o1+vmUVgr3fkbi/G2leBBo+8Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 12:14:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 12:14:47 +0000
Message-ID: <8141a9b6-fe45-446d-bc0e-ace3d3edf58b@intel.com>
Date: Fri, 3 Jan 2025 17:44:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/18] drm/i915/vrr: Plumb the DSB into
 intel_vrr_send_push()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-17-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-17-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: OS7PR01CA0220.jpnprd01.prod.outlook.com
 (2603:1096:604:252::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 0389888d-92ae-4c0f-bcd2-08dd2bf03739
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RE0yZm5RK29YY1hTOFg2djUzb01XNmJ2dFgzMWNMMEtiZlNFN2lhdDB1ekQy?=
 =?utf-8?B?L2JnMXh0NWNEdUowbnlibGtPQ3hKaVdzdTVyVHlKNXVHZkR4S3BwcHNBZlJz?=
 =?utf-8?B?OFdYK0c0UUsyNWo3TEZyNzRZYmpWZVVUTEVndU1vY0orMjZVQUJ5VHMyL2Fp?=
 =?utf-8?B?WU5ESmZVOCtJeFpPTlJLd3N6S1R2ZXltT0F1WUloemo1RnBuRUlyWHRyc0Nk?=
 =?utf-8?B?SFAzRjQ2WTJkRDltWndaTGFOdzZicWxVZncvU25xT1Z6TVBuZ0dMVGphaTBM?=
 =?utf-8?B?d1pHY3Y0TVVqbHJyOG8zVWllelpCdjBSVHNDbUxwbWJZc09IbkcvMi9vd3NO?=
 =?utf-8?B?QlZ1UHBTcURLeVRoMkMxR0NnVndrQWo1T0tUemE5NGpBREVaaUp1cjk0c0lH?=
 =?utf-8?B?eVZkUTVHUlRybk1GZVlPb01CcTJPZGdRR1pHYk0zYlYrMXZwaEdDQW14RUVh?=
 =?utf-8?B?cThMcnVRZlFiSVZqWG5Canh5U3pEV1EzcERWVkN5VlN6akxuNDZSQnRYNnZ0?=
 =?utf-8?B?U2FraTdZZGd1eDRxNXIrRmhCSmVNRkdVT0ltUk1Xa0NoR3lJYU44MzVqRGpa?=
 =?utf-8?B?YXlmMHpNeUFsMEUwUWF2bmNWM3V0Ti9RNEwyelNwY2d2Kyt0dHQxZ3pPekJH?=
 =?utf-8?B?TnJ4R3E4Y1puK2NlRFNDdWlkZmx0bzdBaFJlSXpzVkRaa0JrZ1Z0RUhDR1Jj?=
 =?utf-8?B?a0k1d1NPNTgyZm91Q2I5cmdQTE5vd3JPY0FhUVN0Rit4NmpCVC9kRm5ZNGVV?=
 =?utf-8?B?VUloV2M3aUhCRVJoUW80S1JTeldiSlRGeUt4K2NoMzFGTUlOVERtTWk5TVdq?=
 =?utf-8?B?ekFuTmRPcXVGamhTNUdnUm5zNThsSHNjMHdrUCtTQmpCSjVNZStrZklxSFZD?=
 =?utf-8?B?Mk1BaXdNRTlPQ0RxWnVTUTNoSFdxcHZ2a3VEVjI5eVV4U1pIWkxCaDg1cGd6?=
 =?utf-8?B?L2RESkFKNGc4ZTUycEMra1BaQ3FsclBSaW1vNXNXZWtuWktVK2RGUE14L01J?=
 =?utf-8?B?YnNQdEtuMnJaRHFSNGxXSzR2ZXplOWhVMFZ6RVpGYnZuT0RnMEhNbHo1cFJs?=
 =?utf-8?B?aW9hcmlSem00d1NFeFhoZG5oTHl6K3BzNHp2N0VHanZKbHM2a29ad0hSOFBC?=
 =?utf-8?B?dFNrRE5HeStXajI4RjVPWWJObnA1S3cyRnRIa1R3TzZ2OW9pRXMvQ3ZwL2Fx?=
 =?utf-8?B?UlZWM3VsZjgxN2xJOWFSMFBYSFh6NmhKL012WEIwQVBYME5ocWRDOTY0WTNj?=
 =?utf-8?B?ZkgzV1FYWFVWcXkzY2JFQjFWUGZyK3phRkVOY0lWZzRXZnRmK0M5K3hnSzVB?=
 =?utf-8?B?UlJybGk4MnBDdmk2bXova3lnMDEyU0RkOGlmUk8vYlUwOHErOWtKUnBIUU9N?=
 =?utf-8?B?cmdYKzY0VElacGNWMjdBN1dvOFFkdm1vK3JXVFVoRngyV1lHN0Q0WGJZd2hY?=
 =?utf-8?B?OHJpam4wV1licFJJWDkwV2hPU2xGYVJCNmkyRVBHeGF6WS9XLzI2S2dvbklR?=
 =?utf-8?B?VFhKQnlCNTBEN1h3QmRtT1NDYWVLK0ZraE1la0hzYnpPTDVacW1yaXlYd2hw?=
 =?utf-8?B?WCtZWEZQNktOZkszbXZxT0FnbzEzZzBaZDR3Qk9aOUlKTFlza3oyMDk0UGp4?=
 =?utf-8?B?TzFQZklMYWxGTVlFd3NoeVpoQ3FkdE1zZ0FuZE8wdXJMMHhLUW9uY0Q0Y3M1?=
 =?utf-8?B?MTRSMWlkNy9WRTZFdzR6akNaeklOTEhTTFpxMVlvaEkrTGVxTnE4WlhFZEd6?=
 =?utf-8?B?aFFJbFNKaHdVNEtKTGNIRERLNFRweHVGSGMwWExWRnNvNkJPUGNJSi9Mamhv?=
 =?utf-8?B?Y0RQNTZCUTlrZGlTa3drUDdLeGNNc3NOeXV6VzdWcGJwelJrTlZ2S0U2eEtQ?=
 =?utf-8?Q?q0wkiFfCN1TA3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3V3SlJjZCs2VVp6R0N0a2RRRFYrYWlZUHpQSFlxYi9yVmlXNitnTWZDaSs0?=
 =?utf-8?B?eVFKMHJzR2IyZmtLZzVzZlY0bmJLMUpETndQNzFGbHo2azQ5KzRjd2t6VmNG?=
 =?utf-8?B?aHZDcUZFYWUrRUFMQWFuYSs4TU5VM3U3OTRWaGJuU0hXempoOHFKVksyMjMy?=
 =?utf-8?B?OWRjejFYRVJldW8rd3hrWEFEMDNsc2pwZUl6bnYwb2t6NmV5TWtNSEJYV281?=
 =?utf-8?B?c0RGajNMcERMWVovSGIxQmV0MzlWK1kycHVIVkFXRTF5TDhVVkI3d3lIM0VC?=
 =?utf-8?B?cEU2cG5qb1QyOHZyY2NIOHVqeTh3d2Fnek9FWEduY0MwL0F2QXdKSHRtaFd0?=
 =?utf-8?B?MHdQYjlEQ2g4SklPZTFyUEk3K2M4bk9uL3VvcDU2a2o0WFFIYi9aTDVPTVlj?=
 =?utf-8?B?ejFjU1hjSE5VaW10Y09OSWpHMHBIMk9NbFVQZ3Jwb0QxVnBncnBWTkxuVUlj?=
 =?utf-8?B?elh6dmtTcXdoK2cwVWttZHBmV1lTUUJlanlWNjFvcjdyY05TRnVrS1JxRmY1?=
 =?utf-8?B?MUdBaFh0dTdDajRVZDU2dEpPUDd6eWt6MnU4OEh1TE9XdU1KWnVlK3VUVStR?=
 =?utf-8?B?VHRRZVBMdjM4OHN4aDJ0R3M1ZXloVE9DckJPKy93SEl4WFNuZ3NXS0ZNUXFB?=
 =?utf-8?B?MTNKSWw5cEhXK1dtVk5rbDIrRSt6dmJsYXl6U245WHpBZFlBVkZMenJIbkZT?=
 =?utf-8?B?S3pTcEUyU3BSOFUzOGpSRTBBRHJXQTRCZlNXbEFjZ1pnSGF4dXhxQXJhRExF?=
 =?utf-8?B?cEZacXVvQmZGNFZZNjJTQkw4V3A2Um4rWVJJM0htVGtCWWVIZHg1cko3RjA0?=
 =?utf-8?B?WFZ5bWgrVWJzQ0N1Ym1qbklFeHJwb3hmNkN3eUhwbWdWblFWSklJZ3FpMWNG?=
 =?utf-8?B?cUgrTkhLOVo0d1NwYythMHlvcFFGRmUrb3pZUmtXWkNkWThYdy9QVGFHVVUw?=
 =?utf-8?B?MTBFc1gwTHF0UHZnN1FDRkxaRXJqbWtmTllSczR6Q1JrK1haZUJHbEVGOXZN?=
 =?utf-8?B?Q2t0c0xOSnVpbHUwMlBSWWJqQ2xSUUZnc29vOW9BdVRiTjB4NXBqcW5MeE55?=
 =?utf-8?B?T0NiQ2gzL2kzRm4reUN2L1piWGJoeGx6RDF3Q3RDU2pqZ1NMU0FUZkZ4NndG?=
 =?utf-8?B?b1NNOE9aMWJMMm1xQVoxZHVsY2g4QllzTVB0b3VYU2JmRithM3ZPdS9mR2hk?=
 =?utf-8?B?dUxVenkxbWtUT1pNQ3pWWVRhK0dHZkx1UHNhZFlQcmFlL0t6b1NxbWF4Z2FQ?=
 =?utf-8?B?R3M1eXdXd1BxOHJVUHVMVTEwZ3BnUzVzQ1JkQ3FmZ2NDb3hGSEdQNTVJSFU5?=
 =?utf-8?B?dDhOUEdNWUk4OXVLNWRFVjYzd1NNVHpweXB6aUJzcTdxeUdEMUVyb2xMMWkz?=
 =?utf-8?B?N1FGLzJiby9BVHFxUTV5Q3RzcE1hMmgzQzZVanVLVlZWamx0WGdPcklyTndX?=
 =?utf-8?B?dlRYZG02bUhQRzNJa21oRW5FM3Nsd04waTNWcG53V3ZCeUNqNkx0RHhEMkdo?=
 =?utf-8?B?bERkZXdWRjFWQTVIRzBIa1hJNlRVZW1SRUZEaklJZFJSdVNidXNrRU1JRm1S?=
 =?utf-8?B?bVBBdm44WVlIMk9YUWxha0JUb1kyMkN2bjIyLzRpOVZyZDJsR1VmQ3Y2S1V2?=
 =?utf-8?B?UW9DUHkyaFBMeGxyQTZPQkVuWnhoK2wrQ2R2L0taOWRZZlBYREUyeGJ5L2pF?=
 =?utf-8?B?SjN1K2szbTRldEpSbmttTENqbGtiTE5IVFlLZFlhUnpRZjRBOVlCVWw5ekpl?=
 =?utf-8?B?ZmR2Wk4zQlRFYW1RbXhSNW1ITGpKY3ZDWHpTa3AxeHF0VU1iM0N3ckY5Y2Ru?=
 =?utf-8?B?Y3lwQ1l3U05QNnJkRy9iTnhMQkthNzluMFRvR1NTZkxRRUh0QThkV2F0d1B2?=
 =?utf-8?B?Qk9DcG42NlpvcjA1aitzNVNhQnVvM3NITkQzaFM3Tkx1RmFLbFQ2K1FJUkNr?=
 =?utf-8?B?S1J6dU1iSTNZdXVkcGttOUFxMjR1VkpMbUExUFl5aFlFTGQ2NkgyWktXcWVO?=
 =?utf-8?B?bk9pNE5seTZ2V2ZBTWJQOFVyMlhSU1VkaHlJMXZkYmtybnpaVWtsMTAwd2hO?=
 =?utf-8?B?UGdVeXp4T3BvcytLMlgzMjlhNUZ1b01KeWFYbGJnRWxCOWFsbXhWS1NCOUQr?=
 =?utf-8?B?WHg4a1lxVWNUOU4wa2xxV095UnYzZ3JGMUVja0VIU0w0OEFvUVdmRkxsZnM3?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0389888d-92ae-4c0f-bcd2-08dd2bf03739
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 12:14:47.7627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2JnCc80NSL53dsX7i860n9PGCYpuTsxzqvZi39gmgtZ04cDn3Wu4toOniYhjcRo2pCsEkRsZUYej4sGVSL+tekM6xZGrX1Kh+y0+pgqMhqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Plumb the DSB down into intel_vrr_send_push() so that we can
> perform the opration on the DSB.
>
> TRANS_PUSH, being a transcoder register, needs non-posted writes
> to make it through.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c |  2 +-
>   drivers/gpu/drm/i915/display/intel_vrr.c  | 14 +++++++++++---
>   drivers/gpu/drm/i915/display/intel_vrr.h  |  4 +++-
>   3 files changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a2c528d707f4..3bb57a74b333 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -713,7 +713,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>   	 * which would cause the next frame to terminate already at vmin
>   	 * vblank start instead of vmax vblank start.
>   	 */
> -	intel_vrr_send_push(new_crtc_state);
> +	intel_vrr_send_push(NULL, new_crtc_state);
>   
>   	local_irq_enable();
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 98dd92316595..d589a62fcfed 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -391,7 +391,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.flipline - 1);
>   }
>   
> -void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> +void intel_vrr_send_push(struct intel_dsb *dsb,
> +			 const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -399,8 +400,15 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>   	if (!crtc_state->vrr.enable)
>   		return;
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
> +	if (dsb)
> +		intel_dsb_nonpost_start(dsb);
> +
> +	intel_de_write_dsb(display, dsb,
> +			   TRANS_PUSH(display, cpu_transcoder),
> +			   TRANS_PUSH_EN | TRANS_PUSH_SEND);
> +
> +	if (dsb)
> +		intel_dsb_nonpost_end(dsb);
>   }
>   
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 8e8961adce39..899cbf40f880 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -12,6 +12,7 @@ struct drm_connector_state;
>   struct intel_atomic_state;
>   struct intel_connector;
>   struct intel_crtc_state;
> +struct intel_dsb;
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector);
>   bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
> @@ -22,7 +23,8 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
> -void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_send_push(struct intel_dsb *dsb,
> +			 const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
