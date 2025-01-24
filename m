Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFAFA1B601
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:32:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0AC10E0EA;
	Fri, 24 Jan 2025 12:32:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZusdncQt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77B410E0EA;
 Fri, 24 Jan 2025 12:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737721950; x=1769257950;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wAXtHYeJAm1ZPSOwEb+T9rUDzThUW4d7xJojG1FpcKg=;
 b=ZusdncQtl95lbUzvMCQW/dSu6O4Mfl2VaBmGWNJ5E3cwlzQBZA9xdlWp
 1ryUPW9ej06v3yJNlJKCbmthmXaR5C3/JgdsVZMvpDNyvktZh4maI10Et
 beZTcYGV0dVagNDJ1PrFqwv5pT695D73a6yBABDl1Lhd5vHw9InovJ/um
 /VVlO4WI5baoi/9RYrgEqr1oCHaWJ5XWycyL8ReHV1oCL8A5NpvA/9Ouh
 BYsliK9bqUGc6wGxUXn7qkewmIYZ5qO68HRPfmOI4Zwo8nsMfS32F+V/m
 p/7ImYnOb6df8namoClv0UGcPO+Bo/Y3Z0BM8gggaFmp+9O+L80gK93KB Q==;
X-CSE-ConnectionGUID: sS04qv9vRbWYXx4QCIayMg==
X-CSE-MsgGUID: 4wNzGftbRdSjv6ZUucNIug==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38419089"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38419089"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:32:30 -0800
X-CSE-ConnectionGUID: XlW0jcwgTHqt5kIkRE81Tw==
X-CSE-MsgGUID: 8b8x2Hv9TGO6wz659OyJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107881398"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 04:32:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 14:32:26 +0200
Date: Fri, 24 Jan 2025 14:32:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Message-ID: <Z5OIWlp_KyxOJu6H@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-10-jouni.hogander@intel.com>
 <Z5N_RgaVKLgHAeh2@intel.com>
 <f11a7d44d79533b0f1469277b2225b3bf1878825.camel@intel.com>
 <fc528489a1e37dd9f853aa63bb93fd3fdfee0be2.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fc528489a1e37dd9f853aa63bb93fd3fdfee0be2.camel@intel.com>
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

On Fri, Jan 24, 2025 at 12:16:56PM +0000, Hogander, Jouni wrote:
> On Fri, 2025-01-24 at 14:09 +0200, Hogander, Jouni wrote:
> > On Fri, 2025-01-24 at 13:53 +0200, Ville Syrjälä wrote:
> > > On Fri, Jan 24, 2025 at 12:56:20PM +0200, Jouni Högander wrote:
> > > > Changing PSR mode using DSB is not implemented. Do not use DSB
> > > > when
> > > > PSR
> > > > mode is changing.
> > > > 
> > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 3ac1cc9ac08a8..a189aa437d972 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -7682,7 +7682,8 @@ static void intel_atomic_dsb_finish(struct
> > > > intel_atomic_state *state,
> > > >  		!new_crtc_state->scaler_state.scaler_users &&
> > > >  		!old_crtc_state->scaler_state.scaler_users &&
> > > >  		!intel_crtc_needs_modeset(new_crtc_state) &&
> > > > -		!intel_crtc_needs_fastset(new_crtc_state);
> > > > +		!intel_crtc_needs_fastset(new_crtc_state) &&
> > > > +		!intel_psr_is_psr_mode_changing(old_crtc_state,
> > > > new_crtc_state);
> > > 
> > > Hmm. Doesn't all that imply a fastset anyway
> > 
> > PSR/PR doesn't imply fastset.

You seem to be checking has_psr, has_sel_update, has_panel_replay,
and enable_psr2_su_region_et, and all of those seem to come from 
from intel_psr_compute_config() which is only called from the
modeset path. Which means it's either going to end up as a full
modeset or fastset.

> > 
> > At the time of enabling PSR/PR crtc_state->has_psr is true at this
> > point, but PSR is not yet enabled. It gets enabled only in 
> > pre_plane_update. Also in hsw_activate_psr2 and
> > dg2_panel_replay_activate we are writing PSR2_MAN_TRK_CTL.
> 
> I said it wrong here: post_plane_update I mean of course.

We don't really care whether PSR is actually active or not.
All we care about is whether it might be active. Or I suppose
technically we wouldn't even have to care about that if we just
always blasted in the extra DSB commands, but since it's easy to
avoid the extra overhead when PSR is not even possible then I
suppose it might be worthwile to check for that.

-- 
Ville Syrjälä
Intel
