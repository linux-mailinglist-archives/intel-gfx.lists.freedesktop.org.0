Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A63A9AE8549
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 15:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A5410E22C;
	Wed, 25 Jun 2025 13:55:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFxuCoV9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF4F10E22C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jun 2025 13:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750859712; x=1782395712;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L1hVtl49n1QiAkwPd8L1qH8mvW6CSICFwL+btbycl5A=;
 b=VFxuCoV9Rs6jjWP8jPHwUz7BtUFFb+tA9h9ksdlFoYCoI8N2quEoqdti
 nn3mWTJt1I0vGBfdBgJ23Vc21NKGpz53ZRsO4TC/I7K8fAk0QZJfKE3zo
 kLoZG6WwHQA502S/HCTh3pvGohzoXPu08U56YPPfpEHWoz3G5FBUVGtBO
 /dGOGrjtlArsjMwL18IMgYs74/SbgcPQmV9qWUFiFYW4WdXf0snpzTTfo
 Zl1lCtcipJui25MKY7gqs2eOdVzfyC0WrwWU328LbQ8PW3TY68g+YRoeh
 4vfGUWQOqW6lE+rjaCqrAgRKyu3sVtEq29AjT4gm7QHh/f2kb5mgYOyuY A==;
X-CSE-ConnectionGUID: cmLQLkF4Qo24aM/zSfxrKw==
X-CSE-MsgGUID: oR42xwy3SWK6qbxKbBdRQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56811704"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="56811704"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:55:11 -0700
X-CSE-ConnectionGUID: AtDELGp+Q2WzuHuBteNDwg==
X-CSE-MsgGUID: uCXEhyiAQYKekmre/W0KwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152519667"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:55:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:55:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 06:55:10 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:55:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W9YOMSSiNm2ULmBdUZsUh1Guj2O4KXOqJrIZIQnLoo90pKJgb+Ypt9RUZUacxIntDCqBNWWD9z2hObRvnc6C5t+D5hcCxOpIXPQb9Z3Qxkn6qzqra1pPUHDn7hcrDVJzHQPAL0KVG2erXJ6fOeIInc0ce11f5zKF1PU/ufI/4Y1E3+L5ell1D1r3c9FcahoZailxE6G3hIBGPBNzz/VIWsjOBaFykCYm8jo1iaGy16WW7GZTPcqTavDioIUJ4QYo/+6aBbBbVbNXhSN6CyRJEVgH3nRwYMzAa21H12+TeQee8rlME0h14HYtE8GzUdX/0F8ySP/ruNXd44D5Y3KPUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AyLVhAU3PnQnLiBnOAy28DxrGb7Ni/7w+EIj2bY7a0=;
 b=UQwytWDiXfixAXFvJ20sXG1Y+Tw9xYLy5uI3YmJKWNb7uKAW+BkZOuCP85JNyHOeD0DcKuvImQggPb5mfRY6jz4lEGQKbvpEW/yHBF8qMHytXZpZybgE8gnWacABoU+Tuqu57/MrfKzo8XKu6dCrQIzDNxNYQqn8+rUndyx+FQ3eshacWeWG9QhJgllqsHF2FefsSz+CsebEhbijoOxFLNMaZTfeqRed+8fOKlv3IGtzDUverjXvLdQ6jHr02QSbc7R2gpwAoYyi5vHpA/msnUNCwoibVMxNV+VRR1EwbIzMd1wQKPAVmdYGqZWBgS/3wcSYH1O8X7KDalV1USQghQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Wed, 25 Jun
 2025 13:54:53 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8880.015; Wed, 25 Jun 2025
 13:54:54 +0000
