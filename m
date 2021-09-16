Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C39740E1A9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 18:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D45D6EB9B;
	Thu, 16 Sep 2021 16:42:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1136EB9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 16:42:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="209699118"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="209699118"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:42:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="554158889"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:42:21 -0700
Date: Thu, 16 Sep 2021 19:43:05 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210916164305.GA30357@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: Use u8 consistently for
 active_planes bitmask
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

On Fri, May 14, 2021 at 03:57:40PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Be consistent in that active_planes bitmask fits in a u8.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2fb496fbed43..8a08a7c0e71f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1706,7 +1706,7 @@ static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
>  	const struct g4x_pipe_wm *raw =
>  		&crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM2];
>  	struct vlv_fifo_state *fifo_state = &crtc_state->wm.vlv.fifo_state;
> -	unsigned int active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
> +	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  	int num_active_planes = hweight8(active_planes);
>  	const int fifo_size = 511;
>  	int fifo_extra, fifo_left = fifo_size;
> @@ -1898,8 +1898,8 @@ static int vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  	struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
>  	const struct vlv_fifo_state *fifo_state =
>  		&crtc_state->wm.vlv.fifo_state;
> -	int num_active_planes = hweight8(crtc_state->active_planes &
> -					 ~BIT(PLANE_CURSOR));
> +	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
> +	int num_active_planes = hweight8(active_planes);
>  	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
>  	const struct intel_plane_state *old_plane_state;
>  	const struct intel_plane_state *new_plane_state;
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
