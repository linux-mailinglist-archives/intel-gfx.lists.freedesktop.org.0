Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE43694F02
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 19:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AB410E68C;
	Mon, 13 Feb 2023 18:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431C110E676
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676312106; x=1707848106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lfHq3LlXYx4wZMkH8qe4zwVLDQOJ7KtdceSpfxe9EhA=;
 b=TgNt10n2hJLo3fvhjim2QsrtwbLNiRwUxkWyMQw9PZ9EcsG6kz4ZMNWj
 MpHVllrwyg62CgMT4lxU1A0uaWUftHFGzsf5beAuqKausPgsH6VWr7YdW
 1K1vDFgaKNX7KMrVjanQYU29YYC1wqfzgL90NMNL0PcKrmQNGfC5/p666
 kbHlRtYPKX3frCsc1+LVbo5bRNq8xGN0jB0DPit39sGm9WR1Prkcb56mS
 7o2O6dV3dQoQs+t5Uu4n/jnvYhURFby77pZJpvz4F35luIhSjGD8m+nYu
 lnDf2R5Jhmv+Ib0VS7wxo/bjmPx5C2gpd5eLZlvU5LmVRGFamf6OdNuSs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314598374"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="314598374"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 10:15:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="842858176"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="842858176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga005.jf.intel.com with SMTP; 13 Feb 2023 10:15:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Feb 2023 20:15:02 +0200
Date: Mon, 13 Feb 2023 20:15:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y+p+Jg32Emx1t8t9@intel.com>
References: <20230213164453.5782-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230213164453.5782-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] Copy highest enabled wm level to disabled
 wm levels for gen >= 9
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

On Mon, Feb 13, 2023 at 06:44:53PM +0200, Stanislav Lisovskiy wrote:
> There was a specific SW workaround requested, which should prevent
> some watermark issues happening, which requires copying highest
> enabled wm level to those disabled wm levels(bit 31 is of course
> still needs to be cleared).
> This is related to different subsystems like PSR and others, which
> may still consult a low power wm values ocassionally, despite those
> are disabled. For that reason we need to keep sane values in
> correspondent registers, even when those are disabled.
> 
> HSDES: 22016115093
> 
> v2: Remove redundant WA for ICL and extend this WA for all platforms
>     starting from SKL, as it seems that we needed this anyway on
>     all of those(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 26 +++++++++++---------
>  1 file changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 962666e74333..227a777e4331 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1407,16 +1407,22 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
>  	}
>  }
>  
> -static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> -			    enum plane_id plane_id)
> +static bool skl_need_wm_copy_wa(struct drm_i915_private *i915, int level,
> +				const struct skl_plane_wm *wm)
>  {
>  	/*
>  	 * Wa_1408961008:icl, ehl
>  	 * Wa_14012656716:tgl, adl
> -	 * Underruns with WM1+ disabled
> +	 * Wa_14017887344:icl
> +	 * Wa_14017868169:adl, tgl

Was there any w/a number for the "copy everything" issue?

> +	 * Due to some power saving optimizations, different subsystems
> +	 * like PSR, might still use even disabled wm level registers,
> +	 * for "reference", so lets keep at least the values sane.
> +	 * Considering amount of WA requiring us to do similar things, was
> +	 * decided to simply do it for all of the platforms, as those wm
> +	 * levels are disabled, this isn't going to do harm anyway.
>  	 */
> -	return DISPLAY_VER(i915) == 11 ||
> -	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
> +	return DISPLAY_VER(i915) >= 9 && level > 0 && !wm->wm[level].enable;

DISPLAY_VER check us now actually pointless since this
code never runs on pre-skl.

>  }
>  
>  struct skl_plane_ddb_iter {
> @@ -1585,12 +1591,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  			else
>  				skl_check_wm_level(&wm->wm[level], ddb);
>  
> -			if (icl_need_wm1_wa(i915, plane_id) &&
> -			    level == 1 && !wm->wm[level].enable &&
> -			    wm->wm[0].enable) {

Hmm. I was wondering about that enable check for the previous level, but
you're right to remove it. We just want to cascade the last valid
value (whether it's disabled or not) upwards to all disabled levels.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -				wm->wm[level].blocks = wm->wm[0].blocks;
> -				wm->wm[level].lines = wm->wm[0].lines;
> -				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
> +			if (skl_need_wm_copy_wa(i915, level, wm)) {
> +				wm->wm[level].blocks = wm->wm[level - 1].blocks;
> +				wm->wm[level].lines = wm->wm[level - 1].lines;
> +				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
>  			}
>  		}
>  	}
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
