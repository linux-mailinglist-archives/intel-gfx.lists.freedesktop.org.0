Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELo9EcAJ1mlnAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:54:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC433B89C3
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1565610E2A3;
	Wed,  8 Apr 2026 07:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJIPU62U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C69110E2A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 07:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775634877; x=1807170877;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dCKqRqxMjaSxosAdm1y1gQkBU4U+89620JgSJMStVB4=;
 b=nJIPU62U6pcZ7GYB6AyYJVIbDMplP1hl2hBa8bKvMFBULz/CcLCpMj4e
 kFJ9LoGnMOuxD+BfOh8u2i3LyY51Wcyd9uoOkFGkpTbzx6RtQuPykbiD0
 yrx99Lmb0n6ZE2V7hDE30ElfUsJK2H2cxrRed624VgNpjQKy0bMh1IQ4H
 MY7sO0DSDBfswz3QZ+votw4CXPZHgNPjZLr8JvelzdwGC/0VGUc4FNCro
 oHUvQd2h3ZjC4cFVayAh59n3ptpnh+65YHyazzF1Fy3sRu0I+naoEeIgE
 4GzZAvfDdv8OOWVQ8oel5ZCVbpX9kHeC/D3/MhiGwM+KF5CpFl/o8AvLp Q==;
X-CSE-ConnectionGUID: d4a/po9sTa2yGkQfWEmPVw==
X-CSE-MsgGUID: DgFiHrSZQ4+7DDLp8B2eow==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76490324"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76490324"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:54:36 -0700
X-CSE-ConnectionGUID: ZWmgtfhBSneS7nGaXBm7dA==
X-CSE-MsgGUID: c8pp+Ie9T/23/IiXrQhuBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233280990"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:54:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:54:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 00:54:35 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.52)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:54:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ebEf2dl8yXICjs/VRKjUQczeF3AR56uflZ8DpOK7v23cGBzfNzbzgEDkBHMhcZuiGxyem9+JhpHYgRjhjeGgUNGEnqRtnljbi4Fus31Vr0AlUYgpTfYwtt+j12Aw/DaFJ02QdS0rqpvQz0PCOl2LKctWKdS2lLWw1SDlwxFLhamCB/JMZ1X1wVr/AWn+jrilVGTL7NTYZgevJbFkXAR5KqtoV9PmLnfcG/gzA3RYa4zTxCyASHg4V8rSIpii4zjCFeis+t2hkaMhQfO7scF21bDpT6nL1hmqJb9WqoSl8tF4UkrfiE/KBMh+yiljFNUnB3MC3Cks6yvkQglrsrItsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bh+JVrQXNiEl5FQF88ENPZcGSurO3RVCb5ZWmbA4P1Q=;
 b=PVyqejRCPGrBq4t3uIbLdMoybojF334A1zOPrvOHFnFFIik2vk52akdm7l1AVtkO2U5VW/YS5aJW9BHPZBOtmKjulBKrZS+SI1IJ2qZhH0rW6sfPcjOrU4J69whjrmpp1Lyn+QaHMTGoFuHe1mVb2NA0rvjdDUvItm5qVEZeYAdBVewWGsdvvCNcqZ+uoFDk9O670Q6LnofyGtUTNDn+hlRZlFokuX8b3BspuWY4zE9RZ9LuL6ljir6uIrSPotL8ydF6Nq2L1tRKMOGn9cVB/z8hn25OduJSK8f7MlAwP+xWxSiE2cr2ZLms6DXsoMi4iSTHoIfhLXjbPGC/0jHWkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 07:54:31 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:54:31 +0000
Date: Wed, 8 Apr 2026 07:54:19 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [RFC v3 1/2] drm/i915/selftests: Add userspace PID parameter
Message-ID: <o3r33omy6pmvlleemipuve2kgmcslfa55abptlvebrbrkv77s6@arom5k5joblx>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
 <20260403090019.1933036-2-krzysztof.karas@intel.com>
 <7707ddbfcbd74aec7d942bab1a5bd4cdbb2fe5ab.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7707ddbfcbd74aec7d942bab1a5bd4cdbb2fe5ab.camel@linux.intel.com>
