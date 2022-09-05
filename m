Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4D85AD1CA
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 13:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8040610E065;
	Mon,  5 Sep 2022 11:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D622510E065
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 11:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662378494; x=1693914494;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=x8FlhJlcR4D+bAjJCzS0AcJhv7F3UhhkLWiHQudSFrA=;
 b=fRVTARDSY63ocKCp8dXezwb+y83ijr/2upussHhoHXjH3ZNUrf14blz4
 PDP/4S7qVkg6I81z5IPVTFsMAkyL+L+dqABGpAuyoqFnms/seeGI/STDp
 TDRppOKm92ALooUyELjpxD0LsTE+9P2YcUPGfQYVwtWP9bpixt+Z7qoDf
 J5pvKFKKwcSiTV6EvuVMAr3gCOqBLVzlQdGKTj+4SPUApRuHBoQWqAdeb
 xB7UqI7yoVjWiUaSsGiUqOwP7xJak6qZtxoSMev71X4i1QF030Pkoem2W
 KHTRKTMkz9h1etYrSMkHNHOR0cPAdO03bZ/KWyC9Ld3s6zGPStbZiW3K+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="297160015"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="297160015"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 04:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675262477"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 05 Sep 2022 04:48:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 05 Sep 2022 14:48:10 +0300
Date: Mon, 5 Sep 2022 14:48:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YxXh+gGqGGahJc08@intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220905080500.213330-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
> In case of ICL and older generations disabling plane and/or disabling
> async update is always performed on vblank,

It should only be broken on bdw-glk (see. need_async_flip_disable_wa).

> but if async update is enabled
> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
> when plane is still enabled can cause DMAR/PIPE errors.
> On the other side PLANE_SURF is used to arm plane registers - we need to
> write to it to trigger update on VBLANK, writting current value should
> be safe - the buffer address is valid till vblank.

I think you're effectively saying that somehow the async
flip disable w/a is not kicking in sometimes.

> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index bcfde81e4d0866..bc9ed60a2d349e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -615,11 +615,13 @@ skl_plane_disable_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> +	u32 plane_surf;
>  
>  	skl_write_plane_wm(plane, crtc_state);
>  
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>  }
>  
>  static void
> @@ -629,6 +631,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> +	u32 plane_surf;
>  
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> @@ -637,7 +640,8 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  
>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>  }
>  
>  static bool
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
