Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA948A54E8E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 16:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFDC10E9D4;
	Thu,  6 Mar 2025 15:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQ+9HcdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C80910E9DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 15:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741273638; x=1772809638;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5zBpNg39pQ/pKjgsBwN2eg3aGg0T3NmHabVFUSCWHkE=;
 b=ZQ+9HcdLI2nOCse7FMgMorFTvdmb8Axlljf87qIu7iBvetNE/4Ui04pZ
 fRmnAqks2CAxdjQH1HG1HU7FdVobpZ2NsZjlgSRbe3Inc6oQNONpNHsfr
 5B3w41Xc/c0Nt+NKGlgoumKNCaOjBFE9LfF3Ui1A6Vl/O1gNzsk8vG8N5
 CiGWp3Y2r7M/A7f/JDaVo6xjYGcEQp1a4pW+Xt1nWOwq1nBiqeRGL35hs
 e7tkSi+etAK5Sia1k/xX1Phhj7/VcMQzaE9ii+SpfmeSZw0wDanQApoVo
 StuCYkoqU0JRK0Kh7aIhCtcgUpWfIKGMrIskm/MTeeYz4fFLOHlDV3cOm A==;
X-CSE-ConnectionGUID: qQPWmNPrRMO1YIrJUYTYLw==
X-CSE-MsgGUID: JCe6wcqOSoOP3I9LlU/56w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52923881"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="52923881"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 07:07:17 -0800
X-CSE-ConnectionGUID: /ZleeACPQBGz6byM5Pa2tg==
X-CSE-MsgGUID: B4genX/7QEGXRBMQo6cuew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="118787327"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 07:07:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 07:07:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 07:07:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 07:07:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPXmfeYNHEZiqQCReeGZTcckSbu7oW2KywRoxr1WBdghD85q/l8qAqsXsTyDZGNejS22er75slGUMI329pNO20GoBi32p2A2kcfapuad9Fbgw+9PyO4uoKc2veA4TPKA8BLKUyETNv1jWmd/uKQEnb57vW+FpHssY7NLRyx0e6FqZRU8HOBzVTat+xm43CyVZ3BBBiwahPgIuHeSvbclfklb+25STHJHUhziKvh+2Y1iI/0CU8whYz4CUAklEPfZXtLhBXHRON0UVpKh2FpNGMaS23YWZ6dRPshX1kji4pihahB7d9fai+sHN99pcrI2CaBFyzCjsPZE8n4AlXgMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BAJiX4I/itQZK8k7egQ+b33T4bnyiq9LoQsh/jMSOtw=;
 b=EOd4BvMwh+Awz0sNOgTdsiPD7r2CeYjpl7NsCPUdbGOInskQcEZjaHC0THcYwiiL/73TPyetv3IQh0VLFD78FA7+R9DamJeNbGOV5Hf2C2tdIRtp8l5RSqBBUrDS6z/ewQhpkBsbeHO84i9qSR+VGSX8+jSXarYoDTtv9IEVYk99udwe9Gd1t16Ge6r6KBwZx85Ai1FHjMxizXDhJx5hYZJAKpjyRZPswQOLmkKgkFcO914tgw5ey6ciWPT6wR3p1HwIwQB0TKm0hPRmqSrld81HJIFc+1SUsCXFJ22Z3K1IxdHK7+vMH+uf+xjA9DOw77xQUhEZhXRTej5rfi6DPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7963.namprd11.prod.outlook.com (2603:10b6:510:246::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Thu, 6 Mar
 2025 15:07:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 15:07:11 +0000
Date: Thu, 6 Mar 2025 15:07:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Mikolaj Wasiak <mikolaj.wasiak@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@intel.com>, <chris.p.wilson@intel.com>
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
Message-ID: <vabwqm5bo2jvcvdz2oicooaqmef4qeej5ffzcyzfnjlna6dsha@fdtdyy3afn3d>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
 <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
 <174125743728.766812.11198274438700228285@DEV-409>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <174125743728.766812.11198274438700228285@DEV-409>
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7963:EE_
X-MS-Office365-Filtering-Correlation-Id: e33c5a44-7fb5-4002-200a-08dd5cc091ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXdOdTdubUREZitHY2ZHa1pjMWZzTnVGblBBQVBxQWtmZ3NPNzg1bXA3YnBt?=
 =?utf-8?B?dGdHZEl3L1QzZlo2c0Q2Z3BsRmNDVXlrTkZrR1c0UlZoMnVZYTdXeDFkV245?=
 =?utf-8?B?Y2k0VUNJT2N5elRkYXFzd090THJSQmZWcXZBUlp6dlRZRm1BU0NkWlJEdUJO?=
 =?utf-8?B?Qm1BWHljb1hDR1lHdW9sZHMrTVdhcTEyY1FtMjVMT2tIRU9IdnQ0Y2paRzB6?=
 =?utf-8?B?TmFTZmJ1YmwzTzRFMDdRb1U5SHFyTHNUN3hyb0dzbmYvZGpBZHNlV0RpRzJX?=
 =?utf-8?B?QTdqTTBUQkx4UE9nZ2RWR0tmbXhrbC9CTGYyMWRxT3lLczByUVhsc3ExOGc0?=
 =?utf-8?B?Z21HOGVKclJaZ3pxT1hlTDJoL2h3Ky8vcGhVZURwZ0tZMDdxR0VFRWNQYk9l?=
 =?utf-8?B?MmZnV0kvazJuMDZQY1VhQlo4a1NPNnlBV1QrbGhLZ0dJRkg5Y1IzMTlERDJW?=
 =?utf-8?B?K0FHN2hBczhnTkkwTUF6VXVMeDJFRTQ1cmk4cUtHVjlmTjRlSjlwSm5vWDNZ?=
 =?utf-8?B?dE1lNTZrV1BaUmhzQjBPZmNxNFhpc1lNNUhjUGtNOUlxbGtpaHZvT3BTUERO?=
 =?utf-8?B?dFI5UzN0ckJoQU1sZ29pZVhUVG5Nck5HV3psc0pYMGJaa3pKck8veXhuTEpW?=
 =?utf-8?B?UVJGNGFDNEZNd0VkdmVLS2V3SGdiZjd6eFVFT3ZMbTVyVmlaQTFlYVpyL3A0?=
 =?utf-8?B?cTEzY2ZpWlVLcktmelhFT0lwdkplQXcvS05VUjZJUmkxaWxDUFVoUGZkUGFO?=
 =?utf-8?B?WGluVkdSV0xleldWRi91NEhodmJXRGNOTTVPUlpHQ2pwUkVkd1hiTFlKRVBF?=
 =?utf-8?B?UGhsYlcwWjcxZ1ZVdStwY2VpWFdYQjRMYUZyc0s5eVhoV3VoR00zNHNXV3JW?=
 =?utf-8?B?M1Jzei9ieHBERDQwei9vNmhnd0NRTzQ3MWNxamdwTi9mY0cwUTJNa0FJVzJM?=
 =?utf-8?B?N1U1V0VLNFFYRk5wUGp4dEJUeDE3T1BjaHVRNUtuSFBZbUNuaVJpWkNtUzFS?=
 =?utf-8?B?bmtGZmNpTSsxRDNmRlQwUkpmeUFBelhFUzl6RVdzclY5Z25XNmJ1SHJsTk1N?=
 =?utf-8?B?dms1MDk3alU4WTJ3dnFVUmloLyt1Vm5ybWpDT2lqZ0RHQUUyQU94bWZ0SVor?=
 =?utf-8?B?UnY2QlBzbVIxelpEN1E2MisrY3QyNVAvU0NnY3Q3Ykp0TzRtWENVRjZMd0tk?=
 =?utf-8?B?Y3U3Y3p1alAzWktTTVJpNmlFNTNYUE1mOElTdzRvVnpDS21pS0xaWm1HMFcx?=
 =?utf-8?B?YTV4emlybDhzMlY0KzFhVmlDcGUyZ3MxcE9oUnBxWTJsamFJcUU3b0hKN1FQ?=
 =?utf-8?B?Q2dId0N2WTducElmK3BlVkJmMzJSNFJuRDdyclV3T1VnR3BtNVB2ck0yNUV0?=
 =?utf-8?B?WWJOTVpsSWpYN0xHVjJocTlhMDFNcnk5aEZuRWk2aE9QTExBMTBINFdTcUVV?=
 =?utf-8?B?S3FYMGNTSStNRXVwQlMyTUx2SWNKb3NPU21nS3M3bEdpTVZkVHc0UEx1aGpZ?=
 =?utf-8?B?SHJoZXllME9mb0pQRTk0NTMrQ0gxUCs1YWRSRnA1c05YOVFsc3hhbGlBZnRh?=
 =?utf-8?B?MTNQbnFkRHVRdmR4ajdNNzBCR3BXSHVHSS9Gd0VUMFRGSy9xZ0hMcWdJUm1k?=
 =?utf-8?B?ZDBnNlU5OHJEclZKM3c1SFZ4SG1vVTBLZm4rOHlBRlN5R1B5cWRWRG53VWFX?=
 =?utf-8?B?eXRYTVhZQ3RTcXo3Y3NZaC9DbUc5WkY2VFdONFVTMDJRWGxDT1NsZGdTcmw5?=
 =?utf-8?B?WTBXb3dxVndBQ2xhZi82L0M3N3FmMCtkaUkrYytvQ3dLT0YxamZNcm85RjBW?=
 =?utf-8?B?ZTk2anFhMkJXWXZVRkJydkg4bEFacVlRQ2wxTWE3RkxRMDZXb09QNHFwZGgy?=
 =?utf-8?Q?wL15fe7eKC7QF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djhrN2JScXRYVk43T0VjeHRDVngzS3Uva2wyaUpnRk92VUt2bnpyYitPRHFk?=
 =?utf-8?B?YVVwUDVXUUUrNEZqbDlMY0tuc0JHRnRpS1VnVzFBOXhyUW5zMVoyS0VKS2JG?=
 =?utf-8?B?NjdHc2VKNHN5N1cvZ1BteUpqYnFYdUJrYnAveENabm5XNlIyK0t0QWVYZWo3?=
 =?utf-8?B?S2Z1VnloaTJHaDN3SWhOclRiSWozZ1E1TlFab0RnekVkandnWk9KeTUwSG1N?=
 =?utf-8?B?bXpuTE5xVHN1WWRLSXFiQnZNaTdTaG1heUdVZUdFbCtpZEkva3FEZTNKUXpS?=
 =?utf-8?B?S0dhRkhGZ0QwZGZacEhXaU1wNS9vUE1vS2lsaGx1cDFEaWNuWUVkajdLUVA3?=
 =?utf-8?B?SVFBODVpSnZBeWpSRU51dldoNC84VlBXTTk3T1M5WU9IN1JDUk5MdzZCdkgw?=
 =?utf-8?B?NVFzZ2JKMUU5WVVmUjU3cTZ3cHRkS3NrVUd2RkRERm0wRXJMWS9oOWdLd1dj?=
 =?utf-8?B?bkJKU1ZndHZ1R2FDVjdlZ0NtaXJaQ2JFMEN3VThtYkN2eHlZekhqaVQyMWpP?=
 =?utf-8?B?TitmdytjbEpvb3M5QzhORUE3Y0JPR04rRW9FbXAxNmU0Tm00Um9NSVBXeHkz?=
 =?utf-8?B?czFRTFNNM2huVFVBSWJuREtTdHFiaGdVNjd4OG03NTFpM29ob01wSTdQREV2?=
 =?utf-8?B?MnVWZ29DeE5VZWsvMUYvQUppL0FPMUpjNFVVUHRxMUNzNFJESmhuVnRPZ2NF?=
 =?utf-8?B?TERkQ3NxS0Y5V0NIbXdwbmNnRWFDd3hqY25xd1lJaHhHOW9uRHpXZDdoTGpM?=
 =?utf-8?B?WlZqMThmNnI5SVdSdTNPRGVRZk9ycVVlSFZJNlZDWlM4aTA4dmFwaG5yQ3BP?=
 =?utf-8?B?dVlDOXh1eUxweXJNNUhKb3RlYm11S2pNcjFwQVFlcEVjMkpKSm8rRGRTUGVk?=
 =?utf-8?B?YVlBQlBHSlZWcElSbXVhTkE2U1lZYWpWVGFVTlc5NkgrM2xZT2RkM3pPeklN?=
 =?utf-8?B?VDY3UVZKRnc4a3hMUjZUems3S3pKaExON1liaTg5Q2d0M3hsUW1DRjkzblV3?=
 =?utf-8?B?eHlGeEFCYjdxZ0ZsMWt2ZndzS2F3ekhMSEhOSXcxN1ppZkplVDMxZzU3ZFpE?=
 =?utf-8?B?Q1FrTE9MSkRoSXUzSlprWS9CMDVoOHZ6RVZ1bnQ1dkxrdTZ2cUlMMUNzTkhP?=
 =?utf-8?B?UWp0RWlacDJKZ2pxdnY3d1NSaGZPQ1p3RlNJUlhHVnpRb1N2UW5TNnAwS1ZG?=
 =?utf-8?B?T2I2eU5UOGxDR3cyTjBwNkJMd1FuK3FsbDhvK1hBMi9IbXFaZk80ZDNaQmsy?=
 =?utf-8?B?eHF2REFUdFZpY05TNTZCSitCODRpODRrZnd1OW9ibDJBRGRTYk54RG40dmYx?=
 =?utf-8?B?UlJJQkExMGtxUVBJYlJxbzF6MDg2UHpVU2pZc3dLMldYL2I2MTdtOCt4aThX?=
 =?utf-8?B?RnBHN09rdmMyM3hjNGJOK2JRQ09pUlJ1T0lXWkFqdDhKSGxqN1UxSUJyV3Jv?=
 =?utf-8?B?dlorZWplZ1NUU0Vid3NiZmhxcGQ0VFZaT2FsUGFFTytzQnJzZVdqRzNuaGJ6?=
 =?utf-8?B?NWRUdUUyNEp0RnYzL0lzaUVSS2ttY3ZwZEUybEdNbzh6YVV0RXVjSXFWd1RZ?=
 =?utf-8?B?eDRGOE4zb0JrZUVJQzlFZGtTazJKbFZyVFYwQ3p5blJuT096blliNEtHOWtL?=
 =?utf-8?B?ZUlDZnVyd3A3YjNFcStxdG1SRG9uR2VCaW10cTJFNk5tYnBYTlZ1eTRxaVNx?=
 =?utf-8?B?bmhvVlJjN25EMnl1ODhHeGtzSFk0dGtNam4wRWRMc1NNZzA5VGFwWGplZEp1?=
 =?utf-8?B?dGQxVVpyWlpxeW03SGVraWhzVXU3QUtKRk51YXA2NVcyYUVxTWswZ2s5d2hM?=
 =?utf-8?B?QWgrZzc0MURQSnJsRE1hb3ZaVm41c01sM09kSnZIU3JiaVFHdElXQlFoM3FH?=
 =?utf-8?B?VTBndmp0RWlEajBOOHkvemRhdEJ1RDBsOXpHWWpIaUQ1Qll3a1NyNlJQZWJJ?=
 =?utf-8?B?K1grOFdkUk5aRmFWWGpEU3NjVERaNXZkenpxa2NpdkRkeEJBUEhQZFZsR1Q1?=
 =?utf-8?B?QXlGRzFZRC91OCt3a0ViUndHVlMyU2hkQXBNYjY5RDZNa084SDJmN3ZIVzZE?=
 =?utf-8?B?Z2Vjb1owRmdXekU2Q2dOZzFqd0dmbm8rczZBR0MxeWZxNGsxR1FwQlFJK2dp?=
 =?utf-8?B?U094dzhKOWtMOEhrYWk3YUlqeTlseENxVmJmTnpDNlVOY1YrM3NnQThtWC90?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e33c5a44-7fb5-4002-200a-08dd5cc091ec
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 15:07:10.9442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MDvygV0noGicau3PYLu3mk10JaUGi6RavpLxC5H4ktxpwU+bjSy68rG1U7pfVhRVGAkNspChm6yqkm04tpryWV6WDcwD3NyaSCHNGyOv34E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7963
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

Hi,

> Quoting Tvrtko Ursulin (2025-03-04 16:43:45)
> > 
> > On 04/03/2025 13:09, Mikolaj Wasiak wrote:
> > > This test exposes bug in tigerlake hardware which prevents it from
> > > succeeding. Since the tested feature is only available on bugged hardware
> > > and we won't support any new hardware, this test is obsolete and
> > > should be removed.
> > 
> > I randomly clicked on one TGL, one DG2, one MTL and one RKL in the CI 
> > and only saw test passes. Then I looked at the patch below to see if 
> > there is a skip condition but don't see one. So I end up confused since 
> > commit message is making it sound like this only exists on Tigerlake and 
> > it's failing all the time. Is it perhaps a sporadic failure? On all 
> > platforms or just TGL? What am I missing?
> 
> The HW issue affects all gen12 platforms currently supported by i915. I
> don't have any data for derivatives, so I cannot confirm if this bug was
> fixed. The lrc_timestamp test was written to demonstrate this HW bug, to
> isolate it from (and explain) the pphwsp runtime discrepancies, covered
> by another selftest. The question is whether we want to keep a selftest
> that is expected to sporadically fail, that exists purely to hunt for
> those failures.
> 
> In the past, we have kept such selftests, but hidden them behind
> !IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN).
> 
> So,
> - keep the selftest and expect sporadic failures in BAT, or
We cannot rely on such test that "sometimes" fails. If we cannot
ensure it works properly and provides predictable results in our
environment then we should not run it, I believe. Furthermore,
this may cause new bug reports to be filled for the same issue
over and over again in the future.

> - remove the selftest and completely forget about the HW issue, or
Can we do anything about that HW issue? :)

> - hide the selftest and stop it running on known bad platforms?
This seems like it could be a solution here. I have a question
though: would that render the test hidden behind that setting
unused in CI? Or is it a similar situation to "FIXME" notes that
tell us that somebody is aware of the issue, but could not
address it at the time?

Best Regards,
Krzysztof

