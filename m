Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJEvDHFuoGk3jgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:01:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66501A96CC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 17:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EC310E99E;
	Thu, 26 Feb 2026 16:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+UkJd+S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD89010E96B;
 Thu, 26 Feb 2026 16:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772121704; x=1803657704;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OXZTjtKi5Ik0F9eC4rQ7zdeMg+KRBCgLFvprHIU5r2s=;
 b=C+UkJd+Sh++BFthgXtwN1Gop5Kno4/LLi34EhxGkq4+lb0+YaWnFDKS3
 srIuwry0II45VPsNerk5yVXI6ZEarmDErw4sIQszNPeygTodR07UfZlY4
 lLgbhB62KDyFeRQ3YvVPDMNLMMRD7Nn7cCA0kT+kSlKjGmrkPQLyEX2GQ
 XHslRR2F6zkWwAVeB/uujsgaixxVmtD/jmJdrf77tXPMkR2QfyGC9uUkx
 GxFzNq0mtG0Gh7gIFvp9H6kKs4Hz8JM5K9qkA2yRAnZ2GNKSbG82eKywi
 RWJNXHLSYskNrVpSUUPJK570/YC9Tmv77lFJjJxTIXwTIQwxpxzs54zLE w==;
X-CSE-ConnectionGUID: keZnR66rRvOufYQI4/L+qg==
X-CSE-MsgGUID: Xl7x6MSkT7ShZZ29/zt7Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="84281065"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="84281065"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:01:44 -0800
X-CSE-ConnectionGUID: 7egNvZwoTKuIhi4PweLE/Q==
X-CSE-MsgGUID: rT5S4tFhTOGB3wvMTctfXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="254376493"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 08:01:41 -0800
Date: Thu, 26 Feb 2026 18:01:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 03/14] drm/i915/dp: Add a helper to decide if AS SDP is
 needed
Message-ID: <aaBuYixoTXRA64ga@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-4-ankit.k.nautiyal@intel.com>
 <aaBm7JNiW1T7Mmfc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaBm7JNiW1T7Mmfc@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B66501A96CC
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 05:29:48PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 23, 2026 at 07:14:20PM +0530, Ankit Nautiyal wrote:
> > Add a helper to check if AS SDP is needed. Currently AS SDP is only
> > required when VRR is enabled. However, there are other use cases, along
> > with the missing case of CMRR, dealt in subsequent changes.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index b999d8c085c7..65764ab0bb9b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3111,6 +3111,12 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
> >  	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
> >  }
> >  
> > +static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
> > +				  struct intel_crtc_state *crtc_state)
> > +{
> > +	return crtc_state->vrr.enable;
> 
> Since we don't support VRR+PCON I don't think we actually
> need the AS SDP for VRR.

Hmm. DP 2.1a does say
"When the plugged DP device has DPCD 02214h[0] = 1, a DP Source
 device shall transmit an Adaptive-Sync SDP before enabling an
 Adaptive-Sync video transmission."

So maybe we do need to transmit it whenever the DP device
supports it. In that case someone will probably need to figure
out the fastset stuff.

> 
> And I don't think we even have a fastset path for this stuff
> (or where is it?) so isn't this already causing fastset
> failures for VRR enable/disable? Or maybe we don't have
> displays with both VRR and AS SDP support anywhere?
> 
> > +}
> > +
> >  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> >  				    struct intel_crtc_state *crtc_state)
> >  {
> > @@ -3118,7 +3124,10 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> >  	const struct drm_display_mode *adjusted_mode =
> >  		&crtc_state->hw.adjusted_mode;
> >  
> > -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> > +	if (!intel_dp->as_sdp_supported)
> > +		return;
> > +
> > +	if (!intel_dp_needs_as_sdp(intel_dp, crtc_state))
> >  		return;
> >  
> >  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