X-ClientProxiedBy: TL0P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB6601:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d4e215b-84d0-49ef-73aa-08de9544111c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: PWUFW+Bb/u3+wDKHqMlfbt/1OtGsENFk/vNS2nKOUuEroUhMGF/lukNlDV+TpDpi29O5KJzEmw1yG5RGbepYxrP+vdjL3SGyvswzjG00JMadfUWEZNAHTr1tX2R6HRNp4r8eXSmyNsTvZt23cq6Lm4DBJTkJ1eB2RQnJyQXybzpQXHMGrAPKuu3eokHygVqgevgjIhkv5Hs8gzAjvbDuR2LoiwUgqf90r74uFysOh0/jISXiJD6CkkOtdfRgXzCeMX8dANUzlMoHRRvbzAPFnV9mmxH6OPdm393DerYXvOS71lJk2YzoPq+HSbW40XIDiisU5sxtt5beAc7ExZyQXf8T/Z580XS5g0Qg5FK50Amj2ovnBXz373woq1KrIhCylwlRKwrZDydRVdALyOClSksKTfsP6W/Zx9yGWOxq7dBotivQAznfGppoz1hioqLj6mFyiaxPvmO/DVhpeDAD5X79anjvpemwa+E+2VtRDiMhyhW6C0rdFTS3KXFn/dKoaa2K+e648oZHmS2dYfRIjo2SHOA9LCwlhjkUpV3Zzc+oKiVq8pB7Nbdd1DyzUKW6kn1UhjAiGBWMFqI0Rxs1JVi5XjAfb8OflW6fqlA8m2MOKv9Vb6NZA921hQPamLyZ84QbLBoljzsHcWH/Xuifw2+Wl3pyfiSA6XlS6KxhKxrgwc7omyupnEVPDihAwgyHDga9t5xV51X/HXxS9kHt64hJZd+MObkr8B+GLDx5LCg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2NiYkoyVG13VmgrRVB6bnRWb3p3TmV5TmZoblc5L25neG5zVXBxekJ5SG5j?=
 =?utf-8?B?Q3RGUzZLVFJLWDdUb0RsUmgwMlFqQmxBZ21LOVBvQjJoaUFZYTFEeE4wSEZ4?=
 =?utf-8?B?dmk3Y1U4b3FpYlFxSTdLa2REMGMzamE0TytVOS8xK3BkYUVyb2Y3V1MyK1hI?=
 =?utf-8?B?NHgzKy9scDIrQWlFTzR6cm5ZVHByZE5Way9qMjJiSkR0YjhpaUZ0ZmhWdmVR?=
 =?utf-8?B?T0EyZUIrbGFFREV3c3ROT09UWjh3QVZYT0VhcXNoYTBCY2lqRlQ3UDhYUWl4?=
 =?utf-8?B?Uzh0d3NNczNnYmVRZ0xRTTFxeXEwTEZ6T1R5RkZQQ1FoQVh5V0d6aUhmSzN1?=
 =?utf-8?B?RnJKenZWbjVhcGZhRzQ3dEpiTXpOUDBPOUF3UGtkdlorTmNzUUIyVXYzUEtp?=
 =?utf-8?B?UWZpbkN1UDVBZmxtR0NsaEJjaU8xQWsxSHV0THl6VkdHbDFUejV1bWxIRlFh?=
 =?utf-8?B?WWkwckhEbjlQU1ozRVAycStLcVZIRi9ZYXdrYVFmWGw0RXc1TjBtL1huZTBC?=
 =?utf-8?B?SnJXNzhEdWJ5ZEpVc1o3N0JuOERjZWtwWWRTZkNGUVB0dEFLYjE3c2dSYTNu?=
 =?utf-8?B?Q2VYdFBwcFdydlRGNGpkeStKclNOaVhLMTlJdUFYLzFyeTRzU0lYbnNWMTQz?=
 =?utf-8?B?VW4wa3hYRjNzd0FJVE1zcFhPQUxFV053WkRKOXdLb1Z2UGdkMlpKSXRHcWpl?=
 =?utf-8?B?bWpVQzJKd3lNUnZFRWlEemJnVEE4OTM0T2JHNm9ZaU9Bd3poU05GQjNyclBZ?=
 =?utf-8?B?QUY4WitMRUhJSittM2NHcDNTeXlsZzUwbzVPb0ZmYWpEbEdSbVNyS0pLVGZH?=
 =?utf-8?B?a1FhYmVFWUNoV0tRbk5MVEZrQUIvR3ZKNnF0TVI5Y2xYbEpKcEpESmdIUnlY?=
 =?utf-8?B?OHkyT1I1REJlNDhZcTgrVTVKMGpNVkpLNEZmYVRMWkFvZVpqNzBQOWIreHhv?=
 =?utf-8?B?QjU4cnVJRUpUWUVVYWhVcVl2NEpCakYxcTBwSXQyZlRkZFRVQVdtakNwbG1z?=
 =?utf-8?B?V0NOcUs5c29FN0k4SHlJRDcvT3QzbzZSQzRZRk5MZjIwU2t0ekJPV1hacFA1?=
 =?utf-8?B?SFVsZksrbWc1MzRseFc4N2UrWTBObFl4eDhucno4OUorTDM0OGZEczJQNlVp?=
 =?utf-8?B?SVdlamZzRlVTbWdPVXJzTitwbmthV3Vxek54WkFVcHdEc0xqMFFOQ1grWWVR?=
 =?utf-8?B?bzRHVVl3d01DaXB6R1ZWQnNTQmRKQzcrYVFqZVN4REpMYVNLbE9TVGNOMDRM?=
 =?utf-8?B?eDdRZm1tYmpHalFvbExwZElBMk1vWGdKczhHbnJzSWltV2FTejYzbFptV04y?=
 =?utf-8?B?QVFWQ0NnZFd0eHYrb2ljc0ZkcTBkR1IyWlFvSC8zU0xlNGdWYTZqcExhcGha?=
 =?utf-8?B?c2ZDdlJ2Tm1zMWdiMmhTeTBjVS9RQWdaSk9kcURMUVVhc3M0V1k5dnQvajJw?=
 =?utf-8?B?T3BrekR4RkJXM0lab1hFYVEvSjZRSE1oaFZkNCttblpOYWJydW1QajJnNlFk?=
 =?utf-8?B?U2tIc0R2STBZTitpdzVuUnlmRnVPV2YyOTg1ZXNtUHlYQW94a00rTk1Vd2sv?=
 =?utf-8?B?TERtUVJpb2hDbVJMd21wdGV2b0N4UFJnSUoxdVNYUzh1ZFQ3cm1NS254aDdL?=
 =?utf-8?B?NSt6Yks5K2hwSlY4TG9UTXNBOU00ODhjNGNROWlzYVl6eVhsQThxVnhhZ0E4?=
 =?utf-8?B?Tkw3cVFkNDlNdFdDdFM3WllHRGxDVHVmbVliTDlMYjIxOFc5Rzh5Mkt1cmMx?=
 =?utf-8?B?elVYcktKY0RnekdjV0J1UTBHY1FqTFlXN2NHVkdUQkJ4VVRMTDhIREUrRE1K?=
 =?utf-8?B?Y2dLZUxGTTM1Nlo3Ym9BZExrNzd6a081STEvc0NWRk41UU5JRFZPZDg3T2ps?=
 =?utf-8?B?T002UnJWaUdOeEgreGhOemZIU0d1dklNQUtKZHFyM2UydTZteXJYbVpVTlNK?=
 =?utf-8?B?N1Nqemp3eUVoSEUvSnJLSC9Yd0FLbmZnZFNuOW1OK3RnWnJSdFRTbXowd05s?=
 =?utf-8?B?OE16SHh1V2U5NGpvQ1p0NkV4S3pFejNnb1Z5eW11T3BoVEVnclZ6REgwQ3pJ?=
 =?utf-8?B?U0FpV0Zkc0szM0RwWVFUUjZhOGJEdzVNS29vdGMvdG4zYm9TVEZUTlpKemwx?=
 =?utf-8?B?NSsrV1daeGdMY0dqaVpITXZ0SjBpNmtaVlhhQTdDWSttY09Ed2ZjWURLQ2h2?=
 =?utf-8?B?eVBoY2ZXdmxVL3hvblMydFk0Q3hvbmNweE83Z3QycGtTcGoyVUljZTR3d0l0?=
 =?utf-8?B?Ky9kcjlmVTVzSkNTRHQ3MWRxN1VxSFE1MGV5UGVFa2lUdWtoNEYvdUdCZmxu?=
 =?utf-8?B?bERqZEdlYTV6dWFQQjVMWjlveTFGQVJsbGxoaEx3YjUwbXQzSXYrQWREYUJI?=
 =?utf-8?Q?xeQ9f75TXHJq5B2Q=3D?=
