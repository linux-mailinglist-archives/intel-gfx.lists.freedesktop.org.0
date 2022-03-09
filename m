Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA514D3B2E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 21:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F02710E435;
	Wed,  9 Mar 2022 20:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0959D10E434
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 20:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646858162; x=1678394162;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FK9NNmoAGFTq2ihAR1KujEBks0jqcCloQFKN1uVBomo=;
 b=nTwcrxkm8ChDYrj8PWYbv7iQeVRALorwmUV7ND3lYWjUB5DGJcGSXb6Z
 Ft6eKLXIlCgMh7Hvy8gIc0fcAT+t8J0/mKg29uC6yqYrLLkrYFh2L7nLe
 EMarCYEty4qIxDayaplQZSxZG1jZ1HUtyjYOze8c/29ERIiJ6PNY5ti2A
 /Qe438OAQ7gOquIllS97XUkqmMUAG6/ojd0TTkQ9QqnUqFLe8bDFCIKS4
 aGeGXALAVrDebqG7KkVKPuOG7c9a0LPBHYObvNmOe2CYvC4sSxpsctIvN
 vhuJL3+XBbTjHLmKax0966Omi8C0IA0QHxdEOIh1tcDQ4JDKbzdwGgm6K Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255275589"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="255275589"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 12:35:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="547768557"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 09 Mar 2022 12:35:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 22:35:49 +0200
Date: Wed, 9 Mar 2022 22:35:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YikPpRpbmphJuenr@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-2-ville.syrjala@linux.intel.com>
 <20220309192958.GA9517@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309192958.GA9517@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: Treat SAGV block time 0 as
 SAGV disabled
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 09, 2022 at 09:29:58PM +0200, Lisovskiy, Stanislav wrote:
> On Wed, Mar 09, 2022 at 06:49:41PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > For modern platforms the spec explicitly states that a
> > SAGV block time of zero means that SAGV is not supported.
> > Let's extend that to all platforms. Supposedly there should
> > be no systems where this isn't true, and it'll allow us to:
> > - use the same code regardless of older vs. newer platform
> > - wm latencies already treat 0 as disabled, so this fits well
> >   with other related code
> > - make it a bit more clear when SAGV is used vs. not
> > - avoid overflows from adding U32_MAX with a u16 wm0 latency value
> >   which could cause us to miscalculate the SAGV watermarks on tgl+
> > 
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 8ee31c9590a7..40a3094e55ca 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3696,8 +3696,7 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
> >  		MISSING_CASE(DISPLAY_VER(dev_priv));
> >  	}
> >  
> > -	/* Default to an unusable block time */
> > -	dev_priv->sagv_block_time_us = -1;
> > +	dev_priv->sagv_block_time_us = 0;
> >  }
> >  
> >  /*
> > @@ -5644,7 +5643,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> >  	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
> >  	result->enable = true;
> >  
> > -	if (DISPLAY_VER(dev_priv) < 12)
> > +	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->sagv_block_time_us)
> >  		result->can_sagv = latency >= dev_priv->sagv_block_time_us;
> >  }
> >  
> > @@ -5677,7 +5676,10 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
> >  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> >  	struct skl_wm_level *sagv_wm = &plane_wm->sagv.wm0;
> >  	struct skl_wm_level *levels = plane_wm->wm;
> > -	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
> > +	unsigned int latency = 0;
> > +
> > +	if (dev_priv->sagv_block_time_us)
> > +		latency = dev_priv->sagv_block_time_us + dev_priv->wm.skl_latency[0];
> 
> Should we may be add this to intel_has_sagv? I thought this was supposed to tell,
> if SAGV is supported or not. Should we just call it hear as well, may be..
> Now we kinda making it less obvious. 

We already use intel_has_sagv() to see if we should zero out the
block time. I don't think I want to make it a full circle.

> 
> Stan
> 
> >  
> >  	skl_compute_plane_wm(crtc_state, plane, 0, latency,
> >  			     wm_params, &levels[0],
> > -- 
> > 2.34.1
> > 

-- 
Ville Syrjälä
Intel
