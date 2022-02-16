Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D86E4B854D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 11:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501AD10EA2C;
	Wed, 16 Feb 2022 10:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E85610E9B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 10:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645006492; x=1676542492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=I5B8ZhyMQFkVoPO1Kev4hJ2c8jifq08at+eB1Q1Zt98=;
 b=lehpNpqEOKScTGru6422rvhUUZM8A0oDhmBrGYHD6ICGiD3Hvm0Bn3mI
 DH+teEuX/EnQvFxD0ndtZ0HyDchK2pspROJ+Tn9VrnGTkvuhLPKngo9+o
 TKgUmNF4XU1re/B5sJNEFcG0U9bR6rPyNfI6Bk+TN9fsPUsNJFth4yVrY
 Ds8rDHCiM2ZkNrRkzNmV8sl0gCMGfwfYC0YdrSq0nWpKfr4jbDGipULVG
 L1g3y7Ap+rj/7AsPINf0BNmPflB+OB1MNMMq6doSgvu7WWmpvwTaYBYiA
 8RyzfiFI0lcoJJLV94rvKpeRteLtmn6bQag47EOJ1h6KxBfZ5zKxkGZSO g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237977159"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="237977159"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 02:09:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="529380411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 16 Feb 2022 02:09:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 12:09:54 +0200
Date: Wed, 16 Feb 2022 12:09:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YgzNchcUFOMZNxFe@intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-6-ville.syrjala@linux.intel.com>
 <87y22b3znr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y22b3znr.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Remove gen6_check_mch_setup()
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

On Wed, Feb 16, 2022 at 11:54:00AM +0200, Jani Nikula wrote:
> On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > snb_wm_latency_quirk() already boosts up the latency values
> > so the extra warning about the SSKPD value being insufficient
> > is now redundant. Drop it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I just might not understand what's going on...
> 
> ...but snb_wm_latency_quirk() is only called for display 6, not for ivb
> where the check is also removed?

Hmm. Not sure this was ever an issue on IVB. I think the BIOSen
might have gotten all fixed by that time. Not sure. I guess we can
keep this for now. And maybe I should just rewrite to look at the
parsed latency values instead...

> 
> BR,
> Jani.
> 
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 15 ---------------
> >  1 file changed, 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 0fa3dce9bd54..34e46a9b8300 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -7432,17 +7432,6 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
> >  	}
> >  }
> >  
> > -static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
> > -{
> > -	u32 tmp;
> > -
> > -	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
> > -	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL)
> > -		drm_dbg_kms(&dev_priv->drm,
> > -			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
> > -			    tmp);
> > -}
> > -
> >  static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
> >  {
> >  	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> > @@ -7500,8 +7489,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
> >  	g4x_disable_trickle_feed(dev_priv);
> >  
> >  	cpt_init_clock_gating(dev_priv);
> > -
> > -	gen6_check_mch_setup(dev_priv);
> >  }
> >  
> >  static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
> > @@ -7853,8 +7840,6 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
> >  
> >  	if (!HAS_PCH_NOP(dev_priv))
> >  		cpt_init_clock_gating(dev_priv);
> > -
> > -	gen6_check_mch_setup(dev_priv);
> >  }
> >  
> >  static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
