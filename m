Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B39854E1C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 17:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1735B10E179;
	Wed, 14 Feb 2024 16:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuprShB1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D383B10E179
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707927953; x=1739463953;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+c1P3lvZLjh243HHERceZxgy2+xi0BRfTVufDrd+Yaw=;
 b=NuprShB1/cDlrHbJIARUsTAAQfAmzacd7rwj8Un8gkCHShfyw9vuNLIG
 WajXM1Z64KqZcxikII8yjZHLAUX7O3n4Kubofu4pZtAkpKnnb44ncHvym
 OQJKjUQs2e5B/OqL3AJpNSxOjy8dYfnbdVvlZRNBAANyPcWQe1UbDQZRc
 Qj9d4Rutoi8+VIxCh1hxEdTGXEP3oO8A/sGeW6bF6lH7UdIQURxCHioqC
 CkwFcs61eEg6KI7wA4mUwIR/ieMz/Zw93LPK6XtGrMyn2H0VnWGCH6lWR
 6zquJ3N2KN9cBCXSAxoqOy4mETH9hDSgDDensgXDr8iWT9zkTO7lS8L6V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2361915"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="2361915"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 08:25:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369623"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="826369623"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 08:25:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Feb 2024 18:25:45 +0200
Date: Wed, 14 Feb 2024 18:25:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915: Add PLL .compare_hw_state() vfunc
Message-ID: <ZczpiYb8aApSTJz3@intel.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-5-ville.syrjala@linux.intel.com>
 <87a5o36tom.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a5o36tom.fsf@intel.com>
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

On Wed, Feb 14, 2024 at 03:50:49PM +0200, Jani Nikula wrote:
> On Fri, 09 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Chunk up the humenguous dpll_hw_state comparison check into per-platform
> > variants, implemented in the dpll_mgr. This is step one in allowing
> > each platform (or perhaps even PLL) type to have a custom hw state
> > structure instead of having to smash it all into one.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++++-------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 95 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +
> >  3 files changed, 141 insertions(+), 35 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 1d381fa96c84..66ee6749fdae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4907,6 +4907,36 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
> >  	va_end(args);
> >  }
> >  
> > +static void
> > +pipe_config_pll_mismatch(bool fastset,
> > +			 const struct intel_crtc *crtc,
> > +			 const char *name,
> > +			 const struct intel_dpll_hw_state *a,
> > +			 const struct intel_dpll_hw_state *b)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +
> > +	if (fastset) {
> > +		if (!drm_debug_enabled(DRM_UT_KMS))
> > +			return;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> > +			    crtc->base.base.id, crtc->base.name, name);
> > +		drm_dbg_kms(&i915->drm, "expected:\n");
> > +		intel_dpll_dump_hw_state(i915, a);
> > +		drm_dbg_kms(&i915->drm, "found:\n");
> > +		intel_dpll_dump_hw_state(i915, b);
> > +	} else {
> > +		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> > +			crtc->base.base.id, crtc->base.name, name);
> > +		drm_err(&i915->drm, "expected:\n");
> > +		intel_dpll_dump_hw_state(i915, a);
> > +		drm_err(&i915->drm, "found:\n");
> > +		intel_dpll_dump_hw_state(i915, b);
> > +	}
> > +}
> 
> As follow-up, would be great to see this move towards drm_printer based
> approach, similar to pipe_config_dp_vsc_sdp_mismatch(). Reduces
> duplication.

Why did we convert just that single thing and not everything?

-- 
Ville Syrjälä
Intel
