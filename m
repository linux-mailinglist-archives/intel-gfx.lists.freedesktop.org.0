Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CB340E0A2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 18:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904F26EE30;
	Thu, 16 Sep 2021 16:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54FD86EE30
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 16:23:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202760475"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="202760475"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:23:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="545772717"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:23:31 -0700
Date: Thu, 16 Sep 2021 19:24:21 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210916162421.GB30274@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915: Fix g4x cxsr enable
 condition
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

On Fri, May 14, 2021 at 03:57:39PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The intention was to check whether the primary plane is enabled
> without any sprites planes being enabled. Instead we ended up checking
> whether just any one of the planes is enabled. g4x isn't vlv/chv and
> cxsr only works with the primary plane. Fix the check to examine the
> bitmask of active planes rather than the number of bits set in said
> bitmask.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 00a5fe424c5a..2fb496fbed43 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1376,8 +1376,7 @@ static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  	struct intel_atomic_state *state =
>  		to_intel_atomic_state(crtc_state->uapi.state);
>  	struct g4x_wm_state *wm_state = &crtc_state->wm.g4x.optimal;
> -	int num_active_planes = hweight8(crtc_state->active_planes &
> -					 ~BIT(PLANE_CURSOR));
> +	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  	const struct g4x_pipe_wm *raw;
>  	const struct intel_plane_state *old_plane_state;
>  	const struct intel_plane_state *new_plane_state;
> @@ -1417,7 +1416,7 @@ static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  	wm_state->sr.cursor = raw->plane[PLANE_CURSOR];
>  	wm_state->sr.fbc = raw->fbc;
>  
> -	wm_state->cxsr = num_active_planes == BIT(PLANE_PRIMARY);
> +	wm_state->cxsr = active_planes == BIT(PLANE_PRIMARY);

Shouldn't this be "active_planes & BIT(PLANE_PRIMARY)" as we might
have other non-cursor planes enabled, which will then fail or am I missing something?

Stan

>  
>  	level = G4X_WM_LEVEL_HPLL;
>  	if (!g4x_raw_crtc_wm_is_valid(crtc_state, level))
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
