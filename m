Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IVpJ/FK1Wlg4QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:20:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0153B2E19
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 20:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F4110E49D;
	Tue,  7 Apr 2026 18:20:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUdMG4Fl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC310E497;
 Tue,  7 Apr 2026 18:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775586029; x=1807122029;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eSDWqILP0AOI13PDFtMlMg3Qm79Zji3KUnYkwToAuGM=;
 b=gUdMG4FlgG2n4mkkBSqjRDViSrUzwlFeaqFKplCI26b57B/QtAAQGFil
 WOWBU1TexryloAN22bMtD85a7Sy8Sng5A8rrL5eU5XucidcOSTRyiRfG0
 iMGEpf0LkvG4s42yg2NMsBAjxbwPOwL1OqQyZmZ0ziEcN6U8xsapPVhoi
 tEJ/agztByXg6f7hxSW0HDgZ90TWZR8ATaZ/W2WucNGJgCHas5CQOQcEv
 lkzl3IWlqlCH3BGj86AiZ1ORBBOem5aFMbCVPQUhba0cNs6P4XcVZIqF8
 XuJDyEg4xL3S0DTfeYMT0zLMf9/mSM0kLev0RExVOaJvJOTwxg+nZ2R8W g==;
X-CSE-ConnectionGUID: 1L9w9xNORnuByB39ZtI7EA==
X-CSE-MsgGUID: jgrH4n9CSGqtV3LTUm2Llw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76277982"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76277982"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:20:29 -0700
X-CSE-ConnectionGUID: 845t+DJjSGWDEmhNlxiB3Q==
X-CSE-MsgGUID: F5+/4thzTTqHgx2PeerqKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="228152097"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:20:27 -0700
Date: Tue, 7 Apr 2026 21:20:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/dp: Restructure the sink/output format
 selection
Message-ID: <adVK5yWESIP8KiBg@intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-5-ville.syrjala@linux.intel.com>
 <2479715.CQOukoFCf9@workhorse>
 <8c705395-6400-44b6-b4f4-818a9a4056ea@intel.com>
 <adVGPoZ0yAA0fGLx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <adVGPoZ0yAA0fGLx@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0D0153B2E19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 09:00:30PM +0300, Ville Syrjälä wrote:
