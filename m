Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E7F951AEB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 14:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01DE10E47E;
	Wed, 14 Aug 2024 12:34:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mh/zk1Tg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 343AF10E475
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 12:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723638854; x=1755174854;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1hqu5lE6mNC88WmHFRjO83cYA3vHWWvdq6bWGpZqcNo=;
 b=mh/zk1TgAEmB6OHctbkInpEHSJE3afuE6bTpMqgwfw78xKBx/LS3wELq
 8RyfVXClAiE2AmhRLKGgYL6SPdnrUQv9F3bIc+kEGNW7ZEj/chN9n1EAg
 PkNWkWwK/f4dX7Zl3ltb6ZN1woz3Ex52cbP+XJ+GOr1NK63V0Jy0QojPc
 a9RK+GRbk+bUYWbJAWVVH3VunhEwaCO+VMriebDl9wKuqAUP+98L/F7mh
 Uat515+F3Nbx2v/uv4iYfMyTmB4SWUxPsDcEaxARF2QxAJCplTuvj18yW
 nBUa/puffK6wzbhfyPxZG5EHmCE5husfPIAw55WCsIc2HrfOZ0CEGaokS A==;
X-CSE-ConnectionGUID: Xb+f9gGHRueZkhfVf22+Ww==
X-CSE-MsgGUID: fZH9RlvzQqeHZLeao+iivQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="22018313"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="22018313"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 05:34:14 -0700
X-CSE-ConnectionGUID: K1gXwat1TpOWk5r6h3mCvA==
X-CSE-MsgGUID: 3s5M/xeNTXik+7QpSfV8nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="58884326"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 05:34:12 -0700
Date: Wed, 14 Aug 2024 15:34:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: make __intel_display_power_is_enabled() static
Message-ID: <ZrykV8TC5w4pmyMR@ideak-desk.fi.intel.com>
References: <20240813151216.2573845-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813151216.2573845-1-jani.nikula@intel.com>
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

On Tue, Aug 13, 2024 at 06:12:16PM +0300, Jani Nikula wrote:
> The function isn't used outside of intel_display_power.c. Make it
> static.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

Same applies to intel_display_power_domain_str().

> ---
>  .../gpu/drm/i915/display/intel_display_power.c   | 16 ++--------------
>  .../gpu/drm/i915/display/intel_display_power.h   |  2 --
>  2 files changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 0af1e34ef2a7..cf8b38f2ebf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -198,20 +198,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>  	}
>  }
>  
> -/**
> - * __intel_display_power_is_enabled - unlocked check for a power domain
> - * @dev_priv: i915 device instance
> - * @domain: power domain to check
> - *
> - * This is the unlocked version of intel_display_power_is_enabled() and should
> - * only be used from error capture and recovery code where deadlocks are
> - * possible.
> - *
> - * Returns:
> - * True when the power domain is enabled, false otherwise.
> - */
> -bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> -				      enum intel_display_power_domain domain)
> +static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> +					     enum intel_display_power_domain domain)
>  {
>  	struct i915_power_well *power_well;
>  	bool is_enabled;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d6c2a5846bdc..0962f6aaeee6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -188,8 +188,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain);
>  
>  bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
>  				    enum intel_display_power_domain domain);
> -bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> -				      enum intel_display_power_domain domain);
>  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
>  					enum intel_display_power_domain domain);
>  intel_wakeref_t
> -- 
> 2.39.2
> 
