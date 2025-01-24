Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF674A1B64B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241D310E965;
	Fri, 24 Jan 2025 12:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2wejfHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05A010E06C;
 Fri, 24 Jan 2025 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737722963; x=1769258963;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7TXQH2lKGmLSLCNnKH/Nc7rpzzhyIFp5lhUkzegze80=;
 b=h2wejfHHUe2vfEZgv2DeoC8g+uaIJeiGruHonkSCgo+XLFCSxRVP7Px7
 xaFO+2v/YfqoXyqW9iWHtmUgiz19WXfN4eyXOFLs9Looo6Xxi8Z8bOmrf
 tKxDLmXZTIx96UgSm81UKmSgrVLgU0vtZdbvT+Bjwl+Gvrbmms3sbgoKD
 G4XfPwKNwo226N3fqzeF0BrWw7kB8Dr8fHgVlR0Yv8oUMgFc+8BunCeKH
 Lnr9K5BkknNIE3UUVPxIqdwMYjPu5HafbUuvYf41Rmss9VsNLyrdverJn
 FWcppbd/GskB4UwwP1jLEondkXJMw0ONZWFST6dPa7XwtYiqcRgDMyz4m A==;
X-CSE-ConnectionGUID: dHFB6QX7QTOoXCvF/+SmmA==
X-CSE-MsgGUID: X70xJk8KRFmTyOsybuanGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38507717"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38507717"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:49:22 -0800
X-CSE-ConnectionGUID: MRewB3eNSE2qEIgJ3o91gw==
X-CSE-MsgGUID: bL5r5b8lTfSf4BuywnfrNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107884679"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 04:49:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 14:49:19 +0200
Date: Fri, 24 Jan 2025 14:49:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Message-ID: <Z5OMT6x4G-Km9X_I@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-12-jouni.hogander@intel.com>
 <Z5N73tdHQqLOKhk7@intel.com>
 <dbf6d20903c2ca8dbab3437b0af7ad414b14f99c.camel@intel.com>
 <Z5OJjKVW5QJEKrPP@intel.com>
 <78d2f599c2ebffb3936071048b3e8d3a343de5c1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <78d2f599c2ebffb3936071048b3e8d3a343de5c1.camel@intel.com>
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

On Fri, Jan 24, 2025 at 12:41:11PM +0000, Hogander, Jouni wrote:
> On Fri, 2025-01-24 at 14:37 +0200, Ville Syrjälä wrote:
> > On Fri, Jan 24, 2025 at 11:57:10AM +0000, Hogander, Jouni wrote:
> > > On Fri, 2025-01-24 at 13:39 +0200, Ville Syrjälä wrote:
> > > > On Fri, Jan 24, 2025 at 12:56:22PM +0200, Jouni Högander wrote:
> > > > > PIPEDSL is reading as 0 when in SRDENT(PSR1) or
> > > > > DEEP_SLEEP(PSR2).
> > > > > On
> > > > > wake-up scanline counting starts from vblank_start - 1. We
> > > > > don't
> > > > > know if
> > > > > wake-up is already ongoing when evasion starts. In worst case
> > > > > PIPEDSL could
> > > > > start reading valid value right after checking the scanline. In
> > > > > this
> > > > > scenario we wouldn't have enough time to write all registers.
> > > > > To
> > > > > tackle
> > > > > this evade scanline 0 as well. As a drawback we have 1 frame
> > > > > delay
> > > > > in flip
> > > > > when waking up.
> > > > > 
> > > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
> > > > >  1 file changed, 12 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > index bb77ded8bf726..914f0be4491c4 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > @@ -528,6 +528,18 @@ void intel_dsb_vblank_evade(struct
> > > > > intel_atomic_state *state,
> > > > >  	int latency = intel_usecs_to_scanlines(&crtc_state-
> > > > > > hw.adjusted_mode, 20);
> > > > >  	int start, end;
> > > > >  
> > > > > +	/*
> > > > > +	 * PIPEDSL is reading as 0 when in SRDENT(PSR1) or
> > > > > DEEP_SLEEP(PSR2). On
> > > > > +	 * wake-up scanline counting starts from vblank_start
> > > > > - 1.
> > > > > We don't know
> > > > > +	 * if wake-up is already ongoing when evasion starts.
> > > > > In
> > > > > worst case
> > > > > +	 * PIPEDSL could start reading valid value right after
> > > > > checking the
> > > > > +	 * scanline. In this scenario we wouldn't have enough
> > > > > time
> > > > > to write all
> > > > > +	 * registers. To tackle this evade scanline 0 as well.
> > > > > As
> > > > > a drawback we
> > > > > +	 * have 1 frame delay in flip when waking up.
> > > > > +	 */
> > > > > +	if (crtc_state->has_psr && !crtc_state-
> > > > > >has_panel_replay)
> > > > 
> > > > What's the deal with panel replay here?
> > > 
> > > I couldn't see PIPEDSL returning 0 when using Panel Replay. Even on
> > > same setup with PSR I saw it, but with PR I couldn't see.
> > 
> > Hmm. Are you sure it's reaching DC5/6?
> > 
> > Though I suppose it's possible that panel replay (unlike PSR)
> > does pretty much everything from the DMC's DC state handler,
> > so as soon as you read the register it restores things fully
> > enough that you get the vblank_start-1 response...
> 
> Maybe we just add that evasion without checking panel replay. It
> shouldn't be too expensive anyways. What do you think?

Yeah, that seems fine to me.

But I still think you should try to double check that it
really reaches DC6 with panel replay despite PIPDSL not
getting reset, so that we at least understand a bit better
what is actually happening.

-- 
Ville Syrjälä
Intel
