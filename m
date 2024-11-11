Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADA29C4407
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51B010E4F0;
	Mon, 11 Nov 2024 17:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLoYBO2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE69910E2FA;
 Mon, 11 Nov 2024 17:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347221; x=1762883221;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+EmNYfej3Ak73eyym3ARLmFXG9n9LnVhckYOY92t4Rc=;
 b=dLoYBO2oZ8CHWQl21vjsfEOn9R2+jrYMMAkQueudtP30+dMvUHXtskaj
 oHDC3g0Q3ekUU52bGhJjNtUAhYDiP/eB58RzGcmX0D/yZdGxnRUrg835C
 sMfAt+q0egJyzuEJQnj6rFjQeteB4J5DYCYTloyuASgb0O1hfKf1/W6DJ
 7WBsr/EZb9zmvqU/KMDOf0XfH2AMLF8D/9woapqRA2XJi4joqoT9bGqdE
 kY4pazxy2e9GYL+8tMLIaRBDSW/79POzWNA2zlGcuTVI8OpkOeOQnKVpM
 Z+lmN3mLiZuyCu14ZEi7tp23fLfY0QeJPLjGJtDacuCINmu26wQ0INnf2 g==;
X-CSE-ConnectionGUID: cZdGCk98QhuXFXPvecHzKg==
X-CSE-MsgGUID: 6G0GjTW7QEOxP8/8MBi7Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48613956"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48613956"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:42:15 -0800
X-CSE-ConnectionGUID: 0cq+zCpCQhWo7tXBCWEmGg==
X-CSE-MsgGUID: gBxz86G/S6WqGAT3QAKe7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="117933496"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:42:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 7/8] drm/i915/mst: change naming from fake encoders to
 MST stream encoders
In-Reply-To: <ZzI8EItLYhfFjgzf@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731011435.git.jani.nikula@intel.com>
 <dcf0df2dc04b16d9093ac9f9b10d5bbc2fc802f3.1731011435.git.jani.nikula@intel.com>
 <ZzI3uDJM39B_ow4-@ideak-desk.fi.intel.com>
 <ZzI8EItLYhfFjgzf@ideak-desk.fi.intel.com>
Date: Mon, 11 Nov 2024 19:42:10 +0200
Message-ID: <87ikstd5vx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 11 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 11, 2024 at 06:58:32PM +0200, Imre Deak wrote:
>> On Thu, Nov 07, 2024 at 10:32:20PM +0200, Jani Nikula wrote:
>> > The fake encoders pretty much match individual MST streams. The encoders
>> > remain as fake as ever, but change the naming to MST stream
>> > encoders. Rename all the encoder hooks and related functions called from
>> > them to mst_stream_* to clarify what type of encoders the hooks are
>> > called on.
>> > 
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> 
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 204 ++++++++++----------
>> >  1 file changed, 100 insertions(+), 104 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index 481510819cc6..0c08212e70ac 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -53,7 +53,7 @@
>> >  #include "intel_vdsc.h"
>> >  #include "skl_scaler.h"
>> >  
>> > -/* From fake MST encoder to primary encoder */
>> > +/* From fake MST stream encoder to primary encoder */
>> >  static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>> >  {
>> >  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>> > @@ -62,7 +62,7 @@ static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
>> >  	return &dig_port->base;
>> >  }
>> >  
>> > -/* From fake MST encoder to primary DP */
>> > +/* From fake MST stream encoder to primary DP */
>> >  static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
>> >  {
>> >  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>> > @@ -179,14 +179,12 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>> >  					    num_joined_pipes);
>> >  }
>> >  
>> > -static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>> > -						struct intel_crtc_state *crtc_state,
>> > -						int max_bpp,
>> > -						int min_bpp,
>> > -						struct link_config_limits *limits,
>> > -						struct drm_connector_state *conn_state,
>> > -						int step,
>> > -						bool dsc)
>> > +static int mst_stream_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>> > +					      struct intel_crtc_state *crtc_state,
>> > +					      int max_bpp, int min_bpp,
>> > +					      struct link_config_limits *limits,
>> > +					      struct drm_connector_state *conn_state,
>> > +					      int step, bool dsc)
>> >  {
>> >  	struct intel_display *display = to_intel_display(encoder);
>> >  	struct drm_atomic_state *state = crtc_state->uapi.state;
>> > @@ -333,10 +331,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>> >  	return slots;
>> >  }
>> >  
>> > -static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>> > -					    struct intel_crtc_state *crtc_state,
>> > -					    struct drm_connector_state *conn_state,
>> > -					    struct link_config_limits *limits)
>> > +static int mst_stream_compute_link_config(struct intel_encoder *encoder,
>> > +					  struct intel_crtc_state *crtc_state,
>> > +					  struct drm_connector_state *conn_state,
>> > +					  struct link_config_limits *limits)
>> >  {
>> >  	int slots = -EINVAL;
>> >  
>> > @@ -344,11 +342,11 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>> >  	 * FIXME: allocate the BW according to link_bpp, which in the case of
>> >  	 * YUV420 is only half of the pipe bpp value.
>> >  	 */
>> > -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
>> > -						     fxp_q4_to_int(limits->link.max_bpp_x16),
>> > -						     fxp_q4_to_int(limits->link.min_bpp_x16),
>> > -						     limits,
>> > -						     conn_state, 2 * 3, false);
>> > +	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state,
>> > +						   fxp_q4_to_int(limits->link.max_bpp_x16),
>> > +						   fxp_q4_to_int(limits->link.min_bpp_x16),
>> > +						   limits,
>> > +						   conn_state, 2 * 3, false);
>> >  
>> >  	if (slots < 0)
>> >  		return slots;
>> > @@ -356,10 +354,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>> >  	return 0;
>> >  }
>> >  
>> > -static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>> > -						struct intel_crtc_state *crtc_state,
>> > -						struct drm_connector_state *conn_state,
>> > -						struct link_config_limits *limits)
>> > +static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
>> > +					      struct intel_crtc_state *crtc_state,
>> > +					      struct drm_connector_state *conn_state,
>> > +					      struct link_config_limits *limits)
>> >  {
>> >  	struct intel_display *display = to_intel_display(encoder);
>> >  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>> > @@ -426,18 +424,19 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>> >  	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
>> >  							    crtc_state->pipe_bpp);
>> >  
>> > -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
>> > -						     min_compressed_bpp, limits,
>> > -						     conn_state, 1, true);
>> > +	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
>> > +						   min_compressed_bpp, limits,
>> > +						   conn_state, 1, true);
>> >  
>> >  	if (slots < 0)
>> >  		return slots;
>> >  
>> >  	return 0;
>> >  }
>> > -static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>> > -				     struct intel_crtc_state *crtc_state,
>> > -				     struct drm_connector_state *conn_state)
>> > +
>> > +static int mst_stream_update_slots(struct intel_encoder *encoder,
>> > +				   struct intel_crtc_state *crtc_state,
>> > +				   struct drm_connector_state *conn_state)
>
> Side note: an additional thing that could be done is to pass intel_dp
> instead of intel_encoder to all the above functions, since it's clear
> what the former is (no separate stream vs. primary instances) and
> intel_encoder is used anyway only to get to intel_dp.

Right. Maybe I'll send a follow-up once these have been merged.

BR,
Jani.


-- 
Jani Nikula, Intel
