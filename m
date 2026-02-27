Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFklHYYwoWkLrAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 06:49:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B441B2F95
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 06:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FA810EA43;
	Fri, 27 Feb 2026 05:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A1a7q8rh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB77E10EA42;
 Fri, 27 Feb 2026 05:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772171395; x=1803707395;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VeSi5q1Mjdq3MHr+JwXrYsoq3+yKbrkatFPTdDpknQg=;
 b=A1a7q8rhJvUTzT2v8iaTGhX427ql2zjVyixaKpHa0O1sY5WmIivH+Hyk
 Vx+PLmIodYJqopcugOlC/JPu/Akxz/PI5Pi1fV4VQEBa+65hRNorqqozc
 TnXqfU1UfiFzZPHTH5b8UWjR0p7wnuXVaOWAxjtHyZpXLJCqvvKTbFUJP
 cg/oUL5wGTsHyzyExAsSKNCM9L2ccD2cwV1qAHRhplwMOFe54Eu+uqh/V
 yAGL3iG5udPW5Ldh6MYropoeR5WvldfhWvQ21ASqCimWiUUttHZHcPkMb
 FThmesqZ53p1CT72Q2vVT2rqQUCFZgQsEUKtLrorxgUNjvbLeZgUGGTKk A==;
X-CSE-ConnectionGUID: 39JV1c4ZTHKMMXwVQUr/rA==
X-CSE-MsgGUID: b2tt4MLvTAyBS0IFzy3Crg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72280906"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="72280906"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 21:49:52 -0800
X-CSE-ConnectionGUID: l2Ztc7MYTXmlgkMqN8JPCQ==
X-CSE-MsgGUID: lsVPWadBQqS/RQtMOGOl2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="216031670"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.74])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 21:49:50 -0800
Date: Fri, 27 Feb 2026 07:49:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 08/14] drm/i915/dp: Add AS SDP support for PR with link ON
Message-ID: <aaEwew4VZrWdFvMn@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-9-ankit.k.nautiyal@intel.com>
 <aaBwesODSUbEdvjR@intel.com> <aaEfeDSkYNU5M92U@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaEfeDSkYNU5M92U@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E0B441B2F95
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 06:37:37AM +0200, Ville Syrjälä wrote:
> On Thu, Feb 26, 2026 at 06:10:34PM +0200, Ville Syrjälä wrote:
> > On Mon, Feb 23, 2026 at 07:14:25PM +0530, Ankit Nautiyal wrote:
> > > Adaptive Sync SDP (AS SDP) is also used for Panel Replay (PR).
> > > For PR with Link ON, the AS SDP version V1 is used. When using
> > > AS SDP Version 1, AS SDP payload and parity bytes are all set to zeroes.
> > 
> > I don't think we should need to transmit any AS SDP in link ON mode.
> 
> Hmm, maybe we do. While the DP spec is is extremely confusing here
> (mostly just talking about the ALPM+AS SDP combo and ignoring the
> link ON case), I think what it might be hinting at is that the sink
> tells us whether it needs the AS SDP, via
> ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR.

Actually no. It looks to me like with the link ON, the source is still
transmitting the BS/BE at the expected locations so the sink remains
synced to the source video timings, and thus the AS SDP is not needed
for that.

> 
> > 
> > > 
> > > Bspec: 75639
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
> > >  1 file changed, 16 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index d08db4938638..5952db6197cf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3115,7 +3115,8 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
> > >  				  struct intel_crtc_state *crtc_state)
> > >  {
> > >  	return crtc_state->vrr.enable ||
> > > -	       crtc_state->cmrr.enable;
> > > +	       crtc_state->cmrr.enable ||
> > > +	       crtc_state->has_panel_replay;
> > >  }
> > >  
> > >  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> > > @@ -3137,6 +3138,16 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> > >  	as_sdp->length = 0x9;
> > >  	as_sdp->duration_incr_ms = 0;
> > >  	as_sdp->version = 0x2;
> > > +
> > > +	if (crtc_state->vrr.enable)
> > > +		as_sdp->version = 0x2;
> > 
> > I think we rather need some versions checks or something to
> > make sure the device actually supports v2. VRR itself shouldn't
> > need v2 since the v1 was originally added exactly for VRR+PCON
> > use cases. PR+ALPM definitely does need v2, but not sure anything
> > else actually needs it.
> > 
> > > +	else
> > > +		as_sdp->version = 0x1;
> > > +
> > > +	/* No payload data bytes for Version 1 */
> > > +	if (as_sdp->version == 0x1)
> > > +		return;
> > > +
> > >  	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
> > >  
> > >  	if (crtc_state->cmrr.enable) {
> > > @@ -5005,6 +5016,10 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
> > >  	sdp->sdp_header.HB2 = as_sdp->version;
> > >  	sdp->sdp_header.HB3 = as_sdp->length;
> > >  
> > > +	/* No Payload Data bytes for Version 1 */
> > > +	if (as_sdp->version == 0x1)
> > > +		return length;
> > > +
> > >  	/* Fill AS (Adaptive Sync) SDP Payload */
> > >  	sdp->db[0] = as_sdp->mode;
> > >  	sdp->db[1] = as_sdp->vtotal & 0xFF;
> > > -- 
> > > 2.45.2
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
