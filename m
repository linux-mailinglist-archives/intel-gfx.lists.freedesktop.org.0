Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F92FA30752
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9433F10E63D;
	Tue, 11 Feb 2025 09:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lP6u9a0x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B6510E46C;
 Tue, 11 Feb 2025 09:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739266787; x=1770802787;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/MbF2DhbrPfnI7ZhvnZj8W5w2xV/W/jBaHEv6Eha94g=;
 b=lP6u9a0xxtfQqLKFGQh+lWjg8TDnCcyqnFCI+Q32cVOpn/Rm+QRCvspF
 uBcZPy2o4UL/LGdD2xW1LyZ+fldRmEMvaljpOiPaxWJA3sKsFMXlZGieo
 h9AUv3Jk11tsQxKanWw/UF/4NGHlKBJ4y3LqB1ZOU6XlIij368N67Ptfy
 4X0rHNWFmPhzSg00cXfoCNPcEo94lyOQQmkSH+MLSM0OkRKygQ1A4Ya8U
 cDBCD+dPSYMu0+KYjX8bsXeFk28UhK5TIK5a3yoLb8gEqrU5/5fKJWK9W
 WCQ5zxTuhrag6GLmRT4UpmGvATK5ERVa7PYZbSf+L0Hn0SqZrYC/npGbZ g==;
