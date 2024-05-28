Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7878D8D195C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9FE10F575;
	Tue, 28 May 2024 11:24:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCknpBUc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED7910F575
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716895449; x=1748431449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WRY9QN1dXXU4ujDt2W4k2GAFTV4PfH7pcIEMCrKWHmE=;
 b=MCknpBUcDFKzGYn9f4skfFl4rM23UvgYOON9+jGu2PmI8TUi8rpQJxJy
 rCSHaYNcaQ+vRP2+1b47o7fye/lVtlyddiIBJ8ln/3iLFztTCy48nuu2o
 sh6VjTKLBSOBybxKl0ULKbreRZf2UiFwK3KlO3h5X8ND8bgVMVJGnm3m1
 zxtSlJ7TVrzF9SmvzB4K8OFK84oS5An/BvAliy7ltjHkVYVRcMPX2tDAx
 F/qPxWmsReaiimYvXFF7V1jqFC78ewe+abkQhvUVKwAdUvHmgb2I+UQ/0
 vSIzehid9yROLBvxzKllHfYBBPv2J7X2j81opIa+vVFTpw/c07bFFnTRc g==;
X-CSE-ConnectionGUID: vFvcH7RbRM6ttgf8ZHeKgA==
X-CSE-MsgGUID: cU5KXhz3TZuq/z2pp2XZmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13363031"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13363031"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:24:09 -0700
X-CSE-ConnectionGUID: yJoXTbLpTqqNuIkx9C3J+A==
X-CSE-MsgGUID: faRv+lXhRYKfiCcy22welA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39480425"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 04:24:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 04:24:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 04:24:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 04:24:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 04:24:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gygpjPHKjwNcjdNmEdBpB/lZAlQkin+et22h5xXmsh/kd/iNDccNDem4bGJ+DkmklxrTauI3rUpMWlT2amqrBF2YAhla6m7SBvKvXRxWygRawPsaoWdrrBggzh9nNejZ4FWb/minrODzr6p6FJfEe65lWpAdxrgQDpeqZ1jg0DPoWm3w4YDA8b9g/JIjXmsrUvJl5LvCDcJgWDJiDyM2BhtTXaVukhSGiusLE9yFFHGTc01/13kVfDoHim1v5Iokg+pUDJ8Vl8N89MVGqieCsEOTc5LqmFDqvJ1tT/XBch9cpWDBcycgLqikGRpeM0IxSzVnFGGJIRiPjUnQetFYKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WRY9QN1dXXU4ujDt2W4k2GAFTV4PfH7pcIEMCrKWHmE=;
 b=N18ADgP9PTMP3TtbtjnF7mNSHVxz127BUvrtsrZ+kGGJGA9xwnrS16GY6B9qkZjrkhNpIgfVBpIMeads1XI/YslMHL4S2pcHNCG0uXSXKliHVGIeF+CpU3+4PniRJ215X9SQgrES1xVmX+tWyKda9hYHhTOKUgnPzKVt6RUm5oWAwndHMOdQfxrRADUVnjUUIuFvR5WiSW54Xxv42PqCtGQpm2Uf7Hmml11XOI+fvteIMNdUClXvnJ+lLuWl/B0JDuRIUhPnnwdvN/8BycW3BxAJ8wD9C5T3njMFZfzg5jTIAaa/gvrQM44QWFbmhgOqh9vwlRhen7O3n3GHpf6CxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 11:24:06 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 11:24:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update handling of FBC when VT-d
 active workaround
Thread-Topic: [PATCH v2] drm/i915/display: update handling of FBC when VT-d
 active workaround
Thread-Index: AQHasOYd2fxs8HFnO06CCYMbfNtryrGsgBwAgAABMIA=
Date: Tue, 28 May 2024 11:24:06 +0000
Message-ID: <fa612ae1df390d61107e11ba00eb128480d79367.camel@intel.com>
References: <20240528100138.107414-1-vinod.govindapillai@intel.com>
 <87h6eikwtl.fsf@intel.com>
