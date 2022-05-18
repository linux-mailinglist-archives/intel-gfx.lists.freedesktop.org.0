Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB9652B8EB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 13:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7F310E298;
	Wed, 18 May 2022 11:44:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1A710E0A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 11:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652874275; x=1684410275;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/9HV8Zkg80/eTvXmw5BgxMAinI8wCgKZSbP7dKccZZc=;
 b=QOLApWMPIpREUQCdY/vomukWwms3dlDyTcCNTRABI9bmqXZKOmYAND9o
 LTXv3fvp02fDsRYWlS0BMRArTuI2/u7ivjQd4RO55Z/EAlkKs0R8MlmRQ
 50//M7G7bcBMsQ5Zdgp8/dhKx0QA7mQFj1OrLzDQwha6HAOOjgn/FB+Xm
 fP15w9hbB+k77N6eD61D9ZPKkTDAi6TOtWAa16pKSewnV7nLkO6k5OGxW
 UcCElvexcuiU/CroLkl4zSj1s2+m3cfbfNPWJoRfkzWCqlF3kykJqQZbN
 AzcJ9qq5+AQ7u0X/fLmFmYpx4YB3yei7wfgwXTJtcxRgCM5fvZR/qf5wf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="252147729"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="252147729"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:44:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="700567796"
Received: from jwasiuki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.47])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:44:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
Date: Wed, 18 May 2022 14:44:30 +0300
Message-ID: <87ee0rdq01.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Write zero wms if we disable
 planes for icl+
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

On Wed, 18 May 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Otherwise we seem to get FIFO underruns. It is being disabled
> anyway, so kind of logical to write those as zeroes, even if
> disabling is temporary.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 46 +++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h               |  2 +
>  3 files changed, 49 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index caa03324a733..c0251189c042 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -633,7 +633,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
>  
> -	skl_write_plane_wm(plane, crtc_state);
> +	skl_write_zero_plane_wm(plane, crtc_state);
>  
>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ee0047fdc95d..2470c037bfae 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5885,6 +5885,52 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
>  }
>  
> +void skl_write_zero_plane_wm(struct intel_plane *plane,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	int level, max_level = ilk_wm_max_level(dev_priv);
> +	enum plane_id plane_id = plane->id;
> +	enum pipe pipe = plane->pipe;
> +	struct skl_pipe_wm pipe_wm;
> +	const struct skl_ddb_entry *ddb =
> +		&crtc_state->wm.skl.plane_ddb[plane_id];
> +	const struct skl_ddb_entry *ddb_y =
> +		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +
> +	for (level = 0; level <= max_level; level++) {

Not your doing here, but why have we adopted this error prone inclusive
max that always makes you take a double look in the for loops?!

BR,
Jani.

> +		pipe_wm.planes[plane_id].wm[level].blocks = 0;
> +		pipe_wm.planes[plane_id].wm[level].lines = 0;
> +	}
> +
> +	pipe_wm.planes[plane_id].trans_wm.blocks = 0;
> +	pipe_wm.planes[plane_id].trans_wm.lines = 0;
> +
> +	for (level = 0; level <= max_level; level++)
> +		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> +				   skl_plane_wm_level(&pipe_wm, plane_id, level));
> +
> +	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
> +			   skl_plane_trans_wm(&pipe_wm, plane_id));
> +
> +	if (HAS_HW_SAGV_WM(dev_priv)) {
> +		const struct skl_plane_wm *wm = &pipe_wm.planes[plane_id];
> +
> +		skl_write_wm_level(dev_priv, PLANE_WM_SAGV(pipe, plane_id),
> +				   &wm->sagv.wm0);
> +		skl_write_wm_level(dev_priv, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> +				   &wm->sagv.trans_wm);
> +	}
> +
> +	skl_ddb_entry_write(dev_priv,
> +			    PLANE_BUF_CFG(pipe, plane_id), ddb);
> +
> +	if (DISPLAY_VER(dev_priv) < 11)
> +		skl_ddb_entry_write(dev_priv,
> +				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> +}
> +
> +
>  void skl_write_cursor_wm(struct intel_plane *plane,
>  			 const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 50604cf7398c..fb0ac4f143ab 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -61,6 +61,8 @@ bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
>  				 const struct skl_ddb_entry *entries,
>  				 int num_entries, int ignore_idx);
> +void skl_write_zero_plane_wm(struct intel_plane *plane,
> +			     const struct intel_crtc_state *crtc_state);
>  void skl_write_plane_wm(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state);
>  void skl_write_cursor_wm(struct intel_plane *plane,

-- 
Jani Nikula, Intel Open Source Graphics Center
