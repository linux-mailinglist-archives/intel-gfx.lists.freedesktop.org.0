Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIzyC3O3y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:00:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C9F369396
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20AD210E2C7;
	Tue, 31 Mar 2026 12:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iOsMeJ3S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2739110E0BA;
 Tue, 31 Mar 2026 12:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958447; x=1806494447;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=I7meou+m9dvNu5jP/cPEki+9BExqNM0kKGia2awkV3g=;
 b=iOsMeJ3S1siAC/l30fLwmBuQO5K9PuLb4OxvTHa0WlX18LQlPySLW/si
 cWFt0abdp8ggM+b1607tQOjBWAW3LBco2pC01PQJ3xDB7ojZfMAr3gmvY
 FMsU3IUoiSIxaQhchf47b1uX9DcO7hNWfE1h6ERx2iLXDOjNWWvwf/2Sg
 S7a7sHs8OsWFRrB1vH95CZQsWbUHHuM0UlTg6rSqcYSOaLa31K7E5UlYv
 fYGf9kridCuOo9+AP/olx4UjH2neqCKH/g17S/w6blOjgReQavUwGqa05
 sqWTiZfQfxyLaBEtfvXljmfbseLyLEPuQyvaLi2QCREEcYm0qZv8Yu+jx Q==;
X-CSE-ConnectionGUID: uaIz/oZ1Rnu+W1JTKK3QMQ==
X-CSE-MsgGUID: haLx7ojYTSGcczTPT60twQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86267520"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86267520"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:00:47 -0700
X-CSE-ConnectionGUID: IwQLcEyXRhGRL6jLDKWz4w==
X-CSE-MsgGUID: bZIa+NFaRy6HNxCufA9cWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223465467"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:00:44 -0700
Date: Tue, 31 Mar 2026 15:00:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 08/19] drm/i915/dp: Add a helper to decide if AS SDP can
 be used
Message-ID: <acu3abWwU2wHd14F@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-9-ankit.k.nautiyal@intel.com>
 <acq_Nix_LJQYmQHq@intel.com>
 <91f1919c-c265-478e-a711-8c5c42ea73a8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <91f1919c-c265-478e-a711-8c5c42ea73a8@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D3C9F369396
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 05:12:14PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/30/2026 11:51 PM, Ville Syrjälä wrote:
> > On Mon, Mar 30, 2026 at 09:36:45AM +0530, Ankit Nautiyal wrote:
> >> Add a helper that determines whether AS SDP can be used for the
> >> current DP configuration. For now this is true only when the sink
> >> supports AS SDP and VRR is enabled, but more conditions may be added
> >> later.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
> >>   1 file changed, 10 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 499850c2abcf..7ca3f9d583db 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -3124,6 +3124,15 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
> >>   	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
> >>   }
> >>   
> >> +static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
> >> +				    struct intel_crtc_state *crtc_state)
> >> +{
> >> +	if (!intel_dp->as_sdp_supported)
> >> +		return false;
> >> +
> > Could have a FIXME here about fastset being borked with this. Didn't
> > read far enough in the series yet to see if you did anything about that.
> 
> Hmm... let me check if I understand your concern correctly.
> 
> When VRR state changes through the fastset path, 
> intel_dp_as_sdp_compute_config_late() will compute different AS SDP fields.
> 
> We do write the new values to the SDP DIP registers during update_pipe, 
> but since AS SDP comparison is skipped during fastset,

Oh, I thought we didn't have that. If it's there then I guess it's
fine-ish. Although we don't do the infoframe/SDP updates in the
truly proper atomic fashion, nor do we handle the new cdclk->tc clock
crossing thing correctly. So I suspect we might end up sending
a corrupted packet if the update happens to straddle the transmission
line.

> we have no way to verify through state readback that the hardware 
> actually latched the new values correctly.
> 
> Is that what you had in mind?
> 
> I'll add a FIXME about this.
> 
> Thanks,
> 
> Ankit
> 
> 
> >
> > Either way
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >> +	return crtc_state->vrr.enable;
> >> +}
> >> +
> >>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> >>   				    struct intel_crtc_state *crtc_state)
> >>   {
> >> @@ -3131,7 +3140,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> >>   	const struct drm_display_mode *adjusted_mode =
> >>   		&crtc_state->hw.adjusted_mode;
> >>   
> >> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> >> +	if (!intel_dp_can_use_as_sdp(intel_dp, crtc_state))
> >>   		return;
> >>   
> >>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
