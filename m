Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9EA7ED5EF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 22:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6980710E248;
	Wed, 15 Nov 2023 21:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74B010E248
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 21:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700083301; x=1731619301;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7PF1bop6pccTjpJBS0Yukg1oaMxQ9R/D99C94ai8jEs=;
 b=aZdolPOt03C7S07CUeQMwePIkiG4wxqcjV6c/2lCWNkpeydtcFZbvoPI
 J2f1Y1YpHwWGMt+KHtQqBe4wqiNlNKeyGTEzaSdblFwDzRAJ6SZkInB6Q
 v3PNqas2Y5u4QAwjZ1FveQ3/j/Q6O57VxRM0PZuEV1NMmYZgVY4sm8ytQ
 ksNsO6J5hyRU4CnPs5KeN4hTQr5oL5CcKMjgQnjKCV235vKxFl/3D5YwO
 v/XVLaAjutUcIiwPQo6x7/fsEjOW2oPSwKz+2c0eQ89mizCH2QQRGJ/ls
 QzFnKlFt3Mj1yRgb4nP0VYU14JrRZzHcojBZ0D7YycnPCfe0/8p4Zlqav g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422053732"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="422053732"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 13:21:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758623226"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="758623226"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 13:21:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 23:21:37 +0200
Date: Wed, 15 Nov 2023 23:21:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVU2YYaxw1li-neb@intel.com>
References: <20231114134141.2527694-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231114134141.2527694-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Remove dead code
 around intel_atomic_helper->free_list
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 14, 2023 at 03:41:41PM +0200, Jouni Högander wrote:
> After switching to directly using dma_fence instead of i915_sw_fence we
> have left some dead code around intel_atomic_helper->free_list. Remove that
> dead code.
> 
> v2: Remove intel_atomic_state->freed as well
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 20 -------------------
>  .../gpu/drm/i915/display/intel_display_core.h |  6 ------
>  .../drm/i915/display/intel_display_driver.c   |  7 -------
>  .../drm/i915/display/intel_display_types.h    |  2 --
>  4 files changed, 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3effafcbb411..387acf21b794 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7086,24 +7086,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  	drm_WARN_ON(&dev_priv->drm, update_pipes);
>  }
>  
> -static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_atomic_state *state, *next;
> -	struct llist_node *freed;
> -
> -	freed = llist_del_all(&dev_priv->display.atomic_helper.free_list);
> -	llist_for_each_entry_safe(state, next, freed, freed)
> -		drm_atomic_state_put(&state->base);
> -}
> -
> -void intel_atomic_helper_free_state_worker(struct work_struct *work)
> -{
> -	struct drm_i915_private *dev_priv =
> -		container_of(work, typeof(*dev_priv), display.atomic_helper.free_work);
> -
> -	intel_atomic_helper_free_state(dev_priv);
> -}
> -
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> @@ -7139,8 +7121,6 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
>  	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
>  	drm_atomic_helper_commit_cleanup_done(&state->base);
>  	drm_atomic_state_put(&state->base);
> -
> -	intel_atomic_helper_free_state(i915);
>  }
>  
>  static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index aa8be02c9e54..34945f733a97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -298,12 +298,6 @@ struct intel_display {
>  		const struct intel_audio_funcs *audio;
>  	} funcs;
>  
> -	/* Grouping using anonymous structs. Keep sorted. */
> -	struct intel_atomic_helper {
> -		struct llist_head free_list;
> -		struct work_struct free_work;
> -	} atomic_helper;
> -
>  	struct {
>  		/* backlight registers and fields in struct intel_panel */
>  		struct mutex lock;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 62f7b10484be..9df9097a0255 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -259,10 +259,6 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	if (ret)
>  		goto cleanup_vga_client_pw_domain_dmc;
>  
> -	init_llist_head(&i915->display.atomic_helper.free_list);
> -	INIT_WORK(&i915->display.atomic_helper.free_work,
> -		  intel_atomic_helper_free_state_worker);
> -
>  	intel_init_quirks(i915);
>  
>  	intel_fbc_init(i915);
> @@ -430,9 +426,6 @@ void intel_display_driver_remove(struct drm_i915_private *i915)
>  	flush_workqueue(i915->display.wq.flip);
>  	flush_workqueue(i915->display.wq.modeset);
>  
> -	flush_work(&i915->display.atomic_helper.free_work);
> -	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
> -
>  	/*
>  	 * MST topology needs to be suspended so we don't have any calls to
>  	 * fbdev after it's finalized. MST will be destroyed later as part of
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 926bf9c1a3ed..8ddfc6efef96 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -678,8 +678,6 @@ struct intel_atomic_state {
>  	bool skip_intermediate_wm;
>  
>  	bool rps_interactive;
> -
> -	struct llist_node freed;
>  };
>  
>  struct intel_plane_state {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
