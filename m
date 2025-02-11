Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED83A3068B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 09:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCA210E44F;
	Tue, 11 Feb 2025 08:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGNFhRSp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9733310E5F5;
 Tue, 11 Feb 2025 08:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739264371; x=1770800371;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZctEPF2pRkRtoH9fF0E9Zs1uWonl3DFNcNvmApR+nSM=;
 b=mGNFhRSpku6Xg+22OoM73BaUkDcbd8ORYIcp/Y5Jzbmj4DIau5Dvx+3i
 5Jm6f7MOFeUeF+0iDNFJQviOIH9MJSGMN9Qq0bClihrqt9MDfjcMC2ZMC
 LmLmti8No7aeMjPnAUwvE86Foc5+WPKioUDjK703YXQ5P5a3UK754FCO1
 K/PSKzmuK0uCWofs9pMAkj9OYd466KgQzpswlywxFm9CKLn444FnKcj12
 nItjuyBQ/ERhpiAKhDFAahMut3kVffrJ/GO83E/jv0cMRAf8Ua/39ukHW
 XJYcL3Z3piS6776EQ7N1YigMwDZPNux9uXNP+alBcOaXA9OC2+twmsCws A==;
X-CSE-ConnectionGUID: REzQ9hpwQ3iTCmDAirLMrQ==
X-CSE-MsgGUID: LFV9+ew4RZyGpRlR468bUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40141482"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="40141482"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 00:59:24 -0800
X-CSE-ConnectionGUID: thz/mIpITiaSDeze1rcjpA==
X-CSE-MsgGUID: eZDoQdOnTMyYUMObhdbNEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112913958"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 00:59:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 00:59:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 00:59:23 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 00:59:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZ4/d+0r5LcOx3TVaJGeQqJDn+PKUggrKpzxvYRL07TUMZN2Vztafq/aouwlGfBby3g/cTpoJMsKeNz150/YQEjYiBKzuUCRUTDDHSI47LlL5vK7OxFCGMpYyvbjlSUYvHT6LH3aNq4ug42sQNdNWhWvKnY0C6zVCBc8xY5x32y9YJv/jAhEi/wrLkd81gsip9BBH65Umu00mttHDf1oO7y90BaNQTSxXpbZUikkxG4FWfKCactqDDhSXgWCqX99WHEUc1/4wrxuhHfV48leCte+KuMMdBRJYRBd9nFbsq2lSg5rUrlnmXLxlEQkClPTWYexzfPDg7x9d4RqW7ANKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZ9Yx4L2uXTs+lILilL174A5J7rtNew2WnP3lPMrZOs=;
 b=Pg7Ebn4HqhWvnPn0TB/LtQPcmmXyrB0H46GsSl6msOMK1tbxUdLdfY+cI51yVAu9JSDHI44yn/5lA+F0+9fpa8Kd51TyiLsAtd5tFGwteUqiKB5g3Ij4XffWsTepr1Vyed+cQZNav3VaKryg/6z0Te3rAJ0Oh5uQmKfSkqscHcc7QOe7BXo/LmlszIznRAo+9zrDgPLpkFTEbrZdL3co4qBVn9Vy4xRu+NRID4Be0XqTkz37QoXlSoEZ5V3XBg12crLNYkK88HIlB/IM1tJdj5SmuzTtdZobyj+MNEjSn7Ei+ad6fc0B+z9bO1DNAWSTxa7Bx0sW2ocx4KdW9o1R1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 08:59:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 08:59:02 +0000
