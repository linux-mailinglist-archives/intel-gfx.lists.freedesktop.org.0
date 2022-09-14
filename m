Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4D55B8F6E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 22:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884EC10E9E0;
	Wed, 14 Sep 2022 20:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5351310E9E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 19:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663185598; x=1694721598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Cdd3Pq5uez7b1diwRKLljCog7uJh8JzCnMvWEWWTJvE=;
 b=nvRchg0DcTrqT0Ya+WFo1MV34fL2sisHy8bp127yhW1V49W6WlICKV/Z
 YaWGWcqzVkBzRpQgeMJN66MKK0d+m/R84TNE77gtXwNd+6HK8OZ9I8Z1y
 9Qen0cVvVtMNkzbNCZnApG17ARHnj/l539bS+9uPGlozQddCEoXx0ecLA
 OHBi088uOpOHjw8cZK8WPRaeZ+SOpTnOIqjgPNwNAdYq6PrqYiihr7xXq
 OmZdSDk57s0Pf/TNN5Ncil5BkzZTUTshaCeKEa7pVejbULvEP1HkESgzW
 V8b7A+tRb4rAWVN+RYCjLTWwGZQ2LR0aQ8D4xW7hqcjWv1hDHo4wjaYQH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281561947"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="281561947"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 12:59:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="650200810"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 12:59:57 -0700
Date: Wed, 14 Sep 2022 13:00:10 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220914200010.GA844866@mdnavare-mobl1.jf.intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
 <20220820005822.102716-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820005822.102716-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 19, 2022 at 05:58:19PM -0700, Anusha Srivatsa wrote:
> This is a prep patch for what the rest of the series does.
> 
> Add existing actions that change cdclk - squash, crawl, modeset to
> intel_cdclk_state so we have access to the cdclk values
> that are in transition.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index b535cf6a7d9e..43835688ee02 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -15,6 +15,14 @@ struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> +enum cdclk_actions {
> +	INTEL_CDCLK_MODESET = 0,
> +	INTEL_CDCLK_SQUASH,
> +	INTEL_CDCLK_CRAWL,
> +	INTEL_CDCLK_NOOP,
> +	MAX_CDCLK_ACTIONS
> +};
> +
>  struct intel_cdclk_config {
>  	unsigned int cdclk, vco, ref, bypass;
>  	u8 voltage_level;
> @@ -51,6 +59,11 @@ struct intel_cdclk_state {
>  
>  	/* bitmask of active pipes */
>  	u8 active_pipes;
> +
> +	struct cdclk_step {
> +		enum cdclk_actions action;
> +		u32 cdclk;
> +	} steps[MAX_CDCLK_ACTIONS];

If this is what you need to access later in bxt_set_cdclk , you needto
add this to intel_cdclk_config which is then part of cdclk_state and
that is what will get programmed in atomic_check and it gets sent to
bxt_set_cdclk in atomic_commit_tail.

This is the way ypu can access it in bxt_set_cdclk, you cannot access
the new_cdclk_state there, you need to use cdclk_config that is already
getting passed to it

Manasi

>  };
>  
>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
> -- 
> 2.25.1
> 
