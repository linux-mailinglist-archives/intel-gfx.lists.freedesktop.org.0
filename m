Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761F2972BD0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 10:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAF610E74B;
	Tue, 10 Sep 2024 08:14:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5Kht1Wa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC7610E74A;
 Tue, 10 Sep 2024 08:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725956074; x=1757492074;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WlgSbWhqXCCUfxYw0UdOltDW1+dvQrinYUsmAmJSqC0=;
 b=O5Kht1WaPXd9u458sHHFY56ftdFB2BYdluQI0UuQ3M9xmr9trJZokHxJ
 6CsDCgpc+1p0evcIbpbWoC+8EC3Rr13wfzotl+ww0bef+BUHvWz2QEJbg
 GUI1KZcwT33huhGU1wjKTE4HPPSZRD0MlDgr6/yONXjs71fvSNzyRBxpr
 jS0ib3Kya6zdgJGYtN5Ey2JECVKORyOpEmC3Gs1KSemvhPkl73EHG6EjH
 nrqh1SMhu7EhIXKiDl/WoKXiZ+G8RbJIWZu2OI3y8ZIyEzKjXc9R4w3Ba
 iejGFtQvO7FG38y5BdIdVb7uXwKCyI37Qbq0VHlA3QE/weuY0rJQHRYJ2 A==;
X-CSE-ConnectionGUID: fbzMGB+vSVydTdI3Aic4Xw==
X-CSE-MsgGUID: iNftBrY7RjOu2oBDq8KHHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35826341"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="35826341"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 01:14:34 -0700
X-CSE-ConnectionGUID: U8jw5CVTRWqAOHjdIIPN0Q==
X-CSE-MsgGUID: VyhC47zlSc+7WvPIe8/LsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="66742740"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 01:14:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 01:14:33 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 01:14:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 01:14:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 01:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWQdx1Umi06je0mimdFjU1o7VJLnHc4jkS169D0Tr6q6thR1qI+qa49jc1GZ4y2L6ZQY5efZW84TgKmDWOhthmDnyOb/uRLHCTphlGpyiA1pJmTR/xn9L8KT7j0RYTAHk5rsn7+ewDhAS1CLqNkkM/TQBoi/pfnFDnYH4K0DEcAymGWC7T8LT5F6Nth2JLmDZ6V1BjvOV5WjfUoDb1cl16999oVIEll20DOa+Zx5XiHf1i/4aYt20mK75KSyE/Fk4wF81XdUKngX8aVnIL6lP0l0cNHAHkWF0LrlZxTtkN9WZxznX7wA3lyB4lAwM6/jz1lFOemyCpBVhG4tnsV12A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WlgSbWhqXCCUfxYw0UdOltDW1+dvQrinYUsmAmJSqC0=;
 b=W5wttU3pVrPQN6rDLyTpPHkag/yFrSzApcOqY3Zucyf3Vvm+kw0p1W/LFl49SFwDuyasTOOQPh705Z5w2p+QX4K/xAKkQ2GyI0IEAq0Eqt5zb5tt96JlhBsxqJMtTGB+o2kJDO9v2ofUIFb6U9NTtxTzMoCdkWKsL4Bg3LbgNDzlHG4ktcLnopHqMs/09YE8CheUg9PfF2ci1rNvDfVPglXXJoIY+ncxoBh2QhXJ175QNvDLjcpe92crB7Gxl3oVMgdfzzokSAfwpggdSp73Ul7SVOOCoCLviDvHHG/dV/LRUgjtd1tsYYuAMCMOr3XIm/XMcQpmKIe1DL4SD8XPSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by MN2PR11MB4662.namprd11.prod.outlook.com (2603:10b6:208:263::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Tue, 10 Sep
 2024 08:14:30 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%6]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 08:14:30 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBTb21l?=
 =?utf-8?Q?_intel=5Fdisplay_conversions?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFNvbWUgaW50?=
 =?utf-8?Q?el=5Fdisplay_conversions?=
Thread-Index: AQHbAHcey34y7VC93kymGmnsse5PhLJPhKQAgAEtKCA=
Date: Tue, 10 Sep 2024 08:14:30 +0000
Message-ID: <PH8PR11MB6753783DE246E441923D1D59F29A2@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <172563893277.955373.3337986783221513120@2413ebb6fbb6>
 <Zt8DHPNduv0MGIjS@intel.com>