In-Reply-To: <87h6eikwtl.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB7016:EE_
x-ms-office365-filtering-correlation-id: 193cfdc9-d3aa-4d03-acc2-08dc7f08af84
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?c3JPN2NSdFFxalVxbmJ3bDZDUGlnbDJPbnh6N3BrcE42dm5QRzdWR3R2Tm5D?=
 =?utf-8?B?YytXUVQrZnZoaXE5QjQ3MjYvbXNaSVFHdnFZeFppWk9JYnlOOGhHWHYzOTBH?=
 =?utf-8?B?aWxuTDNicVFPb2ZzRU04N0RUc3QydTFwNi9hdEpQbW5RVTRINytEMlAwaWFy?=
 =?utf-8?B?KzdvU0s4V2JyQmtwMEVPcWNRRDJVaGFIRWJnT3Zjb0VnTHZOdElWWWFaTW9J?=
 =?utf-8?B?N1liYm1sRHlVek1zZ2ZaWTlLM3Zhb1NDOGNZSlNKUkM0SlQ4MlZVN284RzBk?=
 =?utf-8?B?anBCV3RhcDFaS0R6aGlmOGpteEp6MkEyeWlkZ0l2TzRvcjBNRmZqWlNNUjRj?=
 =?utf-8?B?WFo5dW0xeEFOckpWL2xDSFQ1ckRMUWlGNmQrS0EzNmVlWjRZRHdoNk52ZmFY?=
 =?utf-8?B?WWtDMVU5ajVrNUU3cXdaU1ZDVDdaMmpVQVNVemJvcENuVHJ3L1dLY1JidG4x?=
 =?utf-8?B?cGdHQUVTc1FjZWtvNHNJYlV0NlowUWo2anRZUFptNEU1Zy82WGVFVGxTRHRB?=
 =?utf-8?B?NDVNbm8zZE1tYmdzdkxNVGtWcVpFdGtHSmxFbHZEYjYvTnd3dVpPWmIxTEdj?=
 =?utf-8?B?clM1VTdNWFdIdGVoR2ZxUFNocmUzNnhuZXRIcm84ZmpJYkhQSEpHcUZQVWNr?=
 =?utf-8?B?cTdXbWlUMHRmd29KTCtrWTUrTFF3cU9PdGFqYm9JNjBhUllFU3ZCUDJrV0pr?=
 =?utf-8?B?TzV1b2hYR2pWUmdFMnpiL3lXNTczc0RmNG5uSnkwMWVTTys0cldXUDFUY09t?=
 =?utf-8?B?MHI3WHRBR2o4K285d3BkUmV2dlRHdVQyNmFXMHZ2L3VyNFg1WG9obFN6Zk13?=
 =?utf-8?B?bmplUW4vVnp3QjI5SGZJcTVFVk1kUzhZSnFOd1RqWEV2cURsZmFWODkybmRT?=
 =?utf-8?B?anozSi83ek9KU0FDZTRDZ21Pb2h6My9NUnZjNXIxY0ozV2N6SkFqTGxRWU93?=
 =?utf-8?B?bjBDMDduaWtjd1RCdnBHQkk1aWJRRDgvYXZDL2kwUlEyRWJsOHdHeVgxL0F1?=
 =?utf-8?B?NXNPSFcwdTk0RXJsZDVYbkVQa09vRkZIK0ltYU85YTc2UWRiZE1CUDhhMGRi?=
 =?utf-8?B?dzBpeXh1YmE2RnBoKzhDRTFTKytVdmxoMUdjWFczSm0wVVo1dFB3ck43b0Uz?=
 =?utf-8?B?RjBKWWRENmJzYVg5SjJ2VGVxWnpPb3hCUFB5NVpQZEVlb3Y1VzhxZzR0R0Fi?=
 =?utf-8?B?T0ROa3ZoSkRUYTNVdmFueTNLQTh2cFgyaytZeTNNMWg2Z2Y1WEJqWkRTcmlK?=
 =?utf-8?B?NlplVy9CU0VxY0hlLzlNUVVXdmFkdHhKV0FxNzJjbHRCeFkyYW9tL2lobFZr?=
 =?utf-8?B?cVFYTkdzalU0L25LcytPWDU3eFFjcnd1NCtzNFBxeCt6WXRMRWtia3pkUWN5?=
 =?utf-8?B?eW5HcGJORnQyU1FZZmtSS056cDM0Z2gxcG1XYW1RV1JqYVVNczd3K3FpRTd6?=
 =?utf-8?B?V0xqNS90ZEk0Nk43azdaMEoxa2crU2dUU2planp1QWVzVkdINml6WVlUbTUy?=
 =?utf-8?B?NU5ZclV3TnVoblkrZTFPem9aRXF1T04zdFVIYVRsOUxYeVM5RlZ3czRuNHZr?=
 =?utf-8?B?TjFPMkloYmZ1NHlSOWdOV2NNYmRCa3M1dEJtNElUYzJhSDI2OEptN3FsYUhK?=
 =?utf-8?B?K0pLSUsxWERlMG0zMXBlRkJuY0JVQzhadUF1VnA0eWh1ck1ZM2w3WG5JTmJO?=
 =?utf-8?B?c0poU1RqWC9Dd3ZMRzhXNEplU05PL2ZXU0ZvNXR6alNJM29oOVgyZ1BoaUE5?=
 =?utf-8?B?NXlFVERFWjIxZytkRThQTXppbzBnc0lJMk13UGVjbE44Sks3cmRYMzRCUThT?=
 =?utf-8?B?YmRlcWpnTDFrT1haVlpKQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3J5MlRaaUw1WTlUNmxuU2Z6WFZGODl3N1RVTlNLN3l5bS9nUUgzc01hR3FB?=
 =?utf-8?B?eFRZZE52TGZVTlY3am9yTW45RnVZaVU1U0FGOVBnc3d4aGs0SlRPZ1ljdlVM?=
 =?utf-8?B?SGhuNjNlZXFOa1Qzd3BVQ3BKcG9CbHUvbFhvQXpBOWVVOUdLSWRrRFMvdVVl?=
 =?utf-8?B?VXlrZEJQb253ZFc4WTdDRSt4aUsxZnErdmpmMEd4eWNjWFQxdkM0c2ZoREF6?=
 =?utf-8?B?dzNHMm1EclJENWRTVkg2bnU4U2tmV3Bmci9PaTZjMGJKWDQ0Y0swcUVncnZm?=
 =?utf-8?B?eUZtM1IzTnh6dlpzaGRJUngvUTR4UjVJQTVJY3B3TUlNWHVzMkNDT3FtazAy?=
 =?utf-8?B?MjRDL2RZWi9zMnZJdzg3ejRBVnZia2hWUERCbWFvWU5hODd5L3VGQ3drdVMx?=
 =?utf-8?B?dG9TbVdIei92aFhIZUVCb01UR1oyS0Q5dm5UdnBZQmFEOFBhV004SkRlMVpR?=
 =?utf-8?B?d1RjWEo4aGUyM2Q3RVZPZ3ZlYVh4MkgrbmVqWW1wS3NjZjlTZVJNSUJYMkRx?=
 =?utf-8?B?L25abkp0cDBYbktpV25zR0RpbGRzOE5uQ09BcktZbEtHRjIzbCtkcWtzYTFK?=
 =?utf-8?B?Y0t3L1B1OWFFOEJhOVVMTE9XQWl2Y2ZpdERzOXpxbDVlSXZJc0w3NHhsUzly?=
 =?utf-8?B?NnVlN2JNOXljWjh6aFRVUkkrb2JvUE95ZVluWEpsQnBSNmNFVk9nOWtNcWRh?=
 =?utf-8?B?SUZQZW1OdVJDL0ZZNi8zZmRzUWd4YlpicE5YL1hpNE5aZUs1ajR1cFp5VDEx?=
 =?utf-8?B?ektGaUhESkdxczdzTWdzcVEraU9wN1dkcmw2b1JZVzJ1SDZScElxVjBTcHhC?=
 =?utf-8?B?SlgyV2hNMjJCOEEyWDlQU3A4YWdOeDMvTHgyTFkwRklCUHVtRUtHdnNrTWc2?=
 =?utf-8?B?dlJYRWU2VVYvZHFYdWRnSGFycElJMTM2NTBsSm16QlN5Vzl4d2wvRTRWMU9w?=
 =?utf-8?B?bWY4R09kdnJpdEcyb1JWTkxPYnBFYTZDb213cTZYSy9IaFlqZHd4M2hRSnpZ?=
 =?utf-8?B?OHVlQTcvR0Q3NGJWUlpSb3VNWDdWNjRSSUVhb0d2OU1xekU0enFpbTl6QjUw?=
 =?utf-8?B?Wmd1bzJLQnNhelZubmIyN1Z6T0IwTG41VmZwYXZTaVg0cUdQVFBtV3BuRjFC?=
 =?utf-8?B?NjFyWHM2elozU1B3WUY5b3Q0OHNUUVhpZXdUWUN2bS9KSVd0L3RhQnZSb0dP?=
 =?utf-8?B?bkdpdktVSTFRS0xjWTVIRXBRMHZFeUZ1SnhJVStEMWxocDhJUG55bXFTYVJ0?=
 =?utf-8?B?Y3ZYUnJNTGlMaktLMW0vcjh3Y05VN3drTE8vM3QvVzdNSE9XR3JCbUdjb3ZY?=
 =?utf-8?B?WFBlZ1VtMUNRSmJqZU9WUVVIUE9uUko5V21WTS9jcVZGTUp4M1I4Yng3a1BB?=
 =?utf-8?B?bW96NEw1aUVsUm1zUG5DQTNramlCMnNBY2VmaFA0Z1N3M3hiOXlWdW9TaHVB?=
 =?utf-8?B?UlhmL0hnL1VjeTZROXh2TStRamhIazVqcHlmMkxOQ1FZTzdSZ2VEaFEva1RU?=
 =?utf-8?B?U2o2UkR0SkxZdlc4WWpuOEdZUklsa2NBZWZQM0FLRzJPT2NUVG1wajc5bHJT?=
 =?utf-8?B?RnZ6djZ5RHVFRFFKaHpTM1lHak10TnVFV2QxQ0I0QnVWaktoSDBRR0x3Wmhu?=
 =?utf-8?B?cXFjQVhaWkFmZ21xN2g3akMzcGhEOFpCeFVPWW53c1BxblBlM21HU3FXaU8x?=
 =?utf-8?B?dkhOZXRoUGlCZGVRUjlFN251RjQ0YVB0YmVGUEwwRVNNM3VlYXJuT2JKc2gw?=
 =?utf-8?B?U2lLWmxoS05TMU03OWxLUG5Wd0Z3UU9JRVlnUnEzWDJidEE1NGdCUlQ5Q2tR?=
 =?utf-8?B?ZldSWStUVEdQNTMxUnl5N0s2elZYQ2NLNE9mcmdmOUVEUk05b1IvSFpXa0ZK?=
 =?utf-8?B?dytaNzRzdU1TV1prOTFlNFM1R1ZpeWljUjlhQUJKaHVjK0lsTit6VkxuWmhZ?=
 =?utf-8?B?S0hGclR1aGNOVmN1TER2VmRtOXNJa1FFQzR4U2R2OGlMT1lkcEt0dlpBU0Z6?=
 =?utf-8?B?UTRJcGhpOVFvR3FDY3Rhdk9ZeGVTUE9vd2VqT00wMm9MY3ViYlU1NkI0S3JW?=
 =?utf-8?B?aUh3MXVCNCtiY2FGZ05XeWZEMytrNFpMa0RHUnVQZ3NzY2szbngyZHdXZ3Vy?=
 =?utf-8?B?NklwMVZTN1J5T1dLWkxLZExIRHNvSXhkU3BIbmJ4TXB4ZktKeUNNSFB0cWZS?=
 =?utf-8?Q?ENM6BAOQyvNGsjwrobJK4RM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F9343E1422F4B648AC8CC9151216A933@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 193cfdc9-d3aa-4d03-acc2-08dc7f08af84
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 11:24:06.0486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPP2y215G8AgSNFBpXOJZttSTNvEpqTh2Ed/iYaI+yKhX4sTxNdXJG/OnzEmvK/UhhFAgfzKuQTK7Qf2U+ytHRaZlkrqcmXC95tzMyobkc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
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

