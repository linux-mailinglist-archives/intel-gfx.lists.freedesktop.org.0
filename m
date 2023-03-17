Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7516BEBB5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 15:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A8110E3B7;
	Fri, 17 Mar 2023 14:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D7910E3B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 14:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679064532; x=1710600532;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MQM9zquc+6dKNgUYd0m4QHMLLCGJS5wZ08FUDcJyb10=;
 b=cNSPi//yVbAW+CglgrQB+/ljzcQCQodObc9TC4gNx8t/2j+iiBlDSuR8
 6uGTw+uEsA+hmE5OZ+LNHs29BNS5PL3hxEXBSXJBj0cbr8XVLJlqo0c7W
 NWm7Zv/e5XEKSmE8wzJUIsieOcqg0iFmyp11sLDP/LeOdwLzILeXEXnt3
 i74eFFmAeo2uNMUgnnqHkGNHibT6Zwwsrfnq36ysonLdnYHaLry7VpHMW
 9Y97o1yeiXH/Y8T3wn39jXEmqS/NHUa1o9aXgwHI9yRB0ER+BynfOBuHf
 bhEpgWH73+Dl3yIOBVi4FAqjUb0udgC2cQYuXNuCeNP962mi7Ef57VPd5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="365974576"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="365974576"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 07:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680303279"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="680303279"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 17 Mar 2023 07:48:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 16:48:48 +0200
Date: Fri, 17 Mar 2023 16:48:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZBR90DlmiOvTuKUP@intel.com>
References: <20230317110437.2780483-1-jouni.hogander@intel.com>
 <20230317110437.2780483-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230317110437.2780483-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/psr: Implement Wa_1136
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

On Fri, Mar 17, 2023 at 01:04:37PM +0200, Jouni Högander wrote:
> Implement Wa_1136 for SKL/BXT/ICL.
> 
> Bspec: 21664
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c     | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
>  2 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a385cb8dbf13..e6bd46441392 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1049,6 +1049,13 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  		return;
>  	}
>  
> +	/* Wa_1136 */

The syntax we've used for the old w/as is different.

> +	if (DISPLAY_VER(dev_priv) < 12 && crtc_state->wm_level_disabled) {

This won't have been calculated yet.

As for the platform check. I think the one hsd we still have left
indicates that icl already got some kind of full fix. So probably
that should at least be safe. And I do think the KBL+ should also
work fine.

But we could do that as followups:
1. do this
2. switch to the chicken bit approach for icl
3. switch to the chicken bit approach for kbl+

Then of any issue later come up that point to a problem
with the chicken bits we could more easily revert to full
psr disable.

> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR condition failed: WM level disabled and no HW WA available\n");
> +		return;
> +	}
> +
>  	crtc_state->has_psr = true;
>  	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
>  
> @@ -1260,6 +1267,10 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  
>  	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
>  
> +	/* Wa_1136 */
> +	if (DISPLAY_VER(dev_priv) < 12 && crtc_state->wm_level_disabled)

It's a bit weird to handle this differently than the active_planes case.
Though the fact that the pre and post updatre hooks also do things
in different ways is also confusing. Seems to me some general cleanup
in this area could be worthwile.

> +		return;
> +
>  	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
>  	intel_dp->psr.busy_frontbuffer_bits = 0;
>  	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> @@ -1940,6 +1951,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  		needs_to_disable |= !new_crtc_state->active_planes;
>  		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
>  
> +		/* Wa_1136 */
> +		needs_to_disable |= DISPLAY_VER(i915) < 12 &&
> +			new_crtc_state->wm_level_disabled;
> +
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index afb751c024ba..ced61da8b496 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2278,11 +2278,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
>  	 */
>  	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
>  
> -	/*
> -	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
> -	 * now) perhaps?
> -	 */
> -
>  	for (level++; level < i915->display.wm.num_levels; level++) {
>  		enum plane_id plane_id;
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
