Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AA785EA19
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 22:25:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FE610E62E;
	Wed, 21 Feb 2024 21:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cf/fiNIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F32210E62E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 21:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708550698; x=1740086698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TvYdEILWeI1u4tiGgp6PPY60D5QPsIzGkeFU+wB7TMg=;
 b=Cf/fiNIHmwfdmGwZjC4vKLo2Entt6x0e+d9RCxl5tfNhHmw5sTtyCdeS
 B8aWvNWzmRBVGQperZY/kcZDnEKN6HUGBDj6t/B7AwoAVIgpSG1uzBPXd
 DSO6v4sUiNFhKAU8VfTk+DKBmwzTCKg5G8KAbBgtzZQC7780xTXN5tVuV
 KcL29NxXN+mQYqUJDjwWAesXjduyVck4SVl8pRIXIYQ/GQCG/AA33rb1s
 PI2M6agl1g3vAAYVsS72rc2OSCgktfjJaMzHPl38hYqMsS3TGTC+Xzigy
 WWehzMOFV3wOF2DKcHztXmdADSUmVQT9o0P7jnDaUYO1Vt4HvjRw+mduI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2865058"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2865058"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 13:24:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827411671"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="827411671"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2024 13:24:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Feb 2024 23:24:52 +0200
Date: Wed, 21 Feb 2024 23:24:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZdZqJE1-JTK0--zS@intel.com>
References: <20240220141919.3502674-1-animesh.manna@intel.com>
 <ZdTkUFmBcxcpqTV3@intel.com>
 <PH7PR11MB598164A6F2EC328A7604B4FAF9572@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZdZkCE64afsH-13o@intel.com> <ZdZmQuJkN0P0JDGp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdZmQuJkN0P0JDGp@intel.com>
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

On Wed, Feb 21, 2024 at 11:08:18PM +0200, Ville Syrjälä wrote:
> On Wed, Feb 21, 2024 at 03:58:48PM -0500, Rodrigo Vivi wrote:
> > On Wed, Feb 21, 2024 at 08:19:35PM +0000, Manna, Animesh wrote:
> > > 
> > > 
> > > > -----Original Message-----
> > > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > Sent: Tuesday, February 20, 2024 11:12 PM
> > > > To: Manna, Animesh <animesh.manna@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Hogander,
> > > > Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> > > > <arun.r.murthy@intel.com>
> > > > Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with
> > > > VRR
> > > > 
> > > > On Tue, Feb 20, 2024 at 07:49:19PM +0530, Animesh Manna wrote:
> > > > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > > > > W2 are 0. So Program Set Context Latency in
> > > > TRANS_SET_CONTEXT_LATENCY
> > > > > register to at least a value of 1.
> > > > >
> > > > > HSD: 14015406119
> > > > 
> > > > Unnecessary mark since the wa_name already is a pointer to the HSD.
> > > > 
> > > > >
> > > > > v1: Initial version.
> > > > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > > > v3: Add WA in compute_config(). [Ville]
> > > > >
> > > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
> > > > >  1 file changed, 12 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index 217196196e50..eb0fa513cd0f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -2948,6 +2948,18 @@ intel_dp_compute_config(struct intel_encoder
> > > > *encoder,
> > > > >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> > > > >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> > > > pipe_config,
> > > > > conn_state);
> > > > >
> > > > > +	/*
> > > > > +	 * WA: HSD-14015406119
> > > > 
> > > > this is not the right one. You should use the lineage one and then mark the
> > > > platforms.
> > > > 
> > > > /* wa_14015401596: xe_lpd, xe_hpd */
> > > > 
> > > > or perhaps
> > > > 
> > > > /* wa_14015401596: display versions: 13, 14 */
> > > > 
> > > > and also add a check for the display version with it.
> > > 
> > > Sure.
> > > 
> > > > 
> > > > > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > > > register
> > > > > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > > > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > > > substracting
> > > > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> > > > crtc_vblank_start
> > > > > +	 * by 1 if both are equal.
> > > > > +	 */
> > > > > +	if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> > > > > +	    adjusted_mode->crtc_vblank_start == adjusted_mode-
> > > > >crtc_vdisplay)
> > > > > +		adjusted_mode->crtc_vblank_start += 1;
> > > > 
> > > > why to mess with the vblank start instead of going to
> > > > intel_set_transcoder_timings() and change directly what is getting written to
> > > > the register when the register gets written?
> > > 
> > > I have done in previous version of this patch. But as per review feedback, added now here.
> > > https://patchwork.freedesktop.org/series/129632/#rev1
> > > https://patchwork.freedesktop.org/series/129632/#rev2
> > >  
> > > > 
> > > > In case the answer is becasue by then we don't have the vrr.enable or
> > > > something like that, then we should consider move around when we set that
> > > > register?
> > > 
> > > This was not acceptable in earlier versions. As per feedback instead of atomic-commit need to add in compute-config phase.  
> > > 
> > > > 
> > > > or perhaps create a specific flag? one extra variable, 3 less comment lines...
> > > 
> > > The above comment is not clear to me, can you please elaborate more here.
> > 
> > something like:
> > 
> > @intel_dp_compute_config()
> > 
> > +if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> > +	adjusted_mode->crtc_vblank_start == adjusted_mode-crtc_vdisplay)
> > +	pipe_config->mode_flags = I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1
> > 
> > then
> > @intel_set_transcoder_timings()
> > +u32 context_latency;
> > 
> > +if (crtc_state->mode_flags & I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1)
> > +   context_latency = 1;
> > +else
> > +   crtc_vblank_start - crtc_vdisplay;
> > 
> > -crtc_vblank_start - crtc_vdisplay);
> > +context_latency);
> > 
> > Ville, thoughts?
> 
> I think what we need is a intel_crtc_vblank_delay() or somesuch thing
> that accounts for all the things (eg. this w/a, dsb execution latency
> when we start to use dsb for double buffered registers, etc). 
> And it should probably be called from some central place so that
> it works for all output types. intel_crtc_compute_config() comes to
> mind, but I guess we need to first ponder whether there are bits
> of code being executed prior to that that would need to know the
> actual vblank_start...

PSR2 itself might have a chicken vs. egg issue here. Wehether we
can enable it not depends on the length of the vblank. Whether
that means the full vblank or the pipe's shrunken vblank I don't
know. Someone needs to figure that out.

-- 
Ville Syrjälä
Intel
