Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A546E93B2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95F210EC1C;
	Thu, 20 Apr 2023 12:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB4A10EC1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681992555; x=1713528555;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y6rNOBcBw++/DnoCFYQsBO5pa979elurnHOBmP5fWiY=;
 b=LkVR3o3DzXTcAWkKi6JtA+ul1H5DFgFAioQ1EY4NHyxIrZgBj9PzrCQx
 0s7/kjgrNF78ZFmC9b6g2W+lKzAFYB9WeipJxRZWaWrc7ePKWodKa4+10
 LaeAn1A4DWssxIvcLLLe7XR7GNBxAeBKrrpULefk6COanwoNFdsBuo/Vm
 ypw+15raqW03hxv4cgZlWmJ7Ma/nq8VUrvZ5jqfD8hOxcfgkDXEHHFg2G
 I/X/xCuU9jkF6yRDkz4+siS5C1XAIujxMH3g7YTjdn8iVB/NyRZUC/D4Y
 pzUCh8OixTs2tr+EPPehme4Z/r4r8amZs+ANyADGBANJRkAMRj1cdnTwr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="334546997"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="334546997"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="781224092"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="781224092"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Apr 2023 05:09:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Apr 2023 15:09:11 +0300
Date: Thu, 20 Apr 2023 15:09:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZEErZ4ma5P1IU3tW@intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-10-ville.syrjala@linux.intel.com>
 <87v8hryjh3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v8hryjh3.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915: Define bitmasks for ilk
 pfit window pos/size
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 19, 2023 at 06:34:00PM +0300, Jani Nikula wrote:
> On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Define and use the bitmasks for the x/y components
> > of the ilk+ panel filter window pos/size registers.
> 
> This reduces the field sizes by 3-4 bits. Maybe that's what they're in
> the spec, but it's at least worth mentioning here.

Aye. I just double checked this and on BDW these are in
fact the only bits that can be set in the registers. On
older hw every bit can apparently be set, but resumably
the high bits just have no effect. And intel_mode_valid()
will anyway reject modes with bigger hdisplay/vdisplay
so we should never see out of bounds values here.

> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
> >  drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++++
> >  2 files changed, 16 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index fb49d0ed61b4..626a5f41a1f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -812,8 +812,10 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
> >  	else
> >  		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
> >  				  PF_FILTER_MED_3x3);
> > -	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
> > -	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
> > +	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
> > +			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
> > +	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
> > +			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
> >  }
> >  
> >  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
> > @@ -3246,8 +3248,10 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
> >  	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
> >  
> >  	drm_rect_init(&crtc_state->pch_pfit.dst,
> > -		      pos >> 16, pos & 0xffff,
> > -		      size >> 16, size & 0xffff);
> > +		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
> > +		      REG_FIELD_GET(PF_WIN_YPOS_MASK, pos),
> > +		      REG_FIELD_GET(PF_WIN_XSIZE_MASK, size),
> > +		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
> >  
> >  	/*
> >  	 * We currently do not free assignements of panel fitters on
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 3c02f6c70733..75e1f30adda1 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4020,8 +4020,16 @@
> >  #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
> >  #define _PFA_WIN_SZ		0x68074
> >  #define _PFB_WIN_SZ		0x68874
> > +#define   PF_WIN_XSIZE_MASK	REG_GENMASK(28, 16)
> > +#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
> > +#define   PF_WIN_YSIZE_MASK	REG_GENMASK(11, 0)
> > +#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
> >  #define _PFA_WIN_POS		0x68070
> >  #define _PFB_WIN_POS		0x68870
> > +#define   PF_WIN_XPOS_MASK	REG_GENMASK(28, 16)
> > +#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
> > +#define   PF_WIN_YPOS_MASK	REG_GENMASK(11, 0)
> > +#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
> >  #define _PFA_VSCALE		0x68084
> >  #define _PFB_VSCALE		0x68884
> >  #define _PFA_HSCALE		0x68090
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