X-CSE-ConnectionGUID: tGNcZHXRSQqLO8r4ci6OTQ==
X-CSE-MsgGUID: cg8x59POQ52Witj1PwxPlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57415071"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57415071"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:39:47 -0800
X-CSE-ConnectionGUID: 9uYKS/ZPSiuusuE6+o4dxg==
X-CSE-MsgGUID: 2sbYSbJeQwixegyc7fodsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112926691"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 01:39:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 01:39:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 01:39:45 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 01:39:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NtiyH3g1Eh045fNm5IXr7BJSeBLARetDE8QgXAc4cT5wCUnX96sZPeytktc9pvqM9Ln/W9Tx56j5HpqBxtQALYpGVgEiBE6T05hzPJ7kS1V/gSaMIgc1gCb2ytTYBsusdjCCJeVTaAvWDcR5bAgJuyOiOpoQJ9mmnHbsQ1bZ7ikSMwHNynBpyGH41OTIk/SJhRJHN4ZIDDKfjzdnT/Yxpyxf4qPx5DIMccgMB4+NgNPpW+pKhuh0C3mNMeq3VtD7z/qWt9VmlIQeRNW2cdp6LdYz3szDTvvoF0sIDU6wEfzdvem2JDZdNFY9FKmHlultrOYrFBD/2c+GLRyCwZWdIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCRyECYuWlpjdyVFAkZ6XL3LLGGuF1uR8O3l35fRWPc=;
 b=LOOO8ayo+klh/hksT6zBgwfzUFkRbArMp31K9qCLioJxP/RJ+VLVp3CeKf9UpfGsYOC3nIlJUM2JYmt47GkiX/Uba/98qABFQi0dAS1rEAlJDla5GmoKRbTYiJNdBwd3hKZ/wi7EalHZ7YWbTeKmavwXbakKoRelBw02rPfTb6GeXJyVnMlOaPV2lD0m7CR8OqabhwTR4S65/FldYPtZjoVFXUlbQUaSQmVtWTRE8KTPSP5C1HOj30aRnSiy1zAJjh5tcC4zZX9MwJDvzGyw/qVsmdR585tg7OiipfsBKJnn3d/02IC47WIEBbBhk0GJi+CJnMmL5Ge4AHoDhksiuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB8045.namprd11.prod.outlook.com (2603:10b6:806:2fa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Tue, 11 Feb
 2025 09:39:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 09:39:44 +0000
Message-ID: <aa2409f9-5443-4c8e-b691-f07c354b9f09@intel.com>
Date: Tue, 11 Feb 2025 15:09:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] drm/i915/dsb: Compute use_dsb earlier
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <20250207223159.14132-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250207223159.14132-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB8045:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b60256d-02bc-428d-076d-08dd4a8003e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUtTbmxMekcxU21yQmJMRXFDRGJJa0JkdTBVWllqZENtUWluVGNvMFcwcDRX?=
 =?utf-8?B?Y1g2S2ttSmdEZm5IOXpYUXJPSklIV2czZFFUYWE5eExrU29yaXJKcGVhZHEx?=
 =?utf-8?B?aVdJa2lyVDQwNE9XekF2eTh1TWZ4QzkwWCtXSzVxbllXZFJoMHcyKzg4emM5?=
 =?utf-8?B?YVRhK0dmWUVvMDQvKzAwMEpiZUlSMktrQmplQmo1dFRoeXhBVTVOV0RuQ05Q?=
 =?utf-8?B?aXVramRlTXZjWktQRklvc2FJNE4wbk5vWW1qWlFLYkVPaXVTb0MwWktDanNM?=
 =?utf-8?B?MCsxejNRdzh3QU5OK0hpSXIzRXFHR2NuK0p6N08vYkk5UlAyKy9CVC9CZ0kw?=
 =?utf-8?B?dlY1Rmc4Rnp0UGhJMFc4M2xtRmczR2xOdUl5NHFYQkg0UGw4aDVxdEYrdkht?=
 =?utf-8?B?eTJKbVovQ0JmWnZ2aDRhN1VyaGRkYzE4T2FQT1dWcjNidE1kVGFDSDR0Qlpu?=
 =?utf-8?B?K1ZrSjNydTBxUmhvbVQwbWpRNi9ieGFSSld6WWwxZDVjWUtOdVBzZzFZdEFU?=
 =?utf-8?B?M2ZpS0QvbExOWU55RHAxa2xjdjJXTnB4U2hNaDM1YUQ3Ynp1VEZ2YzhnZURC?=
 =?utf-8?B?dVljSC94dEM0cHdiT3NuRWVXdEQ0c3JxK1RTTkRKSFZZb09YMmRGWEp0a3Ni?=
 =?utf-8?B?TktzTHc1ckxCYTFIMHU0UmJySVhwTEZIeGRmb28zZnBaTWh3OE1ac1RmQzJH?=
 =?utf-8?B?aEFGNFpNbTl3UmljTVNTWEZaMUU2eE9OcmdFclV2SkxaYytFajl3TGNpZWxE?=
 =?utf-8?B?SjVrbmV0SWg1SFhIMFY5Zm5wNXoyMCs1cThEeWt6TU5KUTd3MlExUkhyOEhr?=
 =?utf-8?B?STBZcmtGekQ2c2plTjA3TDdqTnNnUm5vSDNmcWo0MVA5MXVIaXg0dDBwU2pI?=
 =?utf-8?B?QzJYR3MxZENSeEVWU2twcWV0THExRzFoTG16Y09hUmlqeDluVEVyaS9kcUZS?=
 =?utf-8?B?RDhiNzU1bEd6T0Urck1CblEveWgwbFJmMVB5K2xEUDd2NTZXMHVFTDEzT21I?=
 =?utf-8?B?cHZsT1Bhcm8za3FPcGR3YW4zOTE3RVNGczRUd0hiY29Sc25IMVczVHpnOGZ5?=
 =?utf-8?B?YUJ3bXpBTFNhQXJvN3R0Z2ZrQWpndU9mZVY5L3dKaDAvZ2VLYzhueW93cG5y?=
 =?utf-8?B?ZFI1ajlkR0tNUFJlYVJqN0pmM2VHV1dlZUJJcU1QajMwMFN3ayswWHlJbldC?=
 =?utf-8?B?d3RiOGxnUmJ5SmRYWUtKSGRQTllnRXliWE1GMm5icTBzQ1NBUnF3Sm5sQTIz?=
 =?utf-8?B?NmhUcnNMTFRMd3FQN09ORkY2M0RPWjBPb1BjaE5OOXRDYlY2dTZBbVRHMFAr?=
 =?utf-8?B?NzFMVUR6OERjUjNPVDFHcnlTd2RpZkNnMlRtTTNoaEdsbnk5bW93YkRLNnhy?=
 =?utf-8?B?TlFpdktpNW15M1pjK1pIRUNHYzdETFExMGhHT1k4K0pSbHAzRTZwQjk5QTdZ?=
 =?utf-8?B?OWt3RHNlcjlJWllERVNXRkFjcURXTG9POEFLM1pFdUlQQVFNMXYySy9jL1Bj?=
 =?utf-8?B?WWxrbUtaVm5ySkV6aTVVRVJ1aGt5ODlhZTA5UkV4WGNHbWp4T0Y1KzhpdFZ0?=
 =?utf-8?B?bm0rY0c3L2oyK1V5NkJ0bUk3OW5wYmlyMHZuK3hITGFBeEpCNEd0MCtWNzZP?=
 =?utf-8?B?Vk5kalJJM3ZVbnNuNkQveFlPL1pKVUJPYTBtb3U1V1VTbXFqY283SXVIQVND?=
 =?utf-8?B?UitJQy9NRmhjdm8vRW9RSTh1b2VxZUYyNkRWZURNTldJU2ZUM3VGUnhaMDNR?=
 =?utf-8?B?U3NyV2hVYVFiQzZiZUY2dlY0ZXVxK1hxcUtTMUR3ODdOZnkzMDdjL3VmUFlT?=
 =?utf-8?B?bDRpTWNXRUFvRnRkSTB1ZWRhcWkrNU9XZksyNDF0L091R2tHaUliN1ZSbGY2?=
 =?utf-8?Q?x3MjzgQ4rXQau?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTQ4enlEMjRrYm1vSy9mVFR0ZFBkRFdSWXY0WXB2RytpTlBVUHM0VkMzWUJr?=
 =?utf-8?B?OWVDb3ZOazBySG5ydGMzYnRtWUtmTG5kSHVROWVqb1JHNW5FY0tlditKWmV0?=
 =?utf-8?B?UnRpOHNHNlZvUE9JbW52VXB6cW5WbWlhMjJYVVBsUG1xOUFFVytXdGJKeFZj?=
 =?utf-8?B?c2RUVFhldS9objgxbElPOURWQTVrOVhwMWNUcmdISS83R2w1YWZtK3J0S0or?=
 =?utf-8?B?Uk04L1FKSHE0U1N2QndvUU44WnpYbnl6d2FWSHVWQnVBTmNGbkFzWTEzOHJv?=
 =?utf-8?B?MFNlVEZLZjVEWWdNdkx3NUVZakNVdDQrNkg3N1dBNU1aN3hWS3NTeWtHQWQr?=
 =?utf-8?B?U1d2djErREhsZXlIU3pCR0lNdFRhUXZFaHg5VnNLcHNwbjJ2UWVsQ0xGQXcv?=
 =?utf-8?B?ODRmejVreGRDcWhVUDgvVXNGbk0yc1lrQkVvaDkzb0lmNnpmZGkreWkzR1I2?=
 =?utf-8?B?Sm1SdHdJaXo4dlJxaWlqNFNZL0dRUW9ia2dObzNXa1VKOEc3NWJNUUxlejkv?=
 =?utf-8?B?K3huNjNiNlRBVFd6dnp6Z3lzbzRwWEc3WFR4TEllUm4xQThWVG9qWlNxSXlV?=
 =?utf-8?B?TWFOWHJNY05nOUpnNWVZN1lNcUYwZmdpRFRuMFkxYTFCVnRJRkU5TWVKWXNQ?=
 =?utf-8?B?d1V4YTBHVmJsbUo3dFdMYmM4OVhIVDk0UWFJTUhwQWd6WGl6RnQ0SVIrYUVF?=
 =?utf-8?B?NW1kbElLOXZjd3ZjN0pOblFyZ1RqYXJSMGJkQU9hdlpMb2cxTXJHSU1Da3BT?=
 =?utf-8?B?QUFlUHl2UmY4b1Ftbm5ld0lvRnVpQk43Rm5kVVRITUlpN2N5MTl4Vkh2by9h?=
 =?utf-8?B?MzJsZUh5aEVCUHNaQk93ejlhK0ROUkxmNm9hQXdJUEUwNEhzQmJwaHRBSGVF?=
 =?utf-8?B?S3lwaGRaTlp2cXFSZDJFcUFkN3JZbjBGT1h6WDlTMy8xdnR5bTQ3MCtxUjFw?=
 =?utf-8?B?bTRyWXVlTXpZM2VnOStUY3c0TkpneFFaTktqdjN1cmMxaXdvaDZTVy9TMFFT?=
 =?utf-8?B?bW4zMUl4K3BHTU1OWUN1WmR5RHVDanhYd2lrc3d5VS9QTjVLYWFJQk41RW1B?=
 =?utf-8?B?T2tKK3p0OWg2RDVDNUZhODBFOUhrU0lsU0JMdXZ4T3A4clhEblRUdGVsbEs4?=
 =?utf-8?B?Tjg0T3FaWFFCbzBpOW1RT3lud2IzTHowd1RhT2tCODVVb1JJMThhaHVSNUlH?=
 =?utf-8?B?M1VpVXpwMmJWQjJKUnhwR3pJbHc3SUFpYWFNaXRwT2wveTJ1UzBIdncwaVhV?=
 =?utf-8?B?ZnRKdWtNaXFvS0g2eXYzS3J5WHpzS1dZWHJ0RkNIVHJvd0w3UnIwZzlWZFJO?=
 =?utf-8?B?dnVwYkhoZkZPbDJvN2pRcTZaRVdaejdSNlpDY3dxZVhwWEpSRTRZOVBrRWlG?=
 =?utf-8?B?K3ZIK1lrUWw3SE11SnB5Tjk1QzZCeExHSnJiK1lIcmpxZ1A5a1lSOWtSMU4r?=
 =?utf-8?B?d1NMWGZuaEZVa1N6cU5OT3d5NHVDTXVHckE0RGJTTnY4Y2tNTlF1c01YbGcv?=
 =?utf-8?B?MTVJUlptQ3ZIejRhakRFNDFyci81VlE2eEN6bVk0RVNhTDFkc0greVd1Smlj?=
 =?utf-8?B?MStUQnRxNnJ3ZVZTSmQ3czFmMUxjVDNpTXlwZHp1Mm9DU29SWlpqTzdRcUJz?=
 =?utf-8?B?dXJ4ZjZoOEZ1SUdtK1NlMk15N3hHSUY3djVLRFBYVkhuUGlyenBOekJrc2hG?=
 =?utf-8?B?cnhXQ0RYWGpaeXBWcG5lSDBNb0NDbU80WWdnL2hVeEhzU2l1MjNXcGxwbFBp?=
 =?utf-8?B?SURETTJzUnFWd0hvcGU5MU9sVUFJTUloaDBpMnJ0SGV1Y3ZDM1l2aVhsVnM1?=
 =?utf-8?B?aGduZytTTGJORDBRZktFRC9KN1dPTGZhOUloRmZQdHI4TlhHWXZJdzI4ZHZK?=
 =?utf-8?B?dzY5NEoxTFplRDdTV3Y3SElFbER2R1RSUXVNSmNOZ1FYekc1bk9EU1FmdWJX?=
 =?utf-8?B?eEhRMlpaWVFSR1NZR05KaG1HTWMxTjRvTGpvMFNnZHEvdVhINXlKRlN2ODVj?=
 =?utf-8?B?WXEvSFl2QXEvZFBOTmFZdFNxM2swQ3VNR2krYlhZVUUvMEZkRXhUTFJ2VW4y?=
 =?utf-8?B?bFFpYnRJVit0ZHZTRGh4YkR1Y2toU1FlUDAzWmpoZC81NW1nT2paWTRDT01G?=
 =?utf-8?B?Q0VKZk41cDV6T0ZTclBMWERJVkMwUUxhSHpKMDRBenc4RU1ObHc0UG1qZzBr?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b60256d-02bc-428d-076d-08dd4a8003e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 09:39:44.1379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4bln8IoRxGnm8y0naRXOEupk47uvvvoI46BOUXQykZMY45DgC+cmtqMtlyx1uQ/vaWXFtQ9gFBIDdr+ippjRSviYRklDw/Gn2bWq+IbK+fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8045
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
> Skip all the commit completion interrupt stuff on the
> chained DSB when we don't take the full DSB path (ie. when
> the plane/pipe programming is done via MMIO). The commit
> completion will be done via the CPU side vblank interrupt.
>
> Currently this is just a redundant interrupt, so not a big
> deal. But in the future we'll be moving the TRANS_PUSH write
> into the chained DSB as well, and that we definitely don't
> want to do when it's also being done by the CPU from
> intel_pipe_update_end().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  6 ++++--
>   drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++------
>   2 files changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 8400a97f7e43..792cf7cef58a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1987,8 +1987,10 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   
>   	display->funcs.color->load_luts(crtc_state);
>   
> -	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> -	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
> +	if (crtc_state->use_dsb) {
> +		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> +		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
> +	}
>   
>   	intel_dsb_finish(crtc_state->dsb_color_vblank);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a50b0a008231..452b70ffe97c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7676,12 +7676,6 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
>   
>   static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
>   				     struct intel_crtc *crtc)
> -{
> -	intel_color_prepare_commit(state, crtc);
> -}
> -
> -static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> -				    struct intel_crtc *crtc)
>   {
>   	const struct intel_crtc_state *old_crtc_state =
>   		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -7704,6 +7698,15 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		!intel_crtc_needs_modeset(new_crtc_state) &&
>   		!intel_crtc_needs_fastset(new_crtc_state);
>   
> +	intel_color_prepare_commit(state, crtc);
> +}
> +
> +static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
>   	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
>   		return;
>   
