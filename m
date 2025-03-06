Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4227A54FF8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E29810E9DA;
	Thu,  6 Mar 2025 16:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EVcAp+sg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C9E10E9DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741276902; x=1772812902;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wvyHPsGEOHbu2ZP36FWn/nDnLz1pKtbkt4Szo9R9+yw=;
 b=EVcAp+sgzk/2jJ8IY1hERKiQCRmq2mR88LU7/YTu+xBQw+yEhMO1gu4S
 zJabJX+lfvAg8VIH/wQ+wEVLX4ecjmiiGfbW2URxi6eD7CHb0JbwZrMSv
 8yr6koPpv8vbL22cPyX6MxMWZoF/D+mfpmqat73AYtYq/akCVSpyUB6Ct
 f5MkGXHDmaQUGUhJOusH//H7Lx0qqSDFTmBgF8zqItPYiWGs1gJGHVVb6
 s0SEb+6C9+2zS0wGhlLW6MbRC6d0V62IvUO5wqh/bEFYyC1TaxuWCub/k
 eTUBP9P7SOH/j2e3U7ZArceU7qxWDxKzbUnJMcKg6vy6AZtL1NfLjj1BW A==;
X-CSE-ConnectionGUID: VJpQLhtrTp+WfHdjpKV2yg==
X-CSE-MsgGUID: N6hklLDTQPKbgUxn2Yfuvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41546084"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41546084"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:01:38 -0800
X-CSE-ConnectionGUID: 3wBpotQqR3SKaySAl+rzLw==
X-CSE-MsgGUID: AHp2TRvRTpavGFE9F9MKNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124275112"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:01:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:01:35 +0200
Date: Thu, 6 Mar 2025 18:01:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 13/19] drm/i915: Skip some bw_state readout on pre-icl
Message-ID: <Z8nG39_Maa74fRyN@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-14-ville.syrjala@linux.intel.com>
 <618b5e24c97ac1ad2856245c6c995939af4b591c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <618b5e24c97ac1ad2856245c6c995939af4b591c.camel@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 02:20:51PM +0000, Govindapillai, Vinod wrote:
> On Tue, 2025-02-18 at 23:19 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We only compute bw_state->data_rate and bw_state->num_active_planes
> > on icl+. Do the same during readout so that we don't leave random
> > junk inside the state.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 30e6f33d6f30..2a669b8535e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -809,13 +809,16 @@ static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state
> > *crtc_state)
> >  static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
> >  				 const struct intel_crtc_state *crtc_state)
> >  {
> > +	struct intel_display *display = to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  
> > -	bw_state->data_rate[crtc->pipe] =
> > -		intel_bw_crtc_data_rate(crtc_state);
> > -	bw_state->num_active_planes[crtc->pipe] =
> > -		intel_bw_crtc_num_active_planes(crtc_state);
> > +	if (DISPLAY_VER(display) >= 11) {
> > +		bw_state->data_rate[crtc->pipe] =
> > +			intel_bw_crtc_data_rate(crtc_state);
> > +		bw_state->num_active_planes[crtc->pipe] =
> > +			intel_bw_crtc_num_active_planes(crtc_state);
> > +	}
> >  	bw_state->force_check_qgv = true;
> 
> This force_check_qgv can be within the display >= 11 as well.

Hmm, yeah looks that way. Though I'll be removing force_check_qgv
later anyway so doesn't matter all that much.

> 
> Also does the below debug message need a tweak too to explain why those will be 0 in display < 11?
> Or call this intel_bw_crtc_update() only for display >= 11 ?

I do add some other stuff there later, but it would perhaps be
cleaner to add it directly to the caller instead.

These debug messages probably should be replaced with some kind of
more sensible state dump support instead. But that's a bigger topic
so not relevant right now.

> 
> With those sorted out,
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> 
> >  
> >  	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
> 

-- 
Ville Syrjälä
Intel