Message-ID: <afffa53f-c835-49d9-bab3-b903ab21112c@intel.com>
Date: Tue, 11 Feb 2025 14:28:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] drm/i915/dsb: Move the +1 usec adjustment into
 dsb_wait_usec()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <20250207223159.14132-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250207223159.14132-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: ef2024bc-010e-4a99-bccf-08dd4a7a546f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU4zRXQ4ZVRwOGhOUzRlVkk1cW5VWDJVSTN1djhpR0x0aWYwb0ozNVBqaEdz?=
 =?utf-8?B?YzRBemZRVjZTMjU0VVFXcXRjWE02dXJKZ0ltd1BzeThTa2FRcGRKNWMzZ2tD?=
 =?utf-8?B?V2Q3Z3JoaENoZisvVEk1eG1RSXp0WkdQRVZMN3B2R3UxRlFCVjFnVFNzOHB4?=
 =?utf-8?B?UnFlUmdJNkF3K3IrUXVsektPSU1VbVV0MVl3MlFlVUN4N3ZSVkhmU1FxZ01h?=
 =?utf-8?B?Z2JFTzRVQnQxR0pta0xFWW81WHdwMzdWR0ZhdGpJdHlKR1E1TzJJbmpVdXpx?=
 =?utf-8?B?SjlZQTFOWHFNWmhsY2ZBem90QTVqRHUrVHlFcmlSRlloMnNxNFo4SWdURDVX?=
 =?utf-8?B?RERnRi83cEpVS1lsQUNLRnNzTVI4VTQyN0xrRlM0Nzk3eFFCZXQwQ2t2OWNL?=
 =?utf-8?B?MmpXU2YxamkzeFIrcHM1RHpXamFCZUN2V3N3OHFxS1RwTHJIN2tJR2hXdXpl?=
 =?utf-8?B?eGh5TGttTjBHN2tIZHlxUWl4cElWM1dVV2dndjRYSXZyWThmVEQyR2RSQ21C?=
 =?utf-8?B?YXFBY29ma1FVNmJIemlNYlRieU1JdWpzaWM3eFlWTUlnL29SaEVDRWhYaFRp?=
 =?utf-8?B?azFNV0ZOZVdBbnZ6eDF6c1ErR2NWMGx3bzEyd3FOWmY3VTZYUWpXaUgveFpR?=
 =?utf-8?B?R0ZJdFdkNWx0ZHRycmhKTW9PM1BveG9tdEZONHMyZXZqUTFOaTJLdVZrRjVY?=
 =?utf-8?B?enArbVUzR0FHbzlHb0VBRlI5YTZuaHZuNytKOVY2aEYyTnNKamR0YUlpVHJl?=
 =?utf-8?B?Z3JuejVDeUYrTEx2OWZaTlVCRFdnUjM1TXZNSElSQ1BtVm5sL2lCNHBjMXF0?=
 =?utf-8?B?Q2Njd3FDeVYvaThEc0VmUFhlRHY1dVZ0SHVESndkZDlkREVNUTVSQXVNZHV0?=
 =?utf-8?B?Z0Jkbnorbk8zaHJjWWQ4T0NUWTVhTHJJdmpIN3VpYklGQzZXb2xSZ3cxR04x?=
 =?utf-8?B?Q0phYzl4UzY0TWVIN0ZsU3dxVmo2bTBoaWFkaHBOdkpFcEgweUtVQ2RUOGpD?=
 =?utf-8?B?OURhb3ZCS2dYTE9hNjhBb05TMjBvcnJsdXJzdzBiNzdaelphR05ZMmJIaUZm?=
 =?utf-8?B?YjY3OUNiUWtHSnhNMlF2V0VwK1pFSXhOSXNORDBqNndGaWJxMUNUZzRqMkFN?=
 =?utf-8?B?a0JWTStEUE5FN01oWEh2RzlrRW9yTHUxd0piSE1DMGNmdEpYQjkxM3FiVmlw?=
 =?utf-8?B?RkZyY3VxRkZJNU5CMGJoM3VWV2Fib0diNUtxVVl3bGpmNUgwbllaamdqZEpm?=
 =?utf-8?B?NkhJTW9GQ0lZbWttK1hRbktJRGJrUGJ2TkY1SThsV1FnQTVIdHQ1LzMzU0cv?=
 =?utf-8?B?amYzK2dPVFVXNVRDYmM0RzFsaDlaczQ3Nmo4WXJQU3NHUVdKb1E2K01GZjVJ?=
 =?utf-8?B?dE1zMUFHUS92b25PNFpYQXAva1ZBU3RVT0dYS2UrdzUzMEJ3KzBEZkh0b2RE?=
 =?utf-8?B?eWJYNjRLTC82TDRJRGlQaStKOWpEQytueGNFZjRoVURaUVdzbjBicDdDS0RW?=
 =?utf-8?B?bitVZFQ2ZVRqbWRNUkE5QzBaclpodjZGMUt6RlBwdHV4UmVzcEl0aWtEL3BV?=
 =?utf-8?B?SmtNTWEreklhUmNHTmwwTS91elFNbm1UcWVJZzhXZ1dld1NPZjZRZlc4M1Vh?=
 =?utf-8?B?cnlzd3pXN0srL0lBclplUFU4emlXWi9EYTkxalYxNnZ6NGJ5MjVqT0hBNkRT?=
 =?utf-8?B?MTBTVzZCcytpOHYrSUtBWVJmenptVTdRSXJKVXpldmtNY05uNHM4cCtjelNR?=
 =?utf-8?B?OWpTemxScGNOcWcvSWRLbHlISzBFbmVjUmRUSTVGZXlhckxRZDNZUFRGSUlD?=
 =?utf-8?B?dUVneHJBSyt3QXlwUkNJK21ObEFFYStYOUlGZEI3Q1ZHL3pZRjFUaTZIOU9x?=
 =?utf-8?Q?UuDKTSfwe/qXp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVNiZGRWZkZwa0FNMStQLzR5dndYNzlFR3ZCaGs2d1RKbURsYUJaNmlzSDNU?=
 =?utf-8?B?a3ZhemJZOWdvTk84MllZVXFiT0dQbG00Y2I1MlVITEEvL3dra3B2aGpESGM0?=
 =?utf-8?B?aCtvdVBLdzlWbTBlLzRDK3JuT3J2SGlyclo2V3ltK3pmWXZvZWVobUNqYURl?=
 =?utf-8?B?dG1tZWNmOCtQdkFpajZFVHZnMXRCc3lzY1A2MHo2MzZMc2E4OUV1cVllUWhn?=
 =?utf-8?B?L1dRMzRiM3FyWHhwTjlFWlF3MXdrcnFHUTJ6cGllZjNTcEpYSG5TSWk1c1ho?=
 =?utf-8?B?ZXBuSXNmYmVCcVIyS3lnZjAxbUNpc01WYndZd0ZRRG9pUm5ZZUVPU0Z0clEy?=
 =?utf-8?B?dXNQNTRweTdheHVRaWZ3V3NBSHlLa1ZJTFpPN1hwUnZDb1VkdkxWTzJGTVUv?=
 =?utf-8?B?NFpIdm1OZTRvNy82bGlLK3VjUk51NERyU3FHTW9wZDIzQmZoT2QwWVZSR3JB?=
 =?utf-8?B?WHM0VjlRVURFbi80a0F6aG5oUEo5Q3ZiTkNIeFV3Yy83VTAvb2tkWml5cjNr?=
 =?utf-8?B?QUVuTkE5UjBRVnZWVkJRVU5mMk8vU05TY0NyZ2hNa2pHYmh5b1pZYzBWbUdh?=
 =?utf-8?B?UitIMHlwUnhleCtnUkpqSDRTeTF4OHVMU1B0dldlMlVlWkNCTUw1VER4cHR6?=
 =?utf-8?B?dlBTdE1xajhzMHVGK0JkKy9BWlVHT0pXdWdqTVZ2MDhzek1GSldnejNYanY1?=
 =?utf-8?B?T3RpNDVmejJuMklRaHh3TzhaNEk5dXpBUHRWbUZlZ2xnUnphRm9CcGdZU0NS?=
 =?utf-8?B?YlFNQkozWURWMzVRTHJSSFBJbks2TlA4YXFUb1N0dytpUUNLWWFhYmdmTmw4?=
 =?utf-8?B?MUtZL0plYVhwVW1oc1N1anEweGEyZ1NudTZtWEVPYmdkYk9HRFAyeHZxYkRx?=
 =?utf-8?B?a3FFY2l3STQ1Ym1OS3NwY2ljbHpYdzFhc1dVQXRTNGh2c2pNV0hnRTNrdkE4?=
 =?utf-8?B?c29QdWxlMlNWYlpvTmJVKytMWWRJUWlHMzUra2RCaUo4WnFERVZVeEsxaXpC?=
 =?utf-8?B?dFJ3ZExQdXVPUXBpTG4rT3J3bHlrY1N6K2E0NXZPUThKc1JOcFFDeGNEWGdt?=
 =?utf-8?B?a1dmaER3alFYT3FKMk5WUFBSMnRLaUJPeTlnU1ZuOVArVU5hb29MejNnRFBV?=
 =?utf-8?B?RU8xUWRSSGU3YzJlZ1B5QXE4c3ZNdGI2Wk9sdTRNczBEVjRMd2NOSmpoelk5?=
 =?utf-8?B?ZnhFUHVhSGFWR1hwZGEwODFibFZZamY4SERJaWhFdGxPdmNBS0REZGNISDhI?=
 =?utf-8?B?M0o3NWxGZHJBUm1LUm5mc1hZb3lWZEVWbEJnSG1rZHcxcUYwbXRTemhwalZO?=
 =?utf-8?B?aldMQWdOOEJHbnI3a3BYN1gyM05FaStKZ2grL0d1R3BxOWR1RXM0bGExcmI2?=
 =?utf-8?B?U1RkTEh3S0RUS3lkcXFhdzdPcWhtNHVtV0ZsVzhMc0dsanJ6ZHJBcldWSVVO?=
 =?utf-8?B?bWx5RDFXS1RtOElmTVdLTVhtVnNMVWRDd0sreFQzd3lXcTUwWlRRNHY1b3RO?=
 =?utf-8?B?L0M3ZURXVHUzckFXam9VcWduVERqdmVaRzVVcldwZlRkTHRHQjRuTTI1djlR?=
 =?utf-8?B?OGl5bmc2ZHZvQ1BwTzY2WXlxMUxkdUNsVU44ZnNEUHZqVnF4UXlPOGN2cUE2?=
 =?utf-8?B?OGcra2JmanpWbjRqYnBkdWZsbGhDRjl1NzNZdnNaNzBJdG1VY285bWU5RWNj?=
 =?utf-8?B?eVpmeDRHMG5sQVFadG5nbENMeTR6bzhVRE5yT1k1SEVmRzB4UE1YRHowTGN3?=
 =?utf-8?B?R09FU0RkT1R1amJDOEJFZU96MzZZYi9UUFJBWFMrdmYzTTZINmlrZ1huSUcy?=
 =?utf-8?B?WmsrdFRuRGpZTSs3bmozTHRreGhyaTY2OHp4OFk3V0gwa1JGLzBaZGd1cjRB?=
 =?utf-8?B?djJqMDRBN3U5SERJdFoyRDBwNHRFcUVYc1R6VExiVGNaYXlBUllsN2VKeUp5?=
 =?utf-8?B?eVplNXBlM0NSVVVnNy9ZaGxZVHRxdHNEenNpUEVXQkxpOCtpSmVpQ2t6Zlpz?=
 =?utf-8?B?dytPc2wveUFxQUZDWVRHTzduN2FtL2tBdkZueHJUbktVMVRaWDByWWxiMS96?=
 =?utf-8?B?Z0w4Z0dpdnVBTy9xeFFnTkl0YXR4Rm9PM0FhUmN6SUh0WWkyY21jcDQvcnha?=
 =?utf-8?B?ZUdIS2U3ZTBvRCtXOEN6OXExN3d1RU1mc3RaMFAveHk0WW9RbVhtMlhQMVMx?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2024bc-010e-4a99-bccf-08dd4a7a546f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 08:59:02.2805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KSSwbkM0hKzTQ39PmcLXYSg+YowC8zHsSSRJDOZ0wADdD66sZFn5Qe6+7vhUk5QGc1esJMjfzrQ+VG+7CYyFdTXpffD/1rrdpaTFonvnf+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
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


