Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAF08A7110
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239B2112D49;
	Tue, 16 Apr 2024 16:16:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUZ8Rsf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F182112D46;
 Tue, 16 Apr 2024 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713284215; x=1744820215;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZKcDoXpgbXxdvNRNrgACc4Mshf8JUl6SWFnLDqOc6GQ=;
 b=YUZ8Rsf39lLOkRNuX31gzAOrhLjt6d93g6EMmAAX0veOZbhzf6GBALWF
 yX9Tvd/rLW/fcMc5AJ0HwBpxmxgZIqC1VKDwY8EIofGlP3w4LPSc2T5QI
 yi5SmEf0nqrH499+K2qcCQ1cpQbWHL5TbsRQxacsErpMjPDWlqIkCxq5K
 FlYxkfy9ehZPKT+j6vke6KO4Jvtfd4h12fI3sfWIGRGXnpSIee5Bpw9m7
 PTgr6ZTCBzBG/Hv76+7mWXQzxJAqki8XahyyKoL3O6IcyK2d8+M6P/QlN
 79ZbDQW9FxNiCJIY7ROrQEGG/YE1aoawVns7WET0koaH//9QAxkgZOVCU w==;
X-CSE-ConnectionGUID: lPoshXnmTnyab3h8XoQ4Xg==
X-CSE-MsgGUID: uCIIfrgrQuSj9rEmMs0EfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="26245204"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="26245204"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:16:53 -0700
X-CSE-ConnectionGUID: XQZexpBsTw+xICJlKzgOdA==
X-CSE-MsgGUID: gnXOICk5RhSEsOlp7oFrkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="27107009"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:16:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:16:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:16:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:16:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:16:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JrrVnGBo348UUpnK4U4EWnQEN4hEv2z9WJ70EMunGACIfFtunZwnDt2FmQJtuzzLNLYOIENeURuaV+zPB8qroMcECSb5Bwo0S2ve6MXNLG1iGvLOXb9vz27e7U33Qd4MvRSjeClM9Mslh6mHCaWj90zeVpQG+aGAWsaa5BWg7W9BWLAq69Add7JPpfPbLdIiy/Ad4BARe/8Fcv4NcaTYcgaEJYoAFZXFbfjSFFyrbqgkKrEL15d/GnO7YRaOE5FH5Khqf0UQyvRTwkyrPtjEjromGMXd1GodQGU6CBB8D+8zjdvxlHtalGduhfuGcY+ePdnyOYEgK8VlMrtP+47UuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iUJWVS4M4gtXp1gXYOvJTB4PskDrkooTPeERVcYkHNA=;
 b=EOEa58mulJoOo+I1OdARS9gOtKM7FQvZXY4UlN3p5RfXPyNWHW3eSupmLmHHuAbD+eBTwC+s6c0HtuzcXFsasp8EXefhy28SYP/wI1n61aGExQ7wksDECjY4rhSym3dEWWQcidNNJNM4Cq2EXjjv27BEzjR73ZEmY8Wi/GoVv2hz7tBsmVOPmLu4Qyl2/XGoGrU9JF81gOKR8yn4/yDkzyDjxnPUSvq6spYbmhXDoaMWU09/aLztHeJcOqevUwe7W7jxgzlGMgMRq3NZJP+NeLvOpXZElgWkKhBBl//fibiSg8JCD7MfLrgSfWStWzFgoIoEVBYgYwIg3kNrfB+QtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 16:16:42 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:16:42 +0000
Date: Tue, 16 Apr 2024 12:16:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 6/7] drm/i915/de: allow intel_display and
 drm_i915_private for de functions