X-Exchange-RoutingPolicyChecked: hxQg8Nzzc/JgWRklr6WdNos42ox2faO85e0NB+1ZR3tKABUkAWZawHElhm5RmlDWviflNEbEf0YteAFY6lgSRgC++F5roR8K3JsOq/jRfboinRn7r8A1/cuz9QX4ANovvKhoQFHbRPR+z8P0nOiwPm7YhFSmjVScC4TIhKg1PCruR7uInfxPP/iJSnV+IXYi4kz9eLQhDKMfqqSqbR4rtZ4nPfwYxjBmvLOKnDHQdpnwvCHUgRjGSf+d4G3oW9byMHBVwbnGO+Yb1RDtXV1YSkoRkmvv8DYQUFRJDoMFYE5hf2fqjKNmIsstn3Ve3hwGbdP8HBgcrIlY/ZKStOo/Dw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4e215b-84d0-49ef-73aa-08de9544111c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:54:31.2033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4PyaFUt/39o1WidOXCD6e0M0BC2Uu6tBiyGMD78J2jvYs1ZRbWt/970/hB6OeSfuFQ6GBH2Qy4la9HX2jb2352Ty8bigyYd97SBZkHdizmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AAC433B89C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

On 2026-04-03 at 11:57:30 +0200, Janusz Krzysztofik wrote:
> Hi Krzysztof,
> 
> On Fri, 2026-04-03 at 09:00 +0000, Krzysztof Karas wrote:
> > Currently, memory management tests using VMAs for object mapping
> > are not guaranteed to execute in completely safe environment of
> > user process in kernel context.
> > 
> > Since these tests may execute in kworker, for example on
> > multi-cell NUMA systems, their process would not get its own
> > userspace memory, so it'd borrow mm_struct from a process
> > previously handled by the scheduler (current->active_mm).
> > The test does not control the lifetime of that process and its
> > address space, so on occasion it could borrow memory that is
> > being cleaned up or that would be cleaned up during test
> > execution.
> > 
> > Add a new parameter to i915 to let users running these tests
> > pass a PID of trusted userspace process to ensure the mappings
> > will always be utilized in a stable and predictable environment.
> > 
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> 
> I would still prefer this combined with a part of next patch that uses the 
> user provided PID for acquiring a missing current->mm, and the other part,
> the one that skips selected test cases if current->mm is missing, split 
> into a separate patch.  That way, both would be self-contained and could 
> be reverted independently if needed.  
Sure, I have nothing against rearranging the code. I'll need
another r-b from you when I do that though :)

> But anyway,

> 
> Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> 

-- 
Best Regards,
Krzysztof