On 2/8/2025 4:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The "wait usec" DSB command doesn't quite seem to able to
> guarantee that it always waits at least the specified
> amount of usecs. Some of that could be just because it
> supposedly just does some kind of dumb timestamp comparison
> internally. But I also see cases where two hardware timestamps
> sampled on each side of the "wait usec" command come out one
> less than expected. So it looks like we always need at least a
> +1 to guarantee that we never wait less than specified. Always
> apply that adjustment in dsb_wait_usec().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 2f2812c23972..f8bd6fad0c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -369,7 +369,8 @@ void intel_dsb_interrupt(struct intel_dsb *dsb)
>   
>   void intel_dsb_wait_usec(struct intel_dsb *dsb, int count)
>   {
> -	intel_dsb_emit(dsb, count,
> +	/* +1 to make sure we never wait less time than asked for */
> +	intel_dsb_emit(dsb, count + 1,
>   		       DSB_OPCODE_WAIT_USEC << DSB_OPCODE_SHIFT);
>   }
>   
> @@ -622,7 +623,7 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
>   	const struct intel_crtc_state *crtc_state =
>   		intel_pre_commit_crtc_state(state, crtc);
>   	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> -					     dsb_vblank_delay(state, crtc)) + 1;
> +					     dsb_vblank_delay(state, crtc));
>   
>   	intel_dsb_wait_usec(dsb, usecs);
>   }