In-Reply-To: <Zt8DHPNduv0MGIjS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|MN2PR11MB4662:EE_
x-ms-office365-filtering-correlation-id: f43c9d78-b3cf-4e6a-ca54-08dcd170984c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SFVyc0QxcmpiMGp4cWNaSzRTTnNTTXNLR2xUbThrWGY3L09kOHhQNGl2eTBP?=
 =?utf-8?B?MW02M1dEUjEzdWpmZ2J1dFNrZTZuTTZIQzJuVUNuL1BqSFYvRjdRdEkzVVBC?=
 =?utf-8?B?YzlPYkc1UTFvc3Noa1AwUEE2TzdkSng1dVRqcGc3dTRwZ3hERTlRbktjcTRV?=
 =?utf-8?B?SFRyUGpVMkpzODNCNU9lZks0UUZLcnFramdQV092cGF1YnVTQnJqVlRXMUVY?=
 =?utf-8?B?ZjMxbmJTL0szbjhXMGpLU2pCOWVrQXZrVFNSQzJVMFdzMzhucXNrU1BpL3Yw?=
 =?utf-8?B?TnI1R1FoQ2xKalgyTUxIVXVuRm8zZDFYZ1dGM0pLMCtCcDNBQ1Z4bUhEV045?=
 =?utf-8?B?V1Z4c0E3Q29Ob2dMR1dZRmQvZmhNTFJwTm5UdHZ3bEFuKzRSWitwT3lncjUr?=
 =?utf-8?B?YTNpYk9jVHUwQWxYNXlzdlE2aXlNbDBQTnhWVWZ4WlduMHozUHpoRmZpZ1RI?=
 =?utf-8?B?VHBaK0NoM2FPMDlUOXFJeUNhTTJ4NHR1TDRORG5PYktITlU5RGRWMkVmYytF?=
 =?utf-8?B?UEc2WDNtMzh5Qy9zMzBhc1pVQnVad0c1T1NPWHQrQ1NmWWViQWZIN3o4Sk10?=
 =?utf-8?B?NzVNanlOc3hIOWZ0ME44QXBoWG55ZHUxaFh6dFZ1dGRPZ1BPOWFobXJTNkM1?=
 =?utf-8?B?c0dQenFBWG05ckVBTWNZSzBNYW1qbW5OdmRUS0gvVm9iSkNjdEh0OWdMMEl5?=
 =?utf-8?B?UUtERml3VGlzSEoySDY4b0hSZ3dNSFJhS2VVTmZHVlFhbWZCNnlmWHlkUGYy?=
 =?utf-8?B?dVJoYkhjOGo2ejVLUUw5dXBsK2VtZkRRa3lZTG00b2FkajlqY3JjQ0VWbGtB?=
 =?utf-8?B?MlJqQktjUzBDTHl6bTBSYXI2Y2hhT2pvK1ltQmFWYUllT0VpN1k5dEZrOVM4?=
 =?utf-8?B?YTdyRXowNVBNeEZ4bmdMTlo2VkRBdlpjeGJiSW00OElQcHRPd1g1RFBEdHpV?=
 =?utf-8?B?cE8rVE4xVHFHS01TSmhtU2tJNThXMDdNZWFsMXZxU2FMYndLcy9FeTNoZ2lK?=
 =?utf-8?B?NUZjNXR0cmNSMXJ6Rys1VlVSdVJlMzZ2c293aTRrL3g1V1B4S0dCM1N3KzVB?=
 =?utf-8?B?aEp1QXRqWVFUU05BYW11d2VJWHhwNVJQS3RhdVhOczl3ZWhpQVNFcDgrTVpt?=
 =?utf-8?B?cUJaM0hjdnY4MVloemF6MkZrRG0vQTdkRzlQUlgxS0FJWmxjUGUrQUNEbmRC?=
 =?utf-8?B?TWtnMTFjWkRQaHh1c2RHVUpaQ3hwKzRaUDJvTjN0TGtJTFAyQWxiK0NUSGRw?=
 =?utf-8?B?TUlFUE1rUlAwN3FaNGgvMGl4TEdXWmxDU1dZSEovdDBDMDJ3V1ZiY2JsSlMr?=
 =?utf-8?B?U0JHMW81a3JoYUFmeHdMbGtZTWUraGNnREd3VEYyN2dHOHozeHEwbDFFWTd1?=
 =?utf-8?B?Z2E0eU02TGg1WjlMMUtEcmxWdkxtNXN0TWFQaVVMWS81MlFFTWVBTXR6ZWJI?=
 =?utf-8?B?eVZ2dlhTUXZKeXUxQUhhekVoaDFFRHFMQnRVMEowUndaVzk5WmMrRi9DOXVa?=
 =?utf-8?B?NnJuaUFtWVdveTBHbDJKODYyMUtQMGJXSW1ycWhOQ1BEWHh2MmRSNHczMUdm?=
 =?utf-8?B?OXQ0SDJ6amxodXNqaEFOcUJBMzViVjZYM2UvZmtoLzVUeUh6bEZVZUhqN1d0?=
 =?utf-8?B?bUNOdUdERFhzdVl0Q0x5dVRXUlhPTEUrM3NEMFZpamdrWlZXY3RPL2xiWkI1?=
 =?utf-8?B?UTF4Q1BLVjk0SjZGSUg5ei9EYnZkNGxHMnZ1RkJZbzlmeE9xWFNka1ZRU3o1?=
 =?utf-8?B?VTdpeFFMUWs4cmtvc0xNYW1BM09CYVMvM0dEcmVQaHBaeHlGUlE4VDNQT3h5?=
 =?utf-8?Q?Uxj3e3NgMb2hEg2TxlsOXASG/YcwcHCbXcYCA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nmh3RytCcEY3VmUvcDFIQno1ZktRZVo5M2QwODU3VDkzOGFyL1NWU3pPdEhE?=
 =?utf-8?B?NUlnMndLQVlibkpWTnU5QVJnZW5aK3VVWnd5clphbTRMSXVJWXg5MzJaRmpy?=
 =?utf-8?B?Tno4VzE5SFkrdEIyd1ZqK0h5MUlPYm9qVHlSREwxWXFoUnZDb3BwdXczcjhu?=
 =?utf-8?B?cXYyTUUwc2pic0hNWFd4UWhJQ0R1dk8wSE8zSk5WUmlYRm5GdXJ3dDB6cVMr?=
 =?utf-8?B?VlFBd25FcmFzYzEwcWVaV2x4WGYyQnZMRXZnUU5rSjJUcmxQdVRQT2pMb1hQ?=
 =?utf-8?B?MWRzK1ZCRWczTFgwY2NhMVgwcUdGbkpweUhsV0l5T0VjWlZ5L3JRNjlCSStq?=
 =?utf-8?B?VFAzblJuMFNiK3NlRFBITnp0MGxtWEhwVUViN0F2V1FJbk03ZmZJalJUQ2Y3?=
 =?utf-8?B?RTN0WEx6djc0QkJ2WFg3aG0xS0NxU3hkaERzOC82V1l2anFNQUpoUTB5RFli?=
 =?utf-8?B?UUdRVU4rTGFoZ0ZyY1g5K2orc3lxTEd4eFlNK3JJanRQem5DbW10azhmalJw?=
 =?utf-8?B?ck8yNHBROU0vODFOR1NhbmZvcmFjU0VVUTM0TUFYMFZwamYzc0Y3NUJ6UDNS?=
 =?utf-8?B?ZnY3dmR6cW9iTG5KQnBWUzQvcExUTmg1MURXZkxyOFFGeTNDaXRsREZKaURC?=
 =?utf-8?B?VnVLVHVvS0ZRVFVTNVl4aWdjdFZqcnk4NHlJSHBrRlkrK2hiSWxhUENJcXJw?=
 =?utf-8?B?bnkvSHVDQXJxK2tVSWVzN1dLcWxkVkFwZ29hOGtzSlM4SXhYSDV2WjdDL2FI?=
 =?utf-8?B?em9zL3l4OUhkYTZhaE5Mc0QvUGxVU3hmWXlSYk1PUE5OQmNhRlpJRDJWSEFp?=
 =?utf-8?B?cFRUL1lqVXZNSEliSCtLL05EaXdxVzVEVWRYdkJYQ20zYmJMbXlWbk9rRlVU?=
 =?utf-8?B?Wm1ib3M1YXhYZStXMHRWbllRUE1LU2xRZFVvUkUzb21mR2NmSXNVNG5FUzB2?=
 =?utf-8?B?cVFIZXJkaituMjVHQ0dzUUFoRjE1dXJPV3pIRXBwbHgreGUxUzkvQ2lsYlNv?=
 =?utf-8?B?SVdiZG9uaUVXeGF2U3QyMlNjcnJZYzRSUXVYQzVKS2JPUEp2dnEwcDJJR0pj?=
 =?utf-8?B?bkxxeWJqMVFsVzRiS0lTbTBtNzUzU1lkT2xPSklUelBRUlFhdGx1Sk9nOEZF?=
 =?utf-8?B?Q0JWMVhBcEV0K1FoTkhzSEQvaXJYYkxjYVZFcDJTNHY4Tk9aSHZKdXJBQkp1?=
 =?utf-8?B?czRCYUVGd213SnZsTWNDUkJrZW1kRkpZZXpvMXhyTzBWNXFQc0tMRFFVYXNr?=
 =?utf-8?B?a29PcEZsekVBK0pFUmxsL1RsejBsNW92b3NGanY4WVFRcTJ3NjA2Zy9DRUE4?=
 =?utf-8?B?U0dLRFhKcGNDMVRmdjRJaWd5U09PaG9kMllOSTk4VGNKRGYxb3EvUy9Ib3hV?=
 =?utf-8?B?d0RyV2lpbDNzZHFxd2N0blIzWGFPMVlPRHZId0dXRWdVWkI2QWVCQnVvK3N5?=
 =?utf-8?B?YTVHSkRxbGNTMXFRNXoxU3B3NjVuVHlENDhyaE1yNVhLYmllYWMxNVcyZXZa?=
 =?utf-8?B?NjVrcWZWczlrYzBUZVBpSEM2MFdkUnlLR0ZBQW85WHJnTEE2Zm9hUEErbEFK?=
 =?utf-8?B?RS9CMFhyeDB2aCs2U21DOTlyV3NIcnhOVU9GQ2RnMEtXZEZjWUNOczR0ZkN0?=
 =?utf-8?B?b25UaE5wbDNRM0MrQ3d4RzBHQWh3TTNqWE5Sd0ZCamo4WGJNeUVMRWlVS1l3?=
 =?utf-8?B?R3NKdVpQbzlZQkFhVVVYZDcwYmo0RkI2dEJndTlTOU96U2N6TEI3YUp2MTBR?=
 =?utf-8?B?VUo5Q2QxQ3lmTEI1Zmh6L1VHcitYQ2VpSmR6SHBpN09MS2h5b3loVVhLMFRK?=
 =?utf-8?B?Y3NHdU8xQnN3S0tvL2JSblJBS2lBUjRkOVhML2JIN2lLS1NvWVcrTGpIb1ZH?=
 =?utf-8?B?dDVyWlVFd1NPL3cwM2dvMWRxRWpEMTFqV0ZSZ3dDekdCcVE3V0p3dEdDekVu?=
 =?utf-8?B?aEhVQmt5RmVhVzRSRzV4RDBLemdlT3Y2MWFhdFNPT2lqZzMzRTNQYmdVVjlZ?=
 =?utf-8?B?ZTRMbHJQMmVidVlmdEc1ZlRMem8wMnFlRkdleEx2YVJMbVNEei9EcXYyZ3NT?=
 =?utf-8?B?K0NTTytBd0JwV2FwdDhDN1FNTHlLa3Jjamk2Y1lZZ3hQdnNLZU1GVEFMTFBF?=
 =?utf-8?B?MUdrM0R5VnRkV09aM0tTK0MxWmJrRk1HTndOZFhad2pKMjh0MGpaNnFHVXha?=
 =?utf-8?B?b0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f43c9d78-b3cf-4e6a-ca54-08dcd170984c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 08:14:30.1409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGpAp0zFliKJtQuKFZWu0G81sTaTe0/P3PrcdlGQHOtLWKWLFd9glO2mviCXQ62mbq0TZrQbTSsDmiu18oKzQzHqWwhPQmWSNzp6eL740w4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4662
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

