Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE676B1484
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 22:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D4310E721;
	Wed,  8 Mar 2023 21:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4BF10E721
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 21:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678312451; x=1709848451;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lQa2Bi/vY29PU3aiJ2bkjJwgyOolxTqZXn2kOHG0ld4=;
 b=hftGH/Ybv3Cl6zWZflnneBFaUpQlWxkM0UBshTdPiU+n9SOHVdZ9/jB1
 K46c6klesfxeaZjhT61yyBQBjmGAplM8FmILIKF7NbwhgmZE/Lb4DaXjX
 GyGu3F5Yg+W9Z0GcnyDKbFf0ACsxQGy37/9mmdtHDPGIfBDuSmz7nWJSK
 q4Xn4o4FHfWxlwbyMPiQBClDzwIKovC3YdpHIyarySxvrZjYYvDxDWIL6
 OZj6bRNEo2/QME+GcnwUjYwzOozkusHKpdKXKfME96ip/SkO8b7Kc5Bss
 2kMDpQXCNOMbB2aVFvhA9viNdh0+/rpbMD0Dh9/RlSDbR1u8ucdL16rIX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="333754562"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="333754562"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677147907"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="677147907"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2023 13:53:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 23:53:54 +0200
Date: Wed, 8 Mar 2023 23:53:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZAkD8vJTr3J2DSE7@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <20230308165859.235520-2-rodrigo.vivi@intel.com>
 <ZAjK4yVlIV3Wwi8b@intel.com> <ZAjMTAnKPG1NQG8+@intel.com>
 <ZAjRjK57OQV4rFAo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAjRjK57OQV4rFAo@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/i9xx_wm: Prefer intel_de
 functions over intel_uncore.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 08:18:52PM +0200, Ville Syrjälä wrote:
> On Wed, Mar 08, 2023 at 12:56:28PM -0500, Rodrigo Vivi wrote:
> > On Wed, Mar 08, 2023 at 07:50:27PM +0200, Ville Syrjälä wrote:
> > > On Wed, Mar 08, 2023 at 11:58:59AM -0500, Rodrigo Vivi wrote:
> > > >  	} else if (IS_I915GM(dev_priv)) {
> > > >  		/*
> > > >  		 * FIXME can't find a bit like this for 915G, and
> > > >  		 * yet it does have the related watermark in
> > > >  		 * FW_BLC_SELF. What's going on?
> > > >  		 */
> > > > -		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
> > > > +		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
> > > >  		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
> > > >  			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
> > > > -		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
> > > > -		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
> > > > +		intel_de_write(dev_priv, INSTPM, val);
> > > > +		intel_de_posting_read(dev_priv, INSTPM);
> > > 
> > > I'm still not really convinced that we want to
> > > use intel_de_*() for non-display registers.
> > 
> > hmmm... I see...
> > so should we create a new component out of i915/display and move
> > these calls there?
> > 
> > but in the end of the day it is the same uncore functions that
> > are getting calling underneath anyway, right?!
> 
> Currently yes. Though I have occasionally thought about
> splitting it up lower down, since no display registers need
> forcewake, and IIRC the RM unclaimed stuff only really works
> for display registers. So we could perhaps lighten each
> side a bit by knowing ahead of time what kind of register
> we're dealing with.
> 
> > 
> > I believe i915/display should only call intel_de for mmio, so it
> > gets easier on the code reuse on Xe.
> 
> Yeah, I get idea. However I think it might also be nice 
> to check that we are not touching registers that we're
> not supposed to touch from the display code. So having
> intel_de*() validate the register offset might be nice.
> Would be especially important if we did do the lower
> level register accessor split.
> 
> Though admittedly on these old platforms that valiation
> is perhaps a bit moot since the display vs. not split
> is far from clear, and even the truly dedicated display
> registers can live at rather weird offsets.

I guess we can always backpedal a bit if we do decide
to do those things. There shouldn't be that many non-display
registers in the mix anyway.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