> On Mon, Apr 06, 2026 at 11:02:03AM +0530, Nautiyal, Ankit K wrote:
> > 
> > On 3/31/2026 7:05 PM, Nicolas Frattaroli wrote:
> > > On Tuesday, 31 March 2026 01:53:34 Central European Summer Time Ville Syrjala wrote:
> > >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >>
> > >> Restructure intel_dp_compute_output_format() to resemble the new
> > >> intel_hdmi_compute_output_formats().
> > >>
> > >> Again, we basically have two main code paths:
> > >> - YCbCr 4:2:0 only modes
> > >> - everything else including YCbCr 4:2:0 also modes
> > >>
> > >> Take the exact same approach with the DP code, making the
> > >> format selection much less convoluted.
> > >>
> > >> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
> > >>   1 file changed, 69 insertions(+), 29 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > >> index 4955bd8b11d7..230b45acde29 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > >> @@ -1371,6 +1371,28 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
> > >>   	return MODE_OK;
> > >>   }
> > >>   
> > >> +static enum drm_mode_status
> > >> +intel_dp_sink_format_valid(struct intel_connector *connector,
> > >> +			   const struct drm_display_mode *mode,
> > >> +			   enum intel_output_format sink_format)
> > >> +{
> > >> +	const struct drm_display_info *info = &connector->base.display_info;
> > >> +
> > >> +	switch (sink_format) {
> > >> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> > >> +		if (!connector->base.ycbcr_420_allowed ||
> > >> +		    !drm_mode_is_420(info, mode))
> > >> +			return MODE_NO_420;
> > >> +
> > >> +		return MODE_OK;
> > >> +	case INTEL_OUTPUT_FORMAT_RGB:
> > >> +		return MODE_OK;
> > >> +	default:
> > >> +		MISSING_CASE(sink_format);
> > >> +		return MODE_BAD;
> > >> +	}
> > >> +}
> > >> +
> > > I think here we'll want another
> > > ---
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index e23162fc3f8b..a1dc089c54f5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1373,6 +1373,11 @@ intel_dp_sink_format_valid(struct intel_connector *connector,
> > >   
> > >                  return MODE_OK;
> > >          case INTEL_OUTPUT_FORMAT_RGB:
> > > +               return MODE_OK;
> > > +       case INTEL_OUTPUT_FORMAT_YCBCR444:
> > > +               if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> > > +                       return MODE_BAD;
> > > +
> > >                  return MODE_OK;
> > >          default:
> > >                  MISSING_CASE(sink_format);
> > > ---
> > >
> > > though this time, no bpc related changes. With that fixed, I get
> > > YCbCr444 at 10bpc as well as 8bpc. Can't test 4:2:0 for what appears
> > > to be unrelated userspace reasons, though the KMS property's enum
> > > value is exposed properly.
> > 
> > 
> > Hmm... this alone should not be sufficient till we actually have code to 
> > try with YCBCR444 in intel_dp_compute_formats().
> > 
> > 
> > >
> > >>   int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
> > >>   {
> > >>   	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> > >> @@ -3330,41 +3352,59 @@ static int
> > >>   intel_dp_compute_output_format(struct intel_encoder *encoder,
> > >>   			       struct intel_crtc_state *crtc_state,
> > >>   			       struct drm_connector_state *conn_state,
> > >> -			       bool respect_downstream_limits)
> > >> +			       bool respect_downstream_limits,
> > >> +			       enum intel_output_format sink_format)
> > >>   {
> > >> -	struct intel_display *display = to_intel_display(encoder);
> > >>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > >>   	struct intel_connector *connector = intel_dp->attached_connector;
> > >> -	const struct drm_display_info *info = &connector->base.display_info;
> > >>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > >> -	bool ycbcr_420_only;
> > >> -	int ret;
> > >>   
> > >> -	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> > >> -
> > >> -	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
> > >> -		drm_dbg_kms(display->drm,
> > >> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> > >> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> > >> -	} else {
> > >> -		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
> > >> -	}
> > >> +	if (intel_dp_sink_format_valid(connector, adjusted_mode,
> > >> +				       sink_format) != MODE_OK)
> > >> +		return -EINVAL;
> > >>   
> > >> +	crtc_state->sink_format = sink_format;
> > >>   	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> > >>   
> > >> -	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> > >> -					   respect_downstream_limits);
> > >> -	if (ret) {
> > >> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> > >> -		    !connector->base.ycbcr_420_allowed ||
> > >> -		    !drm_mode_is_420_also(info, adjusted_mode))
> > >> -			return ret;
> > >> -
> > >> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> > >> -		crtc_state->output_format = intel_dp_output_format(connector,
> > >> -								   crtc_state->sink_format);
> > >> -		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> > >> -						   respect_downstream_limits);
> > >> +	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> > >> +					    respect_downstream_limits);
> > > With the removal of intel_dp_sink_format in this function, I wonder
> > > if we can get rid of it entirely now. It's only called in
> > > intel_dp_mode_min_link_bpp_x16, which seems to be used for bandwidth
> > > limitation calculations (where YCbCr444 vs RGB444 doesn't matter, so
> > > we're fine in that regard).
> > 
> > I agree we can remove intel_dp_sink_format() but IMO it should be after 
> > patch#7 where we are validating sink format for mode valid.
> > 
> > I guess, with that change, intel_dp_mode_min_link_bpp_x16() can be 
> > passed the sink_format directly since we have already validated that.
> 
> Aye. I think that really should have been part of patch 5
> https://lore.kernel.org/intel-gfx/20260330235339.29479-6-ville.syrjala@linux.intel.com/
> where I explicitly pass in the desired sink format.
> 
> I'll fix that up.

The use of intel_dp_mode_min_link_bpp_x16() for the FRL bandwidth seems
completely incorrect. We are trying to check for bandwidth on the HDMI
link after the PCON, not the DP link before the PCON. I'll just send
a separate fix for that...

-- 
Ville Syrjälä
Intel
