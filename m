Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E9E868BE8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 10:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1F810E8CB;
	Tue, 27 Feb 2024 09:14:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bnrl74gB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F5210E8CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 09:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709025278; x=1740561278;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xVgzjRBl69v97wkJd4XCMrYqrhJyc7UKPC8vqfB+rZE=;
 b=Bnrl74gB1+qGaYysHec+hAsWtv3pHCPGXsQNVBloXbQfTw1DNd6+6OXB
 zx+fpIpVbhPX16FN/hCKx6bYWRBusKWCteL0KqHey7zIWB2RPWWH2fJng
 LjikTVqGOMMGcToVsIaA3nTq+P3+25uWsvEcX+atlwtYrGQfBI/blR7j6
 fKBL1k8HP14o+clF7El3i8LvwXP9w3F9tH5yBE1hXmAfrtSyd10evzOXG
 b0Fi2b1FHZwEOkUaMVpjHbnElQU9Jg9HcaaKciAeH7dbyW2rJA1X5HR8P
 utDmQgcfaj/QXpETGbBGoo+138IppWesfztnCMB9sFN5uKdKpauuiBy89 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6305145"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6305145"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 01:14:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="38006780"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 01:14:36 -0800
Date: Tue, 27 Feb 2024 11:14:28 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Message-ID: <Zd2n9Cc9v3YV88xg@intel.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
 <87o7c3knj9.fsf@intel.com> <Zd2lm8uC1WsjEpcO@intel.com>
 <PH7PR11MB8252B76C0200A73FF029C76289592@PH7PR11MB8252.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH7PR11MB8252B76C0200A73FF029C76289592@PH7PR11MB8252.namprd11.prod.outlook.com>
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

On Tue, Feb 27, 2024 at 11:06:16AM +0200, Srinivas, Vidya wrote:
> 
> 
> > -----Original Message-----
> > From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > Sent: Tuesday, February 27, 2024 2:34 PM
> > To: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Saarinen, Jani <jani.saarinen@intel.com>;
> > ville.syrjala@linux.intel.com; Srinivas, Vidya <vidya.srinivas@intel.com>
> > Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
> > 
> > On Mon, Feb 26, 2024 at 09:56:10PM +0200, Jani Nikula wrote:
> > > On Wed, 21 Feb 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > wrote:
> > > > Patch calculates bigjoiner pipes in mst compute.
> > > > Patch also passes bigjoiner bool to validate plane max size.
> > >
> > > Please use the imperative mood in commit messages, e.g. "calculate"
> > > intead of "calculates".
> > >
> > > Please do not refer to "patch". We know it's a patch, until it isn't,
> > > and then it's a commit.
> > >
> > > Please explain *why* the changes are being done, not just *what* is
> > > being done.
> > >
> > > In the subject, what is "bigjoiner case for DP2.0"? DP 2.0 is a spec
> > > version, and as such irrelevant for the changes being done.
> > >
> > > > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > >
> > > ?
> > 
> > Hi Jani, I just added that patch from Vidya to my series, to be honest, didn't
> > have time at all to look much into it.
> > Looks like its me who is going to fix that.
> 
> Hello Stan
> My sincere apologies. I dint want to disturb your series, so I did not fix it.
> Please let me know if I should fix it. Sorry again.
> Thank you Jani for the comments.
> 
> Regards
> Vidya

Hi Vidya,

it is a bit unclear for me as well now, how do we proceed, since your patch is part
of my series, I was explicitly asked to add it, does it mean you are fixing it now or me?
Well if you address Jani's comments, I definitely dont mind :)

> > 
> > >
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19
> > > > ++++++++++++-------
> > > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index 5307ddd4edcf5..fd27d9976c050 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct
> > intel_encoder *encoder,
> > > >  				       struct drm_connector_state *conn_state)
> > {
> > > >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > > > +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> > > >  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
> > > >  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
> > > >  	const struct intel_connector *connector = @@ -540,6 +541,10 @@
> > > > static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> > > >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > >  		return -EINVAL;
> > > >
> > > > +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> > > > +				    adjusted_mode->crtc_clock))
> > > > +		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1,
> > > > +crtc->pipe);
> > > > +
> > > >  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> > > >  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> > > >  	pipe_config->has_pch_encoder = false; @@ -1318,12 +1323,6 @@
> > > > intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > >  	 *   corresponding link capabilities of the sink) in case the
> > > >  	 *   stream is uncompressed for it by the last branch device.
> > > >  	 */
> > > > -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> > >full_pbn) {
> > > > -		*status = MODE_CLOCK_HIGH;
> > > > -		return 0;
> > > > -	}
> > > > -
> > > >  	if (mode->clock < 10000) {
> > > >  		*status = MODE_CLOCK_LOW;
> > > >  		return 0;
> > > > @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct
> > drm_connector *connector,
> > > >  		return 0;
> > > >  	}
> > > >
> > > > +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port-
> > >full_pbn) {
> > > > +		*status = MODE_CLOCK_HIGH;
> > > > +		return 0;
> > > > +	}
> > > > +
> > > >  	if (DISPLAY_VER(dev_priv) >= 10 &&
> > > >  	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
> > > >  		/*
> > > > @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct
> > drm_connector *connector,
> > > >  		return 0;
> > > >  	}
> > > >
> > > > -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > > > +	*status = intel_mode_valid_max_plane_size(dev_priv, mode,
> > > > +bigjoiner);
> > > >  	return 0;
> > > >  }
> > >
> > > --
> > > Jani Nikula, Intel
