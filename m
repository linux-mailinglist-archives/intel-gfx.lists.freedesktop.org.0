Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 424617D5466
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 16:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89B610E3D1;
	Tue, 24 Oct 2023 14:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BB610E3D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 14:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698159128; x=1729695128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gTj6coe8TS8mbimxD/pmpVZsCJLKgQaXkKMry+R+9FU=;
 b=kwCS3iYsiC8AvZfivz/A11iF6s1gP3zDbkPnAFuKWBJVf9o0FKI678yn
 WL7RgEkKiM9WkRKcaI8Rlv3U34JsGKEdpzak8WAULEc9+/6AKBjXyn1Oh
 tVoLaRJEhAS1xULAMasZsW87CBiW6NlGqwqc007Bdl1Krxd31KP66BUIT
 vHTmvig0GsirOy5usyzU33PUfEmhq43Xyfcn4Rljj9DxyIMWYZDRd2wWk
 P06S3BtUHLcmkBdMErUe5Aer/1u8VtoN5LrRz7b5nSPK+c7+AbbfRTIV4
 G67ganRJE3aUwPXzjVuKcK3mlNPA5PSqAVtb88SsPNguL+rJlkHcXtoWu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="8626465"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="8626465"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 07:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="752017590"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="752017590"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 07:50:44 -0700
Date: Tue, 24 Oct 2023 17:50:35 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZTfZu0CQYA3FJ/Ok@intel.com>
References: <20231024125256.11954-1-stanislav.lisovskiy@intel.com>
 <ZTfOMuZjkit4uJHx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTfOMuZjkit4uJHx@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl: Initialize all GV points as
 restricted in bw_state
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

On Tue, Oct 24, 2023 at 05:01:22PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 24, 2023 at 03:52:56PM +0300, Stanislav Lisovskiy wrote:
> > In some customer cases, machine can start up with all
> > GV points restricted. However we don't ever read those
> > from hw and initial driver qgv_points_mask is initialized
> > as 0, which would make driver think that all points are unrestricted,
> > so we never update them with proper value, unless
> > some demanding scenario is requested or we have to toggle SAGV
> > and we have to restrict some of those.
> > Lets fix that by initializing all points as restricted,
> > then on first modeset, that will make sure driver will naturally
> > calculate, which of those need to be relaxed and do correspondent update.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c            |  7 ++++---
> >  drivers/gpu/drm/i915/display/intel_bw.h            |  1 +
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++++++++
> >  3 files changed, 18 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index bef96db62c80..fbfa01f38db8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -119,7 +119,7 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
> >  	return 0;
> >  }
> >  
> > -static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> > +u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> >  {
> >  	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> >  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> > @@ -1277,9 +1277,10 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
> >  
> >  	/*
> >  	 * If none of our inputs (data rates, number of active
> > -	 * planes, SAGV yes/no) changed then nothing to do here.
> > +	 * planes, SAGV yes/no) changed then nothing to do here,
> > +	 * except if mask turns out to be in wrong state initially.
> >  	 */
> > -	if (!changed)
> > +	if (!changed && (new_bw_state->qgv_points_mask != icl_qgv_points_mask(i915)))
> 
> There doesn't seem to be any guarantee that the bw state is
> actually present here. So this could oops.
> 
> But I'm thinking a better fix might be to do what we on
> older platforms and just force SAGV off at the start. That
> way we actually know what state the hardware will be in.

If you mean that by forcing SAGV off, we will also update
QGV point mask, leaving only the highest enabled, then yeah
that could be better solution.
Thing is that, as we can't read QGV point mask directly from
HW, it is better to always update it initially, to avoid
that kind of issues.

Stan

> 
> >  		return 0;
> >  
> >  	ret = intel_bw_check_qgv_points(i915, old_bw_state, new_bw_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> > index 59cb4fc5db76..0a706ec79ce3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -70,6 +70,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
> >  			  const struct intel_crtc_state *crtc_state);
> >  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> >  				  u32 points_mask);
> > +u16 icl_qgv_points_mask(struct drm_i915_private *i915);
> >  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> >  			    bool *need_cdclk_calc);
> >  int intel_bw_min_cdclk(struct drm_i915_private *i915,
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index b8f43efb0ab5..230090c6e994 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -871,6 +871,19 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
> >  		intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe,
> >  						 crtc_state->port_clock);
> >  
> > +		/*
> > +		 * In some customer cases, machine can start up with all
> > +		 * GV points restricted. However we don't ever read those
> > +		 * from hw and qgv_points_mask initialized as 0, would
> > +		 * make driver think that all points are unrestricted,
> > +		 * so we never update them with proper value, unless
> > +		 * some demanding scenario is requested and we have to
> > +		 * restrict some of those. Lets fix that by initializing
> > +		 * all points as restricted, then on first modeset, driver
> > +		 * will naturally calculate, which of those need to be
> > +		 * relaxed and do correspondent update.
> > +		 */
> > +		bw_state->qgv_points_mask = icl_qgv_points_mask(i915);
> >  		intel_bw_crtc_update(bw_state, crtc_state);
> >  	}
> >  
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
