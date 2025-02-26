Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CCDA45CA6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 12:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34BD10E8CF;
	Wed, 26 Feb 2025 11:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9Xbvqz0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69B510E8CC;
 Wed, 26 Feb 2025 11:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740568082; x=1772104082;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ckzXac5yuGkFQVuF78al9hTkcWDDMaRxOr7nCXLmFR8=;
 b=C9Xbvqz0tJwaDtQZbxzzsR9ZfKoi6K031Ib6Mb04jj3zdih1E+mW+Vb7
 Un7jaRP1iGVaIOMl1mXr/NhxXM/xKaJXkGvwImmXfX6ORDOUvXrcpa2Ej
 ozHxYRfN2G+WQBgttFLet74TyqM2/XbH6zIzzPKcC5w72e6DfzV2uOHij
 M0XLRyGNHVY/HIQbe4jFxD7Rk/WgcgUu/+mxTS/HMEdVXwkDhCeNLUDlm
 7jlPlDSQIUD7cyReE6YzF55vmBo21051yXDsaJREN8sANwq7y70xsETMD
 B8NHa0JCOrTB5hOm37NjbwzJ8uhSj8JTvXJ2SLS4d/r1KIYevhgKSXZ4z w==;
X-CSE-ConnectionGUID: P4hSgwVUTjqG2Fc6XWxNQA==
X-CSE-MsgGUID: b/rS0F3hRkW852kwTgt/Xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41604917"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41604917"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 03:08:01 -0800
X-CSE-ConnectionGUID: D9oLDQ+TSOmZQoL//vlB/g==
X-CSE-MsgGUID: Wb6crw8XR1y130oeajtkRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="147496022"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 03:08:01 -0800
Date: Wed, 26 Feb 2025 13:08:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/power: move runtime power status info to power
 debugfs
Message-ID: <Z772S8QBkIrVJucR@ideak-desk.fi.intel.com>
References: <20250225121742.721871-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225121742.721871-1-jani.nikula@intel.com>
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

On Tue, Feb 25, 2025 at 02:17:42PM +0200, Jani Nikula wrote:
> The i915 core debugfs has no business looking at power domain guts for
> runtime power status. Move the info to the more appropriate place.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  drivers/gpu/drm/i915/i915_debugfs.c                | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 396930937d98..96346b33d7e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2317,6 +2317,9 @@ void intel_display_power_debug(struct intel_display *display, struct seq_file *m
>  
>  	mutex_lock(&power_domains->lock);
>  
> +	seq_printf(m, "Runtime power status: %s\n",
> +		   str_enabled_disabled(!power_domains->init_wakeref));
> +
>  	seq_printf(m, "%-25s %s\n", "Power well/domain", "Use count");
>  	for (i = 0; i < power_domains->power_well_count; i++) {
>  		struct i915_power_well *power_well;
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 1c2a97f593c7..0d9e263913ff 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -411,9 +411,6 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>  	if (!HAS_RUNTIME_PM(dev_priv))
>  		seq_puts(m, "Runtime power management not supported\n");
>  
> -	seq_printf(m, "Runtime power status: %s\n",
> -		   str_enabled_disabled(!dev_priv->display.power.domains.init_wakeref));
> -
>  	seq_printf(m, "GPU idle: %s\n", str_yes_no(!to_gt(dev_priv)->awake));
>  	seq_printf(m, "IRQs disabled: %s\n",
>  		   str_yes_no(!intel_irqs_enabled(dev_priv)));
> -- 
> 2.39.5
> 
