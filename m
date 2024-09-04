Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7A696BEC3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23AD10E441;
	Wed,  4 Sep 2024 13:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HnMV/oGV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7081A10E441
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725457163; x=1756993163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NB1IOxLEsrZTQHUfg6DESmkVPgBWBlrYP9xJjV+2JNE=;
 b=HnMV/oGVghhSkaExy1ALFGaNvQsoas+pdJeUoPunaneyr0mlRCB3D7cQ
 +IfaQd+6BhhT36Sm7//H7tbaSi5AIR/+cKPn5gbKssbkS6PQRncdeYyal
 bj6ZQ0DeMlFXQIydRVp0E1uk0peRREcZYW7bGOMmuBEWKeBvi8asyO0ux
 eIa1ZyyiIlqLgTsa97+sFdWVgJ0/1zPUlWpLuI95AFV5AU1RQeLgle8ZB
 lzNAZ3D9p/qQFnQUMIX6dXSu+V3bJ2TatEhKYVPDg2uohRuK37QBLBBHB
 wvyTp4VU1L8AhrcEwMRKKr6jGzd2oB6b3S8alma4588gQ21PGRvMZY8Ys A==;
X-CSE-ConnectionGUID: X1Lvbs5FQ2WK9Y+7qbfLlw==
X-CSE-MsgGUID: ECk2OmYvSzWtxAVZBL3qXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24070020"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24070020"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:39:23 -0700
X-CSE-ConnectionGUID: QHOsbqg1Raa3weJs5ztjbw==
X-CSE-MsgGUID: 8fl0rYSDT5yrhu9L9Yzotg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65321149"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Sep 2024 06:38:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2024 16:38:33 +0300
Date: Wed, 4 Sep 2024 16:38:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: use to_intel_display() global state
 macros
Message-ID: <Zthi2WGDpKoRM_XI@intel.com>
References: <20240904125301.3813721-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240904125301.3813721-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 04, 2024 at 03:53:01PM +0300, Jani Nikula wrote:
> Convert intel_atomic_get_{old,new}_cdclk_state() and
> intel_atomic_get_{old,new}_dbuf_state() to use to_intel_display()
> instead of to_i915().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index cfdcdec07a4d..1fe445a3a30b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -88,9 +88,9 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>  	container_of_const((global_state), struct intel_cdclk_state, base)
>  
>  #define intel_atomic_get_old_cdclk_state(state) \
> -	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
> +	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->cdclk.obj))
>  #define intel_atomic_get_new_cdclk_state(state) \
> -	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
> +	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->cdclk.obj))
>  
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>  void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 78b121941237..e73baec94873 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -73,9 +73,9 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
>  	container_of_const((global_state), struct intel_dbuf_state, base)
>  
>  #define intel_atomic_get_old_dbuf_state(state) \
> -	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
> +	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
>  #define intel_atomic_get_new_dbuf_state(state) \
> -	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
> +	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
>  
>  int intel_dbuf_init(struct drm_i915_private *i915);
>  int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
