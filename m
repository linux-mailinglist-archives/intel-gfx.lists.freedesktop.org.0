Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183BF861D0F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 20:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19CA10EC98;
	Fri, 23 Feb 2024 19:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SM8deDPn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A4510EC98
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 19:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708718242; x=1740254242;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LdpvfIMGLN438NIASqUgQDwSZodYhTZKar2zCaskc78=;
 b=SM8deDPnUI92XJCS5B3Re4dKBJcdPjEDGOA6uuihc4Hkgm0R7ZDbFMAN
 wehgauTmhHRL4sVwq8yETvDDFoKkN+QJ2gF0KsFIHHDLYqxE3jT/pviq5
 U5R3WkFR5TnwvgX+m+sA8vb6taUG7LNPyOW7qPhUXsDSS2c74G3lm2yjn
 GMwazSKKYjThQQTgFZZpv3B4EgRB3HApCtPYfTtfNRUS3KF2MpTUMspcY
 fjO58mgAS8P3X8g23HjsJV6JRGCqkDnGvKT9EJ0k4veK/3vyxH4jFFCXV
 BmyeZS7VWE9ZtslS+mH4Dj+nRK9mHbt5fCSAuE8k/akx9Z+z8fqoaqgKG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="13696401"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="13696401"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 11:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="827767861"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="827767861"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Feb 2024 11:57:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Feb 2024 21:57:18 +0200
Date: Fri, 23 Feb 2024 21:57:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/i915: Convert intel_dpll_dump_hw_state() to
 drm_printer
Message-ID: <Zdj4nverFkk100mW@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-7-ville.syrjala@linux.intel.com>
 <ZdfCf75LfRW-VBJn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdfCf75LfRW-VBJn@intel.com>
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

On Thu, Feb 22, 2024 at 04:54:07PM -0500, Rodrigo Vivi wrote:
> On Thu, Feb 15, 2024 at 06:40:49PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Utilize drm_printer in pipe_config_pll_mismatch() to avoid
> > a bit of code duplication.
> > 
> > To achieve this we need to plumb the printer all way to the
> > dpll_mgr .dump_hw_state() functions. Those are also used by
> > intel_crtc_state_dump() which needs to be adjusted as well.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  27 ++---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 105 ++++++++----------
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
> >  4 files changed, 67 insertions(+), 72 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 4bcf446c75f4..59d2b3d39951 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -205,9 +205,12 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	const struct intel_plane_state *plane_state;
> >  	struct intel_plane *plane;
> > +	struct drm_printer p;
> >  	char buf[64];
> >  	int i;
> >  
> > +	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> > +
> >  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
> >  		    crtc->base.base.id, crtc->base.name,
> >  		    str_yes_no(pipe_config->hw.enable), context);
> > @@ -356,7 +359,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
> >  		    pipe_config->ips_enabled, pipe_config->double_wide,
> >  		    pipe_config->has_drrs);
> >  
> > -	intel_dpll_dump_hw_state(i915, &pipe_config->dpll_hw_state);
> > +	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
> >  
> >  	if (IS_CHERRYVIEW(i915))
> >  		drm_dbg_kms(&i915->drm,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index e5010049d52e..d7f39ad84138 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4927,26 +4927,27 @@ pipe_config_pll_mismatch(bool fastset,
> >  			 const struct intel_dpll_hw_state *b)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct drm_printer p;
> >  
> >  	if (fastset) {
> >  		if (!drm_debug_enabled(DRM_UT_KMS))
> >  			return;
> >  
> > -		drm_dbg_kms(&i915->drm,
> > -			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> > -			    crtc->base.base.id, crtc->base.name, name);
> > -		drm_dbg_kms(&i915->drm, "expected:\n");
> > -		intel_dpll_dump_hw_state(i915, a);
> > -		drm_dbg_kms(&i915->drm, "found:\n");
> > -		intel_dpll_dump_hw_state(i915, b);
> > +		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> > +
> > +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
> > +			   crtc->base.base.id, crtc->base.name, name);
> >  	} else {
> > -		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> > -			crtc->base.base.id, crtc->base.name, name);
> > -		drm_err(&i915->drm, "expected:\n");
> > -		intel_dpll_dump_hw_state(i915, a);
> > -		drm_err(&i915->drm, "found:\n");
> > -		intel_dpll_dump_hw_state(i915, b);
> > +		p = drm_err_printer(&i915->drm, NULL);
> > +
> > +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
> > +			   crtc->base.base.id, crtc->base.name, name);
> >  	}
> > +
> > +	drm_dbg_kms(&i915->drm, "expected:\n");
> > +	intel_dpll_dump_hw_state(i915, &p, a);
> > +	drm_dbg_kms(&i915->drm, "found:\n");
> > +	intel_dpll_dump_hw_state(i915, &p, b);
> 
> forgot to convert here?

Looks like that part ended up in the last patch. Probably
a rebase fail on my part. I'll shuffle it back over here.

-- 
Ville Syrjälä
Intel