SGkgLA0KDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzODMzMS8g
LVJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmrDpGzDpA0KU2VudDogTW9u
ZGF5LCBTZXB0ZW1iZXIgOSwgMjAyNCA3OjQ2IFBNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KQ2M6IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJq
ZWN0OiBSZTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFNvbWUgaW50ZWxf
ZGlzcGxheSBjb252ZXJzaW9ucw0KDQpPbiBGcmksIFNlcCAwNiwgMjAyNCBhdCAwNDowODo1MlBN
IC0wMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBT
ZXJpZXM6IGRybS9pOTE1OiBTb21lIGludGVsX2Rpc3BsYXkgY29udmVyc2lvbnMNCj4gVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzODMzMS8NCj4gU3Rh
dGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBCdWcgTG9nIC0gY2hh
bmdlcyBmcm9tIENJX0RSTV8xNTM3MyAtPiBQYXRjaHdvcmtfMTM4MzMxdjEgDQo+ID09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gDQo+IFN1bW1h
cnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTM4MzMxdjEgYWJzb2x1dGVseSBuZWVk
IHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRo
ZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+
ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM4MzMxdjEsIHBsZWFzZSBub3RpZnkgeW91ciBi
dWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRo
ZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM4MzMxdjEv
aW5kZXguaHRtbA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDIgLT4gMzkpDQo+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBBZGRpdGlvbmFsICgxKTogZmktZWxr
LWU3NTAwIA0KPiAgIE1pc3NpbmcgICAgKDQpOiBmaS1nbGstajQwMDUgZmkta2JsLTg4MDlnIGZp
LXNuYi0yNTIwbSBmaS1ic3ctbjMwNTAgDQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM4MzMxdjE6DQo+IA0K
PiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMj
IyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlOg0KPiAgICAgLSBiYXQtYWRscC05
OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4gICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTM3My9iYXQtYWRscC05
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzgzMzF2MS9iYXQtYWRscC05
DQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCg0KU29tZSB1bnJlbGF0ZWQgdGhpbmcu
IFBsZWFzZSBwcm9jZWVkIHRvIHNoYXJkIHRlc3RpbmcuDQoNCi0tDQpWaWxsZSBTeXJqw6Rsw6QN
CkludGVsDQo=
