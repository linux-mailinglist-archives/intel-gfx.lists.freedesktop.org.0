Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BAC8B8427
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F245112FD5;
	Wed,  1 May 2024 02:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kR6TNF9v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8380112FD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529135; x=1746065135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QTIGKx5K+KFQhQJf4Fils0fJFv9dHOOLp7QSWfaMgXw=;
 b=kR6TNF9vhUWQxhLzg7T6Q52S8iqbFIn0trkG4PxUcaTjmJ/4WdKFvzi9
 PZ0/k8nIXoj2msQUBgeXlokN4foC1tpJsCGdc6kcmCeZ2L8AgcGTbBs8T
 igAD4EUXe2B7R5HmN6XnJCkqUgVFHYoAdVvZtfEdhqIewD4CUy78Zb+p2
 2ZDfaWqUiizY4sAiUe4kvBNH8CzOIchOUwcM1+NklQVwhtA8pl5aV5vnW
 GToxe8RT5KDyjUTfqantDluc6b9DLFbos2QiZULYtdApjKLH/A4r7BCYr
 6orfjiMh4LX5qLxYie3isC2xdbPC3moMZfaqKBQoN9+NRF0Pt9qn/qGqI Q==;
X-CSE-ConnectionGUID: NIjYOdWISrGxo2UWUugfZw==
X-CSE-MsgGUID: smyoD3BtS2ylCAed68qROw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10482991"
X-IronPort-AV: E=Sophos;i="6.07,243,1708416000"; d="scan'208";a="10482991"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:05:34 -0700
X-CSE-ConnectionGUID: Xk8+I/kUTGaNivjkuavMgA==
X-CSE-MsgGUID: dB44VtLnSJm4b21uIL5KJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,243,1708416000"; d="scan'208";a="31367550"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:05:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:05:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:05:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:05:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuSnogDStP0/Dz0t2PkSL1hE3g6LLns8tmL9h57o5fLhrpy1/lJwQ2c1eZ3q2Gai7DcBRohXJdrc1o8KW33C1vMMn4wZX7PXJX3yV7KKX/iJ9unhr5+MZSOi/nHOGoxpwac5pPfQDSKA4PBYnta7H0s+ovmM9bmKBlEtNCR6TZACA9xliQtRSXWevw8lGwjleqQWT9de3/mB9qwBj+Iy5GafVIOdvsW//ZNgrz5JZxDfpjETML9/MzN1O70ZWNr9L7Ln37MK6wFaH8S8rwKwaZyiwYhjFg17zuDdCoZArQTDSeKkjF5Ava0hkexkzgmjcXRjfXFryA2FyHcDHKbcqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nV4lqgO0Bg5oJ4LzdXWrjej1svY3JQxf37Zxl7HGr9E=;
 b=ZEQajKBoLIAy7BtvV92oC/mUVQZZAk8In0GeOXKzJ8S9wlK4AFQjfH2XS/EgMi+kI4IaGBlikXIEkZVvjlCftnQswuytRZwG0d0Lp+MB2CHDcPCPadyvv4Pg1STEJKoGSfusAa0NWgxnXGQd/TmhICbENHGvl1LmMBLQqS6FTJeSAjQvIjxigDspM6Y5FuQ1qo/WGfhuoZvuLEPEn3s1cFpzsbDC1KjQrq9UceKVt/4pdnwJc2YnQopFvPbyHushEaGFUUDOGwQ+Yfj5109A2UIKEF8SdBAklXxsuk3zdMzSMRHkw0R0S6OjSGnLtBBoc+S0oA1pE5KZTGRKJ1PKaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7254.namprd11.prod.outlook.com (2603:10b6:8:10e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Wed, 1 May
 2024 02:05:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:05:31 +0000
Date: Tue, 30 Apr 2024 22:05:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 01/19] drm/i915: pass dev_priv explicitly to TRANS_EXITLINE
Message-ID: <ZjGifz6jnk3QEXPU@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <eb1e5fe155daf2d271af76e683a1f3f33e34403a.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eb1e5fe155daf2d271af76e683a1f3f33e34403a.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0235.namprd04.prod.outlook.com
 (2603:10b6:303:87::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB7254:EE_
X-MS-Office365-Filtering-Correlation-Id: ad2e7400-a7fa-4359-3165-08dc6983225b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dzyZG4eGJ3MB6z0bzoa9cYQYfeDDTFKtWoHRikWKJtQnI6OF0s4VfwvbQCrt?=
 =?us-ascii?Q?Ajq9ICZmTGaaoTdCW/oavhs+JNqaclPTCa0+l8xRhe0CShw3CnV6GR6+gHvw?=
 =?us-ascii?Q?pZqOHQKjPsVex+L2rWlbYvdiEH9rHMXZgPUEFDCdwo5atvHAMu+nFGmIORsI?=
 =?us-ascii?Q?up3RCh9OfVzeuyrTKiU58MAT6ucUMDTfazog68Gghsm9mWJ8yhVbg3Lv4Hk9?=
 =?us-ascii?Q?P7Qrp/rPX0IRWRHy18dCTdBcV+jFg2pBLAlerbE7AE0Xc8aFJ3JZgBvK5Cab?=
 =?us-ascii?Q?OLtBHXaDKQHZonUaFFebLGY2rjHa2tu+WPfMN3Z+orw3OM8A6VcRZqoa3XSY?=
 =?us-ascii?Q?UkK5krf0pf9pU5Zh/l0zR35e61ZKSKAuEVH1U76wKftGNjajkb8/qJLJ7cTr?=
 =?us-ascii?Q?/JBgi4K+KGNee879+yuF0E2WKRhOPXefSHbzJ9AngFC9/K9G/Gb+e62J7sdk?=
 =?us-ascii?Q?Sz5PW/L6L+bbsg+zn5/1YcVGT6gECj0+53gLHWclR/i2GFE23wzNoM/81D7N?=
 =?us-ascii?Q?JbHJwTQBCobW0CoEcqpCwSqTuGGZFI6sGT3y8w8m5VGyrhN5GBOk+ZYMP6nX?=
 =?us-ascii?Q?EfmAOYv2exHcCyaoo6sMeQcbOwmxgUKZtvk46TvrlrDgNLf5QRhNMpj3aQR6?=
 =?us-ascii?Q?QpzM0rjdBTR0IiV9GgZgGk8eBIh11IKyqL/NaucGcwr7Vov3h81cM9+THXlU?=
 =?us-ascii?Q?Vz6n97Fiur7jnCWheI3Sj9TpH2A77AD1fhXsaMkv/C9xt0qH8IEEjPJd6omK?=
 =?us-ascii?Q?d50CVLuGnXK9zQpM0GrWRN3H8e5szAmLYrylBdhLu3Lj78gCEsdS0z16FVR7?=
 =?us-ascii?Q?MbvOOZH/Rga7cjqkJknAwO36Nd7GHSl3Pd+mGyMr7p4nRWHiHZWo1uhlGz/C?=
 =?us-ascii?Q?t11gQvljJdzK0bCqRTawdTNLLR4w7/9davLgvYZqle/UGilD0SH11ADlje1S?=
 =?us-ascii?Q?coYBigYMW5GILh1bYJ3lz3+d2w0hXjMWQygMyfUq90zaNC9fL5Z+e6HDN2TT?=
 =?us-ascii?Q?ErcfQJTxqCDIaB5tphzLlUyZodNn+V11rNpLpCjNBYs1SedyjoOlUa4Yhc83?=
 =?us-ascii?Q?cjWPWKQIlldq26isMmxM1SQQFIDq07+OZtrjyEHVm2l9xUYHNhHrjflBS/sx?=
 =?us-ascii?Q?nI00vp9TDD7TS3kXx9SUReUv49IuGSg2nd9c4S9oTqZO/uY2COahX1bZykwp?=
 =?us-ascii?Q?lJiPfZVyuoD1en43EEHmEADgvLs5UWvgR/+weAaVV8MHBjb1RRHZZ3tLFjFT?=
 =?us-ascii?Q?gAr58Er/PSUN0YwPEWde7IpP40/CNff6EBqZMtBKTg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sn/9r5BA3SEPoRblPSnVlol8QtCfIvySq66/2HZtXq390lqRKE6UVZiYIbdq?=
 =?us-ascii?Q?48IVnUNH1SOMhl00iqzu0yO9OVuYD1xhYyFgCtbtIMiTjwqhtwYyobXa0iLG?=
 =?us-ascii?Q?JaSZQobW0rGiB2bBuy7SyxwwHXfnuw6viaTnjDCe4ZYxBFviComiYNiUfy0Y?=
 =?us-ascii?Q?pfwITiTdwB0HgB+BVNTIr6E1oP5hL2uOnMCHVvusNLcNYh1P6dwznioI4mLI?=
 =?us-ascii?Q?PK4SBliY46m2RInW2WLiI6M3Avpujjt5P5lZfWq2bc6hil2M/L9bY7vKYLGn?=
 =?us-ascii?Q?V4AYql/8dBGlfOGHHPDO4PUwpdOU3koIAXKhMNzPdrBAm7IJqYJGdWee8FNk?=
 =?us-ascii?Q?FzHLFWDWGjYH9s1CyC9B0llenOf9pX5Rh0G9JGD0QsyfHqXU2s7GSJzrV5/a?=
 =?us-ascii?Q?Gdj+V0/1Pj4LUl+lUZoFu+esVOgWQEH7snXBV/tHHX5781km9DWaVg6EmjvK?=
 =?us-ascii?Q?BU6pbfg4A7HQyi8PBtmUDdJPG8uoWwwb6mUsGjy9dSxSPqi8bGAP8dVw4at3?=
 =?us-ascii?Q?z7JSXpP3LZFZrKspEVo07YzESpArgnvFHMsP4HQHB9vwI+n5jdgundgZHeZg?=
 =?us-ascii?Q?ZN7u7IuvWe2kw3rEMpUjeIwjpOrSY4UO3agiEyslTay/F8XcUreDf8NEUxjm?=
 =?us-ascii?Q?55kR2ske0/3m9h9Uv4MXqpKnukP2rbQXEehakH8RJbW0BowPe15S67ZyXeSS?=
 =?us-ascii?Q?D8gcYLvdlgSM9qoMhR4dDGiuKPm/SIg50FxJko8ixGz6HrBewd08iXm6gRo/?=
 =?us-ascii?Q?TRnYWwk1jGuyub5EVbqNerczRyFV25NXf0+pdzTlao6/6KEdS2uM+Gk0BS5d?=
 =?us-ascii?Q?uMjEf9fVRP1IDYkeq6ISQ7gRJ2YMaqg8twKN+MhPEkR22WhVnV/eGVeghREr?=
 =?us-ascii?Q?PcqisGMP+yAB7hHz53hVEsLuap0wm0T5DvlPNVwY59sWTq0lqSGpxfbcCzj7?=
 =?us-ascii?Q?k/nD9aEAyofGN1xbNkdkySIUHFDn7HWPcYHDBdz80tZW6H0xxyn2+0RAZxMf?=
 =?us-ascii?Q?oRUGYMAL/NEpvymI5F49df3nUYvB7TV5QEwxXU238HWgNu1kjiNlvuRKn4hX?=
 =?us-ascii?Q?reBQjI9/3C6Ns8yehZCNJdw1eLG+6u6Wh41AgcYLOB7Bf3oCDtxekx/ClnJr?=
 =?us-ascii?Q?KM1mymYmg+vl5uTu4VZX/6o/gH3+zDyc51IwT3k8DLCKV7vLiqq+LM5ZhBJg?=
 =?us-ascii?Q?K4bZ8j3sFwQQmHlHDavY3hWY8xhtcjboHQ5jUAT1YLeKrW9DbyTXBo/nlgoM?=
 =?us-ascii?Q?DX/rZPtAPngqvTiPsZXCs2FiLdPgsDhIc5lF8Gy67EZV4Qp72zIJU01fra2y?=
 =?us-ascii?Q?eKP8PBjYA2I1m3hZ2Xo8n9wwouBBnglnY3RYwbg8Fp1KfRB8TGRn2IGNiQoE?=
 =?us-ascii?Q?K22vLTVr6Wt2RIHeyNCRE6w9e5fNQxQMu6aJ7BNGEB16p00mfr2f3mGv7cNu?=
 =?us-ascii?Q?/opI9r1APS46IEbSn5IwDXYtYetleKztYKhMNGNYxIvQjATRYA56xq3eNYdW?=
 =?us-ascii?Q?hn4jI7Mpijouzwq2cEUhN4Vrf+oRzPipMf4Zmvqa+o86TPvs8LGWRzvwsmLH?=
 =?us-ascii?Q?3Sm21GzqwQu93oKdzvG3xoRz7y+SeOTMyIevzqhY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2e7400-a7fa-4359-3165-08dc6983225b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:05:12.1487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4pkEW4SgKeefkn9e82CeNsv1ehUgSzPwBpJNSCYFebxbmV3a/rrTCaQqoZ38urfuEsOaOom50b8yq1oRMgxE1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
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

On Tue, Apr 30, 2024 at 01:09:55PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_EXITLINE register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 7 +++++--
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index f5b33335a9ae..1cbd8c6714b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1685,7 +1685,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> -		val = intel_de_read(dev_priv, TRANS_EXITLINE(cpu_transcoder));
> +		val = intel_de_read(dev_priv,
> +				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
>  		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
>  	}
>  unlock:
> @@ -1877,7 +1878,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  	 * transcoder, EXITLINE will need to be unset when disabling PSR
>  	 */
>  	if (intel_dp->psr.dc3co_exitline)
> -		intel_de_rmw(dev_priv, TRANS_EXITLINE(cpu_transcoder), EXITLINE_MASK,
> +		intel_de_rmw(dev_priv,
> +			     TRANS_EXITLINE(dev_priv, cpu_transcoder),
> +			     EXITLINE_MASK,
>  			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
>  
>  	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index ebc22999572c..0e0c71ea9fe3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -9,7 +9,7 @@
>  #include "intel_display_reg_defs.h"
>  #include "intel_dp_aux_regs.h"
>  
> -#define TRANS_EXITLINE(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
> +#define TRANS_EXITLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
>  #define   EXITLINE_ENABLE	REG_BIT(31)
>  #define   EXITLINE_MASK		REG_GENMASK(12, 0)
>  #define   EXITLINE_SHIFT	0
> -- 
> 2.39.2
> 
