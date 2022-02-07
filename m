Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC224AB5DF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 08:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F4410E37C;
	Mon,  7 Feb 2022 07:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C468E10E37C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 07:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644219016; x=1675755016;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5wLy5LH3/mgsfto80REGbPjBLDNMb3NyvtoJ5cLZg9c=;
 b=JrSYlTZ1/7eMyxo9V5sQ8T0fX8s7dMmznnZNLMIs4VLUaDjF+dED+8Jl
 eVrlEbcU7nJvz8oKfYkd+dtzVNG4wFINQ/z6kcGhwze6o9g3lKRgvaCtb
 D89dbYfSgofVnY0HZm+E+pD9iVnXd8cHeMylm86VlUpu1GE8LUkOOG079
 urWaVmyj5tlZl3c9uVe5lDrbXnEsD0Toqh8w57PMnAgo22KeH4c0Xfd6g
 b/bjnmotaGKTr2+Ll0x3Q3rLNRWE1UeqBLHbBfuGE/qqvzhACZW2A83Mt
 /yrR1B5eOwP+JouQuvgYQ7K35YY+u5f3BF5Ob04f0diSmpey7J1ukP80N A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="246250754"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="246250754"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:30:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="525034312"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:30:13 -0800
Date: Mon, 7 Feb 2022 09:30:27 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220207073027.GB2471@intel.com>
References: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
 <20220204141818.1900-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204141818.1900-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Populate pipe dbuf slices
 more accurately during readout
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

On Fri, Feb 04, 2022 at 04:18:17PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> During readout we cannot assume the planes are actually using the
> slices they are supposed to use. The BIOS may have misprogrammed
> things and put the planes onto the wrong dbuf slices. So let's
> do the readout more carefully to make sure we really know which
> dbuf slices are actually in use by the pipe at the time.

We have actually already bugs, related to this.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2eb70ec38f6e..79d61a2935ea 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6663,6 +6663,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		enum pipe pipe = crtc->pipe;
>  		unsigned int mbus_offset;
>  		enum plane_id plane_id;
> +		u8 slices;
>  
>  		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
>  		crtc_state->wm.skl.raw = crtc_state->wm.skl.optimal;
> @@ -6682,20 +6683,22 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_uv);
>  		}
>  
> -		dbuf_state->slices[pipe] =
> -			skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> -						dbuf_state->joined_mbus);
> -
>  		dbuf_state->weight[pipe] = intel_crtc_ddb_weight(crtc_state);
>  
>  		/*
>  		 * Used for checking overlaps, so we need absolute
>  		 * offsets instead of MBUS relative offsets.
>  		 */
> -		mbus_offset = mbus_ddb_offset(dev_priv, dbuf_state->slices[pipe]);
> +		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> +						 dbuf_state->joined_mbus);
> +		mbus_offset = mbus_ddb_offset(dev_priv, slices);
>  		crtc_state->wm.skl.ddb.start = mbus_offset + dbuf_state->ddb[pipe].start;
>  		crtc_state->wm.skl.ddb.end = mbus_offset + dbuf_state->ddb[pipe].end;
>  
> +		/* The slices actually used by the planes on the pipe */
> +		dbuf_state->slices[pipe] =
> +			skl_ddb_dbuf_slice_mask(dev_priv, &crtc_state->wm.skl.ddb);
> +
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x, mbus joined: %s\n",
>  			    crtc->base.base.id, crtc->base.name,
> -- 
> 2.34.1
> 
