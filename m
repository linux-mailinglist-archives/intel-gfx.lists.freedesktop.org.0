Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ2yMJvD3Gn5VwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:21:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309B03EA875
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD2210E326;
	Mon, 13 Apr 2026 10:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8mma3HL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C49F10E326;
 Mon, 13 Apr 2026 10:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776075672; x=1807611672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iDkGFxoOM02JEzUdapQCxrNJeehhLYMiLtsnTQfk+Ys=;
 b=a8mma3HLzJhGHUQ72P2T5iSA+Qy8elkgPnZb/lvBDQWlTPNHWcWOQjUb
 BjP2DY0T2qvyP4591vw9DO+/g2Z1YbWYCwys7athDZERxz8fNzPUTeH6N
 iOYFIKX7Lacu9K02shdtadIxJLogVTIfXtfF8oqwot6FYOY7zXzl/tklo
 Kjomwij4aA97YbPw4NmMsAtgmsU+JSslKAk5KV/MBozM2pEPwhLRd1Bsd
 LAX6NaBD/f1xDxnUuZxSbh44F0xKMt/AKIn55ZQilj2HopoeC9YEw+XEM
 XX/mP8OU/v1tA3OgLRgTvenYaW0fabXZFN0ARavg4iN7rjKjS/nlVjcOz A==;
X-CSE-ConnectionGUID: nZXCgyMwSFeff1YtyXgXig==
X-CSE-MsgGUID: E09wIn/8TgW4UKOj7ky11w==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="102466086"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="102466086"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 03:21:12 -0700
X-CSE-ConnectionGUID: xsGNjyElRT6bVwfR6oDcGQ==
X-CSE-MsgGUID: 6KFC+UjFTy+odcOB73RMhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="253142725"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.64])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 03:21:11 -0700
Date: Mon, 13 Apr 2026 13:21:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [PATCH 02/12] drm/i915/vrr: Add helper to readback EMP_AS_SDP_TL
Message-ID: <adzDlJ9Pr5SdzTre@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-3-ankit.k.nautiyal@intel.com>
 <ady2etQgkOzYOOA5@intel.com>
 <00a50371-ab7b-44a2-9261-fc3f8308eb4a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00a50371-ab7b-44a2-9261-fc3f8308eb4a@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 309B03EA875
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 03:24:30PM +0530, Nautiyal, Ankit K wrote:
> 
> On 4/13/2026 2:55 PM, Ville Syrjälä wrote:
> > On Mon, Apr 13, 2026 at 09:23:39AM +0530, Ankit Nautiyal wrote:
> >> EMP_AS_SDP_TL is used to program both DP Adaptive Sync SDP and HDMI
> >> Video Timing EMP for VRR operation. Add a helper to read back the
> >> programmed transmission line from hardware so VRR code can populate
> >> the corresponding CRTC state fields during get_config.
> >>
> >> This provides a common read-back path for VRR packet transmission
> >> line state.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++++
> >>   drivers/gpu/drm/i915/display/intel_vrr.h |  1 +
> >>   2 files changed, 14 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> index 1fed597439b0..abdae7f1f8a8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >> @@ -1218,3 +1218,16 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
> >>   
> >>   	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
> >>   }
> >> +
> >> +u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	struct intel_display *display = to_intel_display(crtc_state);
> >> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >> +	u32 val;
> >> +
> >> +	if (!HAS_EMP_AS_SDP_TL(display))
> >> +		return 0;
> >> +
> >> +	val = intel_de_read(display, EMP_AS_SDP_TL(display, cpu_transcoder));
> >> +	return REG_FIELD_GET(EMP_AS_SDP_DB_TL_MASK, val);
> > This stuff really doesn't seem to belong in intel_vrr.c. We probably need
> > some kind of infoframe/SDP file where all the relevant stuff lives. Long
> > ago I did attempt to extract all the infoframe stuff from intel_hdmi.c
> > into intel_dip.c (or something like that), but there were still far too
> > many HDMI specifics in the result for my liking.
> >
> > So I think what's really needed is an effort to distill the core of the
> > video DIP implementation (really just the low level buffer read/write
> > stuff, and I suspect now also this transmission line stuff) into a new
> > file. You could perhaps introduce that new file here, and then we'll
> > try to get to extracting the DIP buffer stuff later.
> Alright. I can start with a new file for SDP transmission line stuff.
> 
> Since we are on the topic, I had a query:
> The hsw_infoframe_enable() switch mixes HDMI packet types and DP SDP 
> types in a single namespace.
> The types currently used don't collide, but I think these might collide 
> at some point, (if not already).
> Do we need to change this? OR these are guaranteed to be non-overlapping?

We should perhaps introduce a DIP type enum and have the higher level
code convert the HDMI/DP specific types into that.


-- 
Ville Syrjälä
Intel
