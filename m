Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNs5HUdG1Wk44AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:00:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BBB3B2A9D
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D92610E153;
	Tue,  7 Apr 2026 18:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+mgMCA6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD3D10E153;
 Tue,  7 Apr 2026 18:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775584835; x=1807120835;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=p3ZRePxEYtNXly9yzT+GpmVUOehkBwAhfWjj+TvjLg0=;
 b=U+mgMCA6T/YeKND3m14gQSjOkQL5k1Pk3JIcbIFw0HPV6erUusbSAcRi
 vAQaZdD3HLqbb9PhzFtISXv3SDxShnjG1V+0D6EBs4aNDm1CftWb/zupN
 kyp45CPEe0wy7aZu68hDk4xzHbPaAPRgNFmIWphY53tf4Ej5qtUgo/c6V
 bB6erzjA2R16J8FxOwrDaMRUl7Ql8gAhiUQWXKCe73WaVGRKMvOmWIxsd
 PZtaqArK8ropH4eOHgTDMIQBuCwqLmcOcLA7O441FB3cFP/H4WhthdPqE
 kRFY6YGhw1bxwzyATuo6qES/FJJtr15UFNT5pM8wsLh1IDVq285cf9m1a g==;
X-CSE-ConnectionGUID: iOZNYDNDSmOaffeQYXjTTQ==
X-CSE-MsgGUID: 7+Pd5qGTSX2mOkf504fMNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80415374"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="80415374"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:00:35 -0700
X-CSE-ConnectionGUID: G0QfyugHTtq5J6tRo4H1Xw==
X-CSE-MsgGUID: iOO1EIZZT+CAdndBT0XRSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="225482451"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:00:32 -0700
Date: Tue, 7 Apr 2026 21:00:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/dp: Restructure the sink/output format
 selection
Message-ID: <adVGPoZ0yAA0fGLx@intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-5-ville.syrjala@linux.intel.com>
 <2479715.CQOukoFCf9@workhorse>
 <8c705395-6400-44b6-b4f4-818a9a4056ea@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c705395-6400-44b6-b4f4-818a9a4056ea@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 43BBB3B2A9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 06, 2026 at 11:02:03AM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/31/2026 7:05 PM, Nicolas Frattaroli wrote:
> > On Tuesday, 31 March 2026 01:53:34 Central European Summer Time Ville Syrjala wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>
> >> Restructure intel_dp_compute_output_format() to resemble the new
> >> intel_hdmi_compute_output_formats().
> >>
> >> Again, we basically have two main code paths:
> >> - YCbCr 4:2:0 only modes
> >> - everything else including YCbCr 4:2:0 also modes
> >>
> >> Take the exact same approach with the DP code, making the
> >> format selection much less convoluted.
> >>
> >> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
> >>   1 file changed, 69 insertions(+), 29 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 4955bd8b11d7..230b45acde29 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1371,6 +1371,28 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
> >>   	return MODE_OK;
> >>   }
> >>   
> >> +static enum drm_mode_status
> >> +intel_dp_sink_format_valid(struct intel_connector *connector,
> >> +			   const struct drm_display_mode *mode,
> >> +			   enum intel_output_format sink_format)
> >> +{
> >> +	const struct drm_display_info *info = &connector->base.display_info;
> >> +
> >> +	switch (sink_format) {
> >> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> >> +		if (!connector->base.ycbcr_420_allowed ||
> >> +		    !drm_mode_is_420(info, mode))
> >> +			return MODE_NO_420;
> >> +
> >> +		return MODE_OK;
> >> +	case INTEL_OUTPUT_FORMAT_RGB:
> >> +		return MODE_OK;
> >> +	default:
> >> +		MISSING_CASE(sink_format);
> >> +		return MODE_BAD;
> >> +	}
> >> +}
> >> +
> > I think here we'll want another
> > ---
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index e23162fc3f8b..a1dc089c54f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1373,6 +1373,11 @@ intel_dp_sink_format_valid(struct intel_connector *connector,
> >   
> >                  return MODE_OK;
> >          case INTEL_OUTPUT_FORMAT_RGB:
> > +               return MODE_OK;
> > +       case INTEL_OUTPUT_FORMAT_YCBCR444:
> > +               if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> > +                       return MODE_BAD;
> > +
> >                  return MODE_OK;
> >          default:
> >                  MISSING_CASE(sink_format);
> > ---
> >
> > though this time, no bpc related changes. With that fixed, I get
> > YCbCr444 at 10bpc as well as 8bpc. Can't test 4:2:0 for what appears
> > to be unrelated userspace reasons, though the KMS property's enum
> > value is exposed properly.
> 
> 
> Hmm... this alone should not be sufficient till we actually have code to 
> try with YCBCR444 in intel_dp_compute_formats().
> 
> 
> >
> >>   int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
> >>   {
> >>   	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> >> @@ -3330,41 +3352,59 @@ static int
> >>   intel_dp_compute_output_format(struct intel_encoder *encoder,
> >>   			       struct intel_crtc_state *crtc_state,
> >>   			       struct drm_connector_state *conn_state,
> >> -			       bool respect_downstream_limits)
> >> +			       bool respect_downstream_limits,
> >> +			       enum intel_output_format sink_format)
> >>   {
> >> -	struct intel_display *display = to_intel_display(encoder);
> >>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >>   	struct intel_connector *connector = intel_dp->attached_connector;
> >> -	const struct drm_display_info *info = &connector->base.display_info;
> >>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >> -	bool ycbcr_420_only;
> >> -	int ret;
> >>   
> >> -	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> >> -
> >> -	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
> >> -		drm_dbg_kms(display->drm,
> >> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> >> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> >> -	} else {
> >> -		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
> >> -	}
> >> +	if (intel_dp_sink_format_valid(connector, adjusted_mode,
> >> +				       sink_format) != MODE_OK)
> >> +		return -EINVAL;
> >>   
> >> +	crtc_state->sink_format = sink_format;
> >>   	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> >>   
> >> -	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> >> -					   respect_downstream_limits);
> >> -	if (ret) {
> >> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> >> -		    !connector->base.ycbcr_420_allowed ||
> >> -		    !drm_mode_is_420_also(info, adjusted_mode))
> >> -			return ret;
> >> -
> >> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> >> -		crtc_state->output_format = intel_dp_output_format(connector,
> >> -								   crtc_state->sink_format);
> >> -		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> >> -						   respect_downstream_limits);
> >> +	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> >> +					    respect_downstream_limits);
> > With the removal of intel_dp_sink_format in this function, I wonder
> > if we can get rid of it entirely now. It's only called in
> > intel_dp_mode_min_link_bpp_x16, which seems to be used for bandwidth
> > limitation calculations (where YCbCr444 vs RGB444 doesn't matter, so
> > we're fine in that regard).
> 
> I agree we can remove intel_dp_sink_format() but IMO it should be after 
> patch#7 where we are validating sink format for mode valid.
> 
> I guess, with that change, intel_dp_mode_min_link_bpp_x16() can be 
> passed the sink_format directly since we have already validated that.

Aye. I think that really should have been part of patch 5
https://lore.kernel.org/intel-gfx/20260330235339.29479-6-ville.syrjala@linux.intel.com/
where I explicitly pass in the desired sink format.

I'll fix that up.


-- 
Ville Syrjälä
Intel
