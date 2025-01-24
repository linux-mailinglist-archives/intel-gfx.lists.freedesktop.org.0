Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49F1A1B50F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5354E10E958;
	Fri, 24 Jan 2025 11:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGaFJjPQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D5A10E958;
 Fri, 24 Jan 2025 11:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719883; x=1769255883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2wYUauKk6e7Dfp5qdGpI20+Efnsoisem2a8eZgsAo4A=;
 b=DGaFJjPQICSspm1HVHbRWeQuWv7PI3E0CN5gSkRNKqPhwA5UHZ1mcExA
 Wa2skbDjFiaLs8zuaXG0Il4zFQrDZI5XDb3QcdNPY9VVSiJm8q7b93foQ
 2v9vL9KH5TMT+2Q+ke8Rojxg89i11MDT4/plzx9KrJ37mTltO0EcVds4o
 Vh7zxiAvY7XE1qNRkVFTIdJ1UUEB0Pv3Nvl3J2sUIlCYXVntvFoT/CAah
 JH+qmzJeqAcABLj4FWLUaamXTYrq7+o9seYJaogtfrPNLbK03feYeGbk2
 9+XfWE1+Xa0tnM/DA3FilkkEki4JdTiD1NC3zN9GXG8efggyi94W/oqKQ Q==;
X-CSE-ConnectionGUID: oaYgxnfDQcStIwmYaT6vOQ==
X-CSE-MsgGUID: uwcSy8hsTaW5gEU5/ly+mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55797532"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55797532"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:58:03 -0800
X-CSE-ConnectionGUID: KFSUU9poRtaYYSfun82YRQ==
X-CSE-MsgGUID: Ow0F0f2nSXORSnQgdnbDCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107875347"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 03:58:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 13:57:59 +0200
Date: Fri, 24 Jan 2025 13:57:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v4 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Message-ID: <Z5OARwCaGG8OyXVW@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-13-jouni.hogander@intel.com>
 <Z5N83bbvxBKm4yEQ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z5N83bbvxBKm4yEQ@intel.com>
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

On Fri, Jan 24, 2025 at 01:43:25PM +0200, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 12:56:23PM +0200, Jouni Högander wrote:
> > We may have commit which doesn't have any non-arming plane register
> > writes. In that case there aren't "Frame Change" event before DSB vblank
> > evasion which hangs as PIPEDSL register is reading as 0 when PSR state is
> > SRDENT(PSR1) or DEEP_SLEEP(PSR2). Handle this by adding dummy write
> > triggering the "Frame Change" event.
> > 
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index a189aa437d972..cd7e960bd29f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7666,6 +7666,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct intel_crtc_state *new_crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_display *display = to_intel_display(crtc);
> >  
> >  	if (!new_crtc_state->hw.active)
> >  		return;
> > @@ -7708,6 +7709,15 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> >  		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
> >  					       state, crtc);
> >  
> > +		/*
> > +		 * Ensure we have "Frame Change" event when PSR state is
> > +		 * SRDENT(PSR1) or DEEP_SLEEP(PSR2). Otherwise DSB vblank
> > +		 * evasion hangs as PIPEDSL is reading as 0.
> > +		 */
> > +		if (new_crtc_state->has_psr && !new_crtc_state->has_panel_replay)
> > +			intel_de_write_dsb(display, new_crtc_state->dsb_commit,
> > +					   CURSURFLIVE(display, crtc->pipe), 0);
> 
> I don't really want to see the low level detais right here.
> So we should probably should stuff this into some kind of 
> intel_dsb_ensure_psr_frame_change() function or something
> along those lines.

Oh, and I guess this really should be using
intel_pre_commit_crtc_state() as well. I suppose it doesn't
actually matter if we skip commits that change PSR stuff anyway,
but at some point the plan is to attempt full fastsets with
the DSB (if actually possible).

> 
> > +
> >  		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
> >  
> >  		if (intel_crtc_needs_color_update(new_crtc_state))
> > -- 
> > 2.43.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