Message-ID: <Zh6kMTfGuSqVjNIV@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <0b48d6bebfe90aa2f901a05be8279ed887d99d7a.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0b48d6bebfe90aa2f901a05be8279ed887d99d7a.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR01CA0043.prod.exchangelabs.com (2603:10b6:a03:94::20)
 To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 36318b31-d11a-414e-9614-08dc5e3099f8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1XGPHXYSTHQozCjO2l8itOvHFax9La5H1+Ls2MNG6ds3c1+XztK+tTmY6p+CrcZ31LrqYgPv5yAGkpY3Z32KFHQ2FnK+vG3I2KqNMKUu9nepGz3kbjUFB0z95DR18jk1JGtoEE0OzwkyznrNyk7/iYbmDsujLqqauTq12ZSf5hfI2Mw3g+jtnOxt8WLQUiP9LAmZDhc7lc8ZWGKxUJDV2RZW1MN+LbL/ezYZF1ML4rdSZ5+W0j+i6GoTtk8uO9BGN2ukz4WCM5dS2A+Ybw+A7qFPEfDeAiTsdOH2Gd187RrNPhl9n0f/OjiEpq1k5boBRs7/rdEJKjp5dmSN4aRJOxLhTJdqF7tDqOkXlC05n7RyJvbq0rJOlC+UgaFOETPGU96OjsQsm91Jry/Es0Rc932ihUGxQlJNJgmrwPoVl2Rqp0nQmkfIQl7+jO+vyVfRy3cEpzz0mqH0NDCMtZbnTJHoT9JX1fi5qHyT4pi04d2lFiNcirGYC0xJ+awww8TBM2PraQTZj0nPcDTLMnelag99n5CWWZF+RV6KXdxM/KHXaGWpBIhtAJmWBZnQWiYMQAt0Tpv6u8e978g4knqcRfKYPO8PUKfLH1ltl9dwup3EZaeo5EFFTEOn70SjZLflkumXRNDI67Ql4O+Ow4jcdtbbiL1IFuIwJU1HYU6mmh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fW49i4xyV9N+LCN5KByNhgbZ5FJBJcKV9F2X2JUbaza4/PUKw27BS6oytdZS?=
 =?us-ascii?Q?TnWNesErLSqw/e79hrpcNOQMgQhtFyiXnUsRl9LRRbBEN2OgjMCNHP3UbluK?=
 =?us-ascii?Q?HYmnOHPxo9dAAbEPFd01B4eGZgwC8jrRgw0CtblZROobrP2lkvEPUXOsU6Jt?=
 =?us-ascii?Q?aFYQkdXYJf7MsO3KWxZGnNgQ1I5Q4ELsM2om9FPi7CbJb4kSRDYUipwLhTQ+?=
 =?us-ascii?Q?fC9wVorNq5xzlGiAFhp05uFATjRnPDBAcEJAhoxhK0/mvVkQo+mOVEdf456i?=
 =?us-ascii?Q?Ygc5WJ2z2ABYVjjwSCJY2ZzHSFeywcXKz0rdVaaDjQb/y7y2q+S0et7PA0Oh?=
 =?us-ascii?Q?kQZDgmbMoEhaKZ691Rc5rpv2++ePOjkWt94g4NMJvegxHD6OXIutvfp0kDmO?=
 =?us-ascii?Q?1oBj+2hmOR/xdUyeHcww9cBXtRHndyY1q7YcxLLd2wYv1RaBWErnpe8EjCvW?=
 =?us-ascii?Q?tgDNur6QudNTd3HwDxJFy2mlML2zSwTTQhm0qiUlAvRpdQfwutDUUbWyjM/u?=
 =?us-ascii?Q?gd4bw8BY0jxy8cHs1u5T7WoSvYGDaowvia0Ei4HKC7kEX0NQVLKgYSl5luFr?=
 =?us-ascii?Q?d9kbrGfucGx/6eBAQ8uIwHlSapCX8ZHndcgdYJVyQ6tFiJGiNf0NISlEGJlX?=
 =?us-ascii?Q?nNlyCwS/Y8icSHskN08GMqH0oVtTfdf9BSHtDuCmBMMIdLNsTX8qHOiMUGav?=
 =?us-ascii?Q?cfe1m3nKJA7PXMscWneAr7MEiIawVocwmVyQ2zSAyuq9fQpjM39iuKA8Vi3K?=
 =?us-ascii?Q?V9s8swWqUFgd+QpoQzBN9kytfEhIEen//5OxsWndqP3sQZfwDKo48Wvx0fvr?=
 =?us-ascii?Q?hS7iSOg+WEIafnBdXG125ACwZxo1PZ2/qXlj+iLAgD+oyf4WCmDbZA5DbdFI?=
 =?us-ascii?Q?Z4ovOhBo8o6EOm7/iuscdNPCZ3txqHU0N/shEtAXoNmc9tdouJR5VkIuz9CO?=
 =?us-ascii?Q?MBVJrENXNaUV9nEgOgTi9sL1EIkR84Qu5UEGRRMNzJh7JTVR44NG/c74MS2O?=
 =?us-ascii?Q?26ykBIvL1HeOdv1I/pElM5FrlMu8UwjJ6XVOrQnnTPWOjJeg4uEnahMQHiFd?=
 =?us-ascii?Q?Dk6FArv2Gd6ux+Tf7mSs0N0wwVrzgz+79ogSSJm/6i/pBs3spyQrtV7hIhno?=
 =?us-ascii?Q?nLQhfQZBXJbSCXxmOgusoHuViAUM9PviFKAB/wYmQPNMi/LQ5W4kavy/HvNC?=
 =?us-ascii?Q?kSl/tZlnCocV7reZenB9tFs4Q0YReYAZ7lVOrrPTGkvA6655sy0T0MSKv1YI?=
 =?us-ascii?Q?+KPnuiiytwwvdf8UFsRtdzx92fnbt42QGo/A90oifFN2yBq37cXpBIbJxWM5?=
 =?us-ascii?Q?gtTbhPNn3mJjlzyaWEggq20mrVHvQOPZREZKXevx0jV23EinFVHIBhkE8+4B?=
 =?us-ascii?Q?AkSUWSumFc2YPpFdaYzAWw8i986IUqSPzAQwJ8138AAGqevceT+sda06J6t5?=
 =?us-ascii?Q?wyZngwHbjRwZTSxJ8E2419tS+NWHCSu2KEXxUxR+8c+rtUTBR6EhdaWH51uF?=
 =?us-ascii?Q?Antg4Xv+EOuCgfUjPMBrCJQeRfYMapK6zaTYb/gQrGZujU8jP+BXKDwk1Ycv?=
 =?us-ascii?Q?zk0I6hUTK5Fc7sX/pY5Kw/8JH/BBMwqqE5j5acyDs2fBg8V7LYKmQjwHUqI5?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36318b31-d11a-414e-9614-08dc5e3099f8
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:16:41.9689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O0urF1rP0hW16trXwvt6axnX1mTlJg4JeSiankp9sSXb/VZnD+99e+TyF/s3faeNG4mCC5rERH0UkN5IBFqaaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
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