T24gVHVlLCAyMDI0LTA1LTI4IGF0IDE0OjE5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyOCBNYXkgMjAyNCwgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE1vdmUgdGhlIGhhbmRsaW5nIG9mIHRoZSBkaXNh
YmxpbmcgRkJDIHdoZW4gVlQtZCBpcyBhY3RpdmUgd2ENCj4gPiBhcyBwYXJ0IG9mIHRoZSBpbnRl
bF9mYmNfY2hlY2tfcGxhbmUoKS4gQXMgdGhlIGh3IGlzIHN0aWxsIHRoZXJlLA0KPiA+IGludGVs
X2ZiY19zYW5pdGl6ZSBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUgdGhlIHN0YXRlIHByb3Blcmx5
Lg0KPiA+IA0KPiA+IHYyOiB1cGRhdGUgdGhlIHBhdGNoIGRlc2NyaXB0aW9uIChKYW5pIE5pa3Vs
YSkNCj4gPiANCj4gPiBCc3BlYzogMjE2NjQNCj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMjIg
KysrKysrLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgMTYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggZTkxODlhODY0ZjY5Li40OTJkYzI2ZWNmYTIgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBA
QCAtMTIzNSw2ICsxMjM1LDEyIEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiDCoA0KPiA+
ICvCoMKgwqDCoMKgwqDCoC8qIFdhRmJjVHVybk9mZkZiY1doZW5IeXBlclZpc29ySXNVc2VkOnNr
bCxieHQgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaTkxNV92dGRfYWN0aXZlKGk5MTUpICYm
IChJU19TS1lMQUtFKGk5MTUpIHx8IElTX0JST1hUT04oaTkxNSkpKSB7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlZULWQg
ZW5hYmxlZCI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVl
Ow0KPiANCj4gU29ycnkgZm9yIG9ubHkgZ2xhbmNpbmcgYXQgdGhlIGNvbW1pdCBtZXNzYWdlIGZp
cnN0IHRpbWUgYXJvdW5kLg0KPiANCj4gVGhpcyBvbmUgaGVyZSByZXR1cm5zIHRydWUgZnJvbSBh
IGZ1bmN0aW9uIHRoYXQgdXNlcyBpbnQgZXJyb3IgY29kZXMgYW5kDQo+IDAgbWVhbnMgc3VjY2Vz
cy4gQW5kIHRoZSAxIGlzIGludGVycHJldGVkIGFzIGFuIGVycm9yLg0KPiANCj4gQlIsDQo+IEph
bmkuDQoNCmFoLi46KCBUaGFua3MgZm9yIG5vdGljaW5nIHRoYXQhIENvcHkgcGFzdGUgbWlzdGFr
ZSA6KA0KDQpCUg0KVmlub2QNCg0KPiANCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gKw0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNf
c3RhdGUtPmh3LmFkanVzdGVkX21vZGUuZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkg
ew0KPiA+IEBAIC0xODIwLDE5ICsxODI2LDYgQEAgc3RhdGljIGludCBpbnRlbF9zYW5pdGl6ZV9m
YmNfb3B0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gMDsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IC1zdGF0aWMgYm9vbCBuZWVkX2Zi
Y192dGRfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gLXsNCj4gPiAtwqDC
oMKgwqDCoMKgwqAvKiBXYUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0
ICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGk5MTVfdnRkX2FjdGl2ZShpOTE1KSAmJg0KPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCAoSVNfU0tZTEFLRShpOTE1KSB8fCBJU19CUk9YVE9OKGk5
MTUpKSkgew0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1faW5mbygmaTkx
NS0+ZHJtLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJEaXNhYmxpbmcgZnJhbWVidWZmZXIgY29tcHJlc3Npb24gKEZCQykgdG8gcHJldmVudCBz
Y3JlZW4gZmxpY2tlciB3aXRoDQo+ID4gVlQtZCBlbmFibGVkXG4iKTsNCj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gLcKgwqDCoMKgwqDCoMKgfQ0K
PiA+IC0NCj4gPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gLX0NCj4gPiAtDQo+
ID4gwqB2b2lkIGludGVsX2ZiY19hZGRfcGxhbmUoc3RydWN0IGludGVsX2ZiYyAqZmJjLCBzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBwbGFu
ZS0+ZmJjID0gZmJjOw0KPiA+IEBAIC0xODc4LDkgKzE4NzEsNiBAQCB2b2lkIGludGVsX2ZiY19p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKg
wqDCoMKgwqBlbnVtIGludGVsX2ZiY19pZCBmYmNfaWQ7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAobmVlZF9mYmNfdnRkX3dhKGk5MTUpKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBESVNQTEFZX1JVTlRJTUVfSU5GTyhpOTE1KS0+ZmJjX21hc2sgPSAwOw0KPiA+
IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNS0+ZGlzcGxheS5wYXJhbXMuZW5hYmxlX2ZiYyA9
IGludGVsX3Nhbml0aXplX2ZiY19vcHRpb24oaTkxNSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sICJTYW5pdGl6ZWQgZW5hYmxlX2ZiYyB2YWx1ZTogJWRcbiIs
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNS0+ZGlzcGxh
eS5wYXJhbXMuZW5hYmxlX2ZiYyk7DQo+IA0KDQo=
