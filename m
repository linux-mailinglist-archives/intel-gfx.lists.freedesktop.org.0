Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B70FD43C57E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 10:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD3A6E832;
	Wed, 27 Oct 2021 08:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA056E832
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 08:49:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290949248"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="290949248"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="447126646"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 27 Oct 2021 01:49:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Oct 2021 11:49:08 +0300
Date: Wed, 27 Oct 2021 11:49:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YXkShFxx4NEvUXPn@intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-14-ville.syrjala@linux.intel.com>
 <90e98c64-064d-fa5e-7ba5-a58b412f78b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90e98c64-064d-fa5e-7ba5-a58b412f78b8@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915/dp: Reorder
 intel_dp_compute_config() a bit
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

On Wed, Oct 27, 2021 at 12:36:17PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Consolidate the double pfit call, and reorder things so that
> > intel_dp_output_format() and intel_dp_compute_link_config() are
> > back-to-back. They are intimately related, and will need to be
> > called twice to properly handle the "4:2:0 also" modes.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++-------------
> >   1 file changed, 10 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2440a6a2e4fc..de2b3d33a726 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1764,25 +1764,12 @@ intel_dp_compute_config(struct intel_encoder *encoder,
> >   	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
> >   		pipe_config->has_pch_encoder = true;
> >   
> > -	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
> > -							    adjusted_mode);
> > -
> > -	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> > -		ret = intel_panel_fitting(pipe_config, conn_state);
> > -		if (ret)
> > -			return ret;
> > -	}
> > -
> >   	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
> >   
> >   	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
> >   		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
> >   		if (ret)
> >   			return ret;
> > -
> > -		ret = intel_panel_fitting(pipe_config, conn_state);
> > -		if (ret)
> > -			return ret;
> >   	}
> >   
> >   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > @@ -1798,10 +1785,20 @@ intel_dp_compute_config(struct intel_encoder *encoder,
> >   	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
> >   		return -EINVAL;
> >   
> > +	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
> > +							    adjusted_mode);
> > +
> >   	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
> >   	if (ret < 0)
> >   		return ret;
> >   
> > +	if ((intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) ||
> > +	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> > +		ret = intel_panel_fitting(pipe_config, conn_state);
> 
> Panel fitting code will perhaps need handling for Big joiner.
> 
> In case of bigjoiner, we might need to set the pch_pfit->dest width 
> halved, otherwise we might have scaler width going out of bound.

Yes pfit vs. bigjoiner is known to be 100% broken.

> 
> Now that we already have pipe_config->bigjoiner set, we can use it in 
> pch_panel_fitting( ) to tweak dest width.
> 
> Something like 
> https://github.com/aknautiyal/drm-tip/commit/c15060be2eca81738f8f0d3431e04215777edfc9

Hmm. I gues that would be sufficient for the fullscreen case.
And we should probably just -EINVAL the other cases for now.

Actually doing borders correctly with bigjoiner would involve
doing this after/during the bigjoiner state copy.

-- 
Ville Syrjälä
Intel