On Tue, Apr 09, 2024 at 03:26:48PM +0300, Jani Nikula wrote:
> It would be too much noise to convert the intel_de_* functions from
> using struct drm_i915_private to struct intel_display all at once. Add
> generic wrappers using __to_intel_display() to accept both.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> This was done using a cocci + shell script combo.

the conversion below seems sane.
would you mind sharing the scripts in the commit message,
so scripts could be used when porting this patch to other
trees?

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h | 102 +++++++++++++++---------
>  1 file changed, 64 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index ba7a1c6ebc2a..a08f8ef630f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -10,80 +10,101 @@
>  #include "i915_trace.h"
>  #include "intel_uncore.h"
>  
> +static inline struct intel_uncore *__to_uncore(struct intel_display *display)
> +{
> +	return &to_i915(display->drm)->uncore;
> +}
> +
>  static inline u32
> -intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read(struct intel_display *display, i915_reg_t reg)
>  {
> -	return intel_uncore_read(&i915->uncore, reg);
> +	return intel_uncore_read(__to_uncore(display), reg);
>  }
> +#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u8
> -intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read8(struct intel_display *display, i915_reg_t reg)
>  {
> -	return intel_uncore_read8(&i915->uncore, reg);
> +	return intel_uncore_read8(__to_uncore(display), reg);
>  }
> +#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u64
> -intel_de_read64_2x32(struct drm_i915_private *i915,
> -		     i915_reg_t lower_reg, i915_reg_t upper_reg)
> +__intel_de_read64_2x32(struct intel_display *display,
> +		       i915_reg_t lower_reg, i915_reg_t upper_reg)
>  {
> -	return intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
> +	return intel_uncore_read64_2x32(__to_uncore(display), lower_reg,
> +					upper_reg);
>  }
> +#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
>  {
> -	intel_uncore_posting_read(&i915->uncore, reg);
> +	intel_uncore_posting_read(__to_uncore(display), reg);
>  }
> +#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
>  {
> -	intel_uncore_write(&i915->uncore, reg, val);
> +	intel_uncore_write(__to_uncore(display), reg, val);
>  }
> +#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
> +__intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
> +	       u32 set)
>  {
> -	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
> +	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
>  }
> +#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
> -	      u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait(struct intel_display *display, i915_reg_t reg,
> +		u32 mask, u32 value, unsigned int timeout)
>  {
> -	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
> +	return intel_wait_for_register(__to_uncore(display), reg, mask, value,
> +				       timeout);
>  }
> +#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
> -		 u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
> +		   u32 mask, u32 value, unsigned int timeout)
>  {
> -	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
> +	return intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> +					  value, timeout);
>  }
> +#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
> -		     u32 mask, u32 value,
> -		     unsigned int fast_timeout_us,
> -		     unsigned int slow_timeout_ms, u32 *out_value)
> +__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
> +		       u32 mask, u32 value,
> +		       unsigned int fast_timeout_us,
> +		       unsigned int slow_timeout_ms, u32 *out_value)
>  {
> -	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
> +	return __intel_wait_for_register(__to_uncore(display), reg, mask,
> +					 value,
>  					 fast_timeout_us, slow_timeout_ms, out_value);
>  }
> +#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
> -		      u32 mask, unsigned int timeout)
> +__intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
> +			u32 mask, unsigned int timeout)
>  {
> -	return intel_de_wait(i915, reg, mask, mask, timeout);
> +	return intel_de_wait(display, reg, mask, mask, timeout);
>  }
> +#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
> -			u32 mask, unsigned int timeout)
> +__intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
> +			  u32 mask, unsigned int timeout)
>  {
> -	return intel_de_wait(i915, reg, mask, 0, timeout);
> +	return intel_de_wait(display, reg, mask, 0, timeout);
>  }
> +#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
>  
>  /*
>   * Unlocked mmio-accessors, think carefully before using these.
> @@ -94,33 +115,38 @@ intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
>   * a more localised lock guarding all access to that bank of registers.
>   */
>  static inline u32
> -intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
>  {
>  	u32 val;
>  
> -	val = intel_uncore_read_fw(&i915->uncore, reg);
> +	val = intel_uncore_read_fw(__to_uncore(display), reg);
>  	trace_i915_reg_rw(false, reg, val, sizeof(val), true);
>  
>  	return val;
>  }
> +#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
>  {
>  	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
> -	intel_uncore_write_fw(&i915->uncore, reg, val);
> +	intel_uncore_write_fw(__to_uncore(display), reg, val);
>  }
> +#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
>  {
> -	return intel_uncore_read_notrace(&i915->uncore, reg);
> +	return intel_uncore_read_notrace(__to_uncore(display), reg);
>  }
> +#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
> +			 u32 val)
>  {
> -	intel_uncore_write_notrace(&i915->uncore, reg, val);
> +	intel_uncore_write_notrace(__to_uncore(display), reg, val);
>  }
> +#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  #endif /* __INTEL_DE_H__ */
> -- 
> 2.39.2
> 
