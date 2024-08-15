Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9695795306D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 15:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C95D10E12F;
	Thu, 15 Aug 2024 13:42:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWH0DONb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A9010E12F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2024 13:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723729368; x=1755265368;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=JGI8QgDNLR7kcRHIW/DTPECOS+jhMCyJIukP8rfuSAU=;
 b=PWH0DONbmZGK2FXJxklko6hiyLe58av9a2OTlPq3FLIeC/9hrB3QOvoJ
 OoJ+3RdmBoM3IXjcXxrPBtDtlJuUTkWvD1wKAnNZlo7Hyrt7yM9w0bwJ5
 Owzty/qbKBq54CpqUH4wqM3qudrUGrtSrrzEK+cE0l0wKUYf4X7W6dbrX
 t3ZZkjhYG4T8LSKEdFJVo0ZyqHyyxvHGSLXO84tnjiLEVZ5Kqaj1YnT/0
 eDHuJFr/imdnyqQWOpHnw6B/I8X7VIQCEEjtyniPNndzfWI3iMYTMGe3P
 Gy8HlFcYnP0ZkHgm3jTzFTzf0lUN2f8KbygffZxcXj55tsTytAuUoxRVm g==;
X-CSE-ConnectionGUID: mMD1bA6uRh+HLo/81BmEPw==
X-CSE-MsgGUID: e1FS+f1EQSWb9O/Wr8q/UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="47388669"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="47388669"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 06:40:54 -0700
X-CSE-ConnectionGUID: Apv1HlKmRjii7tzTqPuyaw==
X-CSE-MsgGUID: ECAxS22KQdmoXyoEwYnIvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="63777285"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 06:40:53 -0700
Date: Thu, 15 Aug 2024 16:41:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: make intel_display_power_domain_str() static
Message-ID: <Zr4FeLoFySKebKk0@ideak-desk.fi.intel.com>
References: <20240815120002.3472727-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240815120002.3472727-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 15, 2024 at 03:00:02PM +0300, Jani Nikula wrote:
> The function isn't used outside of intel_display_power.c. Make it
> static.
> 
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.h | 3 ---
>  2 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index cf8b38f2ebf5..39ab3117265c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -36,7 +36,7 @@
>  	for_each_power_well_reverse(__dev_priv, __power_well)		        \
>  		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
>  
> -const char *
> +static const char *
>  intel_display_power_domain_str(enum intel_display_power_domain domain)
>  {
>  	switch (domain) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 0962f6aaeee6..425452c5a469 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -183,9 +183,6 @@ void intel_display_power_resume(struct drm_i915_private *i915);
>  void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
>  					     u32 state);
>  
> -const char *
> -intel_display_power_domain_str(enum intel_display_power_domain domain);
> -
>  bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>  				    enum intel_display_power_domain domain);
>  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
> -- 
> 2.39.2
> 
