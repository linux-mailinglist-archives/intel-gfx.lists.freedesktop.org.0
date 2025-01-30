Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDF9A22E10
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 14:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D7B10E96E;
	Thu, 30 Jan 2025 13:46:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+OdY2l2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D028210E96E;
 Thu, 30 Jan 2025 13:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738244797; x=1769780797;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=d/pwK3J0p1oA/FQ3LAhMRbf99sDWrWUppH4ufKPGnk0=;
 b=V+OdY2l2+2mx+3NSYtzUAe8bRLBYWsqPs97KmGnFkDU7LXSL4WH8ZMxY
 L8GY9x9c3I+0ScPPAmxN4yUp+xgGqKaeIodssHj0ISLBYhAd/BNlB8DiD
 eb8cQjygpUjKhUyzjlWoKSdAH5T8bqcOo0g2Lc0hKMtPv2PJHyO0OJUIl
 q6EOPOizLHhNe9vg4j+Z3ASJ2ricanZcmtRYWlhOa0vNuQUJYsP+YfAlC
 dORnRzAt7nXp3f3YlezpeTcM6hpjTOGbYk9ajLA8s5yKXYqSlnnn5diSI
 ipvQppakL/ZcT1r0qIKMBZvD1xq8q69YItifqusBK7/bdu07gcnsLZcOO g==;
X-CSE-ConnectionGUID: GYKiRbMHRv2SviELOZmGow==
X-CSE-MsgGUID: y3FkLpz/TnqNgZ3FzMyPyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="39053875"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="39053875"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:46:36 -0800
X-CSE-ConnectionGUID: cZGlCHibRDuFZLwKhr5d7Q==
X-CSE-MsgGUID: lW22Nb2rRmW3CQTMtmL8Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109160378"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:46:35 -0800
Date: Thu, 30 Jan 2025 15:47:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/dp: constify struct link_config_limits
 pointers
Message-ID: <Z5uC83oEarvvX7Y3@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <6ab2f68eef7849aca18e82ad788e44e9f82b576e.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ab2f68eef7849aca18e82ad788e44e9f82b576e.1738161945.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2025 at 04:46:33PM +0200, Jani Nikula wrote:
> The limits get passed around, but are only modified in a few
> places. Constify the pointers elsewhere so it's easier to follow where
> they can be modified.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 18 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 +++---
>  3 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a286e5e31c4d..d367f9c2fa23 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1941,7 +1941,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
>  
>  static int dsc_compute_link_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *pipe_config,
> -				   struct link_config_limits *limits,
> +				   const struct link_config_limits *limits,
>  				   u16 compressed_bppx16,
>  				   int timeslots)
>  {
> @@ -2061,7 +2061,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
>  static int
>  icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    struct intel_crtc_state *pipe_config,
> -			    struct link_config_limits *limits,
> +			    const struct link_config_limits *limits,
>  			    int dsc_max_bpp,
>  			    int dsc_min_bpp,
>  			    int pipe_bpp,
> @@ -2104,7 +2104,7 @@ static int
>  xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			      const struct intel_connector *connector,
>  			      struct intel_crtc_state *pipe_config,
> -			      struct link_config_limits *limits,
> +			      const struct link_config_limits *limits,
>  			      int dsc_max_bpp,
>  			      int dsc_min_bpp,
>  			      int pipe_bpp,
> @@ -2153,7 +2153,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  				      const struct intel_connector *connector,
>  				      struct intel_crtc_state *pipe_config,
> -				      struct link_config_limits *limits,
> +				      const struct link_config_limits *limits,
>  				      int pipe_bpp,
>  				      int timeslots)
>  {
> @@ -2185,7 +2185,7 @@ int intel_dp_dsc_min_src_input_bpc(void)
>  }
>  
>  static
> -bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
> +bool is_dsc_pipe_bpp_sufficient(const struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
>  	return pipe_bpp >= limits->pipe.min_bpp &&
> @@ -2194,7 +2194,7 @@ bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
>  
>  static
>  int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
> -				struct link_config_limits *limits)
> +				const struct link_config_limits *limits)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int forced_bpp;
> @@ -2220,7 +2220,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
>  static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					 struct intel_crtc_state *pipe_config,
>  					 struct drm_connector_state *conn_state,
> -					 struct link_config_limits *limits,
> +					 const struct link_config_limits *limits,
>  					 int timeslots)
>  {
>  	const struct intel_connector *connector =
> @@ -2270,7 +2270,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					  struct intel_crtc_state *pipe_config,
>  					  struct drm_connector_state *conn_state,
> -					  struct link_config_limits *limits)
> +					  const struct link_config_limits *limits)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector =
> @@ -2335,7 +2335,7 @@ static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> -				struct link_config_limits *limits,
> +				const struct link_config_limits *limits,
>  				int timeslots,
>  				bool compute_pipe_bpp)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ca49f0a05da5..ffc27f8ad226 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -75,7 +75,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> -				struct link_config_limits *limits,
> +				const struct link_config_limits *limits,
>  				int timeslots,
>  				bool recompute_pipe_bpp);
>  void intel_dp_audio_compute_config(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d58facf78aa9..2acc26aad6a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -363,7 +363,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  					      struct intel_crtc_state *crtc_state,
>  					      int max_bpp, int min_bpp,
> -					      struct link_config_limits *limits,
> +					      const struct link_config_limits *limits,
>  					      struct drm_connector_state *conn_state,
>  					      int step, bool dsc)
>  {
> @@ -388,7 +388,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  					  struct intel_crtc_state *crtc_state,
>  					  struct drm_connector_state *conn_state,
> -					  struct link_config_limits *limits)
> +					  const struct link_config_limits *limits)
>  {
>  	/*
>  	 * FIXME: allocate the BW according to link_bpp, which in the case of
> @@ -404,7 +404,7 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  					      struct intel_crtc_state *crtc_state,
>  					      struct drm_connector_state *conn_state,
> -					      struct link_config_limits *limits)
> +					      const struct link_config_limits *limits)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -- 
> 2.39.5
> 