Date: Wed, 25 Jun 2025 09:54:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: remove unused DISPLAY_PLANE_FLIP_PENDING() macro
Message-ID: <aFv_q12bJXVF5GaR@intel.com>
References: <20250625132140.1564473-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250625132140.1564473-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::31) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: c5c9546b-95e7-49f7-023f-08ddb3efdcad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a3Avu6mYZ3u9mtIC0tl0zgywmq1iegeHcEOub1yKw/V2p8ZGO8CRcKfthD91?=
 =?us-ascii?Q?wnZ+Qznpfo01L6dqmo1e/Q0XmKP6Sa/Himi9L84cKxt7gCVHwZHM5VT1Lhr4?=
 =?us-ascii?Q?3I0/rOZMIaQCBK3SU40Kl0+++tjKKv0bQMXhbqp3C6pad8EeWnY9NsDP2h9P?=
 =?us-ascii?Q?QJyq6Synh6qU+4PcEXB2QJdIevObRtzTMDvb4T1CnIcF54n8fMGmII8wiHbG?=
 =?us-ascii?Q?zLQL2S1rU1p25O2qb0uHWNAzf1QBlzI4bR3PyjcRPeGrGnGzRIXEy+NkED/R?=
 =?us-ascii?Q?G78ou/3MRsNxZJfAxnpl4KaclKiKN7MvIYarXwAniNN6catxxWmjDllPxTPB?=
 =?us-ascii?Q?ku2tHbFf2advg81eYMM3ODcxKgn7IEiMHAHa+xMOdinCywa64XH3gu/x66bo?=
 =?us-ascii?Q?2p0F+BQOeTajsJKtLV6jPqdaivctcVS179UcavfEd1mZ0DWgo4UlnFZZN9qk?=
 =?us-ascii?Q?eSKVrI9S4+sU4DcdbFkgXGmMK7bS85u6fnxEewxGPzuvuTVznfPRMKkLfBGZ?=
 =?us-ascii?Q?qWVJZzW+UEREStKn6MloNP2TFW2rSsDC3uvKLWrciRPCS7x2c3bpxoWH0TZL?=
 =?us-ascii?Q?IdiyStqbUzo3G6UMvtzmAjyqy8j3avI4zR2eTZKuciq6hUz1cVq1FZeQPfB3?=
 =?us-ascii?Q?vCYwCmFyMVMbYuE7DPe/M8wmq+8Lf7PDC4BDZk284HimM3LZH6P5FYcmUkUQ?=
 =?us-ascii?Q?vLaF8skPrKThLPbNL5OepNZ1NAk9M80In2H5dncTax9M1mjKI0HJ2JpogTJ2?=
 =?us-ascii?Q?zaEkU3pPSsf6CQdRDsT1FyvWImreKAVLVF2LMI5i+kYADZURoq1IGpRqEFVo?=
 =?us-ascii?Q?Vk3yCVcOnlT40gJt30yiyy7U+P70Z+CBNnweyKCU6PlAGwWNpPs+l8UhHc6O?=
 =?us-ascii?Q?I2orFBk7DPWrCLTlc2ImT3+wb1nAymqnQXfyZsim1DWt+eEpmuhDK17pQcbt?=
 =?us-ascii?Q?rjX1S4jcZKCE5GYVlg1QcGT10myK4h6eVW6MeFQO9NUnTFn2tj2oFfb14UQ8?=
 =?us-ascii?Q?on6QKc3Bc6BfZosocCj8gOJW+Meej4tEZXvMXkFCXDtsF+BJ9eHn16cvfpkk?=
 =?us-ascii?Q?MTBYBC95t54OB6hWFaRotUt0HuMCthS6dPMl0PTjDdRobNcJsWyPC6JUaZCa?=
 =?us-ascii?Q?L4wWSmJBr4q8UU0smSyhrPyNdu+YoKHk/Uigo8V34rL8TSMQ8HtkHWgOoK+7?=
 =?us-ascii?Q?1LcnhAmPd6GM7zeTbef+HN/JFE09jcpsM9i02Fsq4eyB0eCtBqRPPKZBzUZ0?=
 =?us-ascii?Q?sx1l/tZ77HgixrqrJsdTTOWO+oVFPMd3Xf/A3gdhtuzNw3F79oNpOtyqQG+f?=
 =?us-ascii?Q?vinGIEzGS0p9eCj0ufV/qzQVbKzssByIQeqVX0qQ52cDX1VcFqdGr/de6nQ2?=
 =?us-ascii?Q?aJI9K0E7gVO8grGPjrtxX93kRM3o36NWYM6KPu9RyR7Lgep7Sw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V7M/QymObF1UkGsKjKDwKXJNwi6MbUa4jbCXpLb/sk96h3NPDlUq1ukpR3kc?=
 =?us-ascii?Q?LOc5iBbWWjvWE79Xq7+kggM71Jzv0HVeadhErZcVwmf9R+Ksk4fIaWeeEo2h?=
 =?us-ascii?Q?zPzdQVCLC4/P++uuIXRtpasD7c+qdSwB0z9Xvb5wBfzMLslo+ljNZTm7h47Y?=
 =?us-ascii?Q?ccfPgl5X0AmZwbyAdzgzm2MffHE6ZwTvJaUJBY6F8duLe5t2V+zsC2ryCmId?=
 =?us-ascii?Q?+x1LBGOiXilVn1QveULb3asjhQX12QK4tOEtprg2/vl/s515vSStvbRKh/Hk?=
 =?us-ascii?Q?qtWKoOVb5lVWpLgwhCYMk6tGyyuhOGQwgkfEQ5yEmW58i8JkqpWfIC4Ze2Ft?=
 =?us-ascii?Q?5NYkA++ehek0oayY1r3LAiqWJ+wa2Y+b7Cwl8Lby7Ewq+6rJoNkqw1WcWYVC?=
 =?us-ascii?Q?991GkhiJUhSGCkDlu/AEqTc9p44YHbs9Cr/fACS7+vGEsXpuMJJlg/AOULXP?=
 =?us-ascii?Q?LWCBYz1FjcYSoVfdbcSCQGXacHpKDYxN2lScKxiUgq2c6gwtn2/5T5TmWf/P?=
 =?us-ascii?Q?szRfDL6hLDcDJYkaaF2UJrOhIGUqa11Zueki0asFcK5FXxjI4aMO4D5dpDHa?=
 =?us-ascii?Q?icDaj/5mcyMp3dmI5K6k3i/F7ZHOEsJwJlR7j+rCLlcp+WTXDwSqDwdnLvLT?=
 =?us-ascii?Q?6kfh9daZdfNoiKvW/DhcCtufN0FE2v/nN8HBbeYTtcBVehoBult8dr6czVlk?=
 =?us-ascii?Q?7bEAwQi8sZcrX6QiNnFrImk9TW+hARCKX+J4rVPJaIVigoixSHwPXI62KfYV?=
 =?us-ascii?Q?uY4FcUZrklUtWBAAmqbimOWSsPg8qVzLF9YI2b5Pu613idiOXKKAd/JAITaT?=
 =?us-ascii?Q?SG4EDLOmjO+UC9Vhisktf8rDLFnZJJL7TmmJCNu5wbzbtDbOZ8nAF70XApCC?=
 =?us-ascii?Q?DarVB+n7fxgdaCRteq+Ffx9jPDc5htiQmAYN6TT2hPVLd8A5PaMzC93/gDai?=
 =?us-ascii?Q?DGnC7H9FPdRoiLay7sEjK0DeXXFlW+rP+819mSxcFJOE743d6XTX0Fyzg2si?=
 =?us-ascii?Q?1dYEm7sfbhXJiNSvTqTlFL/LtTPT/8Wl2VtnQgwuINWKaQpwzCjYQU/3kyS9?=
 =?us-ascii?Q?02YsdJgh2DEii+/FUKRmsVId2E+uJcmhlp4fxn9y9NGG8x/49aRjT2pvMZj6?=
 =?us-ascii?Q?T0q5ULdHXj5va1sMjMNsUvSE8atQubZXH0GLlgm+YnrLvbYRlgLyrXP8R9In?=
 =?us-ascii?Q?ZjVGTasumWbVzMpUU5+kFU+o8wDMrWCm/a6HBVUPefUlWNNJozNQ7RBO/Aqk?=
 =?us-ascii?Q?52Tc6S7euVkVc2MDpHAPnZlwprjHtTniaocNcFMKcHXXX6FK3d0BuH9d+xsg?=
 =?us-ascii?Q?EYCrMKdV7KlVBN9N4Npb8iAAWqJ/Nl7kUIUR7DaBKwBHCqMXuDSdFWBMW3i4?=
 =?us-ascii?Q?w+fsTdke4O+z1H+WVgrPb1uVK5Z6bzqSJ2QJVZQ32toRnx1MgdNlPbkE276n?=
 =?us-ascii?Q?k870ItfLvRUM1z4rW9/xrGJJ3nb+bqs2YmHfPbVTmEuTChAyP+s9to1y+T76?=
 =?us-ascii?Q?XQxXsrAm0D3sNJJfFizIBOZrXkckc+7NomkHbFS4EKHAumuIXJZBI9CtanNy?=
 =?us-ascii?Q?ipW93mRoH4luhMhK9zXVx4h2wWPUN03PGHnLuoXD1IXAzpSYmJ/9Dduzjl3q?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c9546b-95e7-49f7-023f-08ddb3efdcad
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 13:54:53.9202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3AT1ulud5SjWxvlG3Tuv5VR+qBNcVC6t3JtBEQEf4+aA2wU3Jpek/oh8kQeE53EA60rugDVsr5f6RKgEyRgKgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
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

On Wed, Jun 25, 2025 at 04:21:40PM +0300, Jani Nikula wrote:
> DISPLAY_PLANE_FLIP_PENDING() has been unused since commit fd3a40242e87
> ("drm/i915: Rip out legacy page_flip completion/irq handling"). Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 04fb40867cc0..8d56b3c45451 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -385,7 +385,6 @@
>  #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
>  #define VLV_PCBR_ADDR_SHIFT	12
>  
> -#define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
>  #define EIR		_MMIO(0x20b0)
>  #define EMR		_MMIO(0x20b4)
>  #define ESR		_MMIO(0x20b8)
> -- 
> 2.39.5
> 
