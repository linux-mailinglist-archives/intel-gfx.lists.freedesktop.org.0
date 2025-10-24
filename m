Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619D8C0692F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E074B10EA4D;
	Fri, 24 Oct 2025 13:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZwoajcR9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07AD10EA48;
 Fri, 24 Oct 2025 13:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761313898; x=1792849898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rNUIMnOzDpdSOLirSVEcDzWt+NhoUWgIn4lEj+HdXj8=;
 b=ZwoajcR966zcXY2VkLJkfbbg0r9nmen3LWpnL6U6l6gL60VA+YXEAX97
 aUxfJJFpBU4cpkurtvBCmCdg1hHv9ZrIOCMSphvLwXn6CfbdYfYeex8Vg
 1CHsjQL4NacMMniNELu+5JSvBK73aD8L41kE4Uj960Iks+RirwFMSs68k
 cVkyeUy8EZV9KnKFH6qAZDkIxU0e4PbZoQQRB93DJ5Pp0kkta7k3SVzq4
 RTlLh2PT0boaaa3KnbzFs2fzoeqUq9lgGqXbXDWUngrAdeXpbwqOSi4Ff
 7h+U0f8IqNePBHz5Soc1k4x7dnZ481NZQSwpoI/Kc6bVMpWaoowTLgODf Q==;
X-CSE-ConnectionGUID: RYCyKt/WQmCruTtnoXDQtQ==
X-CSE-MsgGUID: 92tGhtH3Q1yNOjn5rMyhyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74840345"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74840345"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:51:38 -0700
X-CSE-ConnectionGUID: H7b9Cy7fRr22Oj6MbxwiwA==
X-CSE-MsgGUID: u0PmvRqWQeu+/VwVvftDyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="188820251"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.37])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:51:36 -0700
Date: Fri, 24 Oct 2025 16:51:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/22] drm/i915/vrr: Move EMP_AS_SDP_TL write into
 intel_vrr_set_transcoder_timings()
Message-ID: <aPuEZhuGC03Uhs92@intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-11-ville.syrjala@linux.intel.com>
 <323feb7b-94bd-4158-94ea-02d85a463369@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <323feb7b-94bd-4158-94ea-02d85a463369@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 24, 2025 at 07:09:19PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > EMP_AS_SDL_TL replaces the TRANS_VRR_VSUNC for the purposes of
> 
> Nitpick: typo TRANS_VRR_VSYNC.
> 
> 
> > setting the AS SDP transmission line. Move the EMP_AS_SDL_TL into
> > intel_vrr_set_transcoder_timings() since that's where we write
> > TRANS_VRR_VSYNC as well.
> 
> 
> Not related to this change, but perhaps at some point we might need to 
> come with a policy if there are more SDPs that have configurable 
> Transmission lines and DB point.
> 
> We have VS_SDP_TL for PTL (we do not use VS_SDP currently), and some 
> more for NVL.

Yeah, I think this actually the wrong place to program this as
it also affects infoframes on HDMI. Probably all these should
be in the infoframe code somewhere.

> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> > ---
> >   drivers/gpu/drm/i915/display/intel_vrr.c | 35 ++++++++----------------
> >   1 file changed, 12 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 6e8f8e673312..562a5feadaab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -571,6 +571,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >   			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> >   			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> >   			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> > +
> > +	/*
> > +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> > +	 * double buffering point and transmission line for VRR packets for
> > +	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> > +	 * Since currently we support VRR only for DP/eDP, so this is programmed
> > +	 * to for Adaptive Sync SDP to Vsync start.
> > +	 */
> > +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> > +		intel_de_write(display,
> > +			       EMP_AS_SDP_TL(display, cpu_transcoder),
> > +			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> >   }
> >   
> >   void intel_vrr_send_push(struct intel_dsb *dsb,
> > @@ -649,25 +661,6 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
> >   	return false;
> >   }
> >   
> > -static
> > -void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state *crtc_state)
> > -{
> > -	struct intel_display *display = to_intel_display(crtc_state);
> > -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > -
> > -	/*
> > -	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> > -	 * double buffering point and transmission line for VRR packets for
> > -	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> > -	 * Since currently we support VRR only for DP/eDP, so this is programmed
> > -	 * to for Adaptive Sync SDP to Vsync start.
> > -	 */
> > -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> > -		intel_de_write(display,
> > -			       EMP_AS_SDP_TL(display, cpu_transcoder),
> > -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> > -}
> > -
> >   static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
> >   {
> >   	struct intel_display *display = to_intel_display(crtc_state);
> > @@ -710,8 +703,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> >   	intel_vrr_set_vrr_timings(crtc_state);
> >   
> >   	if (!intel_vrr_always_use_vrr_tg(display)) {
> > -		intel_vrr_set_db_point_and_transmission_line(crtc_state);
> > -
> >   		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> >   			       TRANS_PUSH_EN);
> >   
> > @@ -773,8 +764,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
> >   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> >   		       TRANS_PUSH_EN);
> >   
> > -	intel_vrr_set_db_point_and_transmission_line(crtc_state);
> > -
> >   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> >   		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> >   }

-- 
Ville Syrjälä
Intel
