Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EFF6B10E2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 19:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACA810E6DE;
	Wed,  8 Mar 2023 18:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B41E10E6DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 18:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678299536; x=1709835536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aiI7T0Mee7UVhIBfpmUCrNdzAW/bry/wkQyqmfJjimE=;
 b=Sbxr0LYIKVUo5s4KircD72iBXmdSpz0Mdo3jKnzsQwj3/ohIMeg5nLUH
 64P792PL3BpJSE+brCLQVPqtuyyE8s7IC2yk+awDrD0rtfijYHYeuB2UZ
 hzIHmotgsMLd9O4XbyN8y9IV3sDn+iNkd2rwjz1OdcrVmElA/pM3jq4aL
 8ZZXLPPBDQxYLe0gq3G6t5cMHQSNx3X60CSqhv6oTJs8IM5KHNoRIJ/Yv
 sxof3NNrlrTa9PlBBIwhNzNu0hUqi6c714kILir0ceiWZIXv0BQtkhWIY
 hhZzXU+VhDjpuJ1pLAAZfL6tErePuR9iEKsRzbHWPLOVJSDBSTtKLbPl9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="320066622"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="320066622"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 10:18:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="670432164"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="670432164"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 08 Mar 2023 10:18:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 20:18:52 +0200
Date: Wed, 8 Mar 2023 20:18:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZAjRjK57OQV4rFAo@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <20230308165859.235520-2-rodrigo.vivi@intel.com>
 <ZAjK4yVlIV3Wwi8b@intel.com> <ZAjMTAnKPG1NQG8+@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAjMTAnKPG1NQG8+@intel.com>
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

On Wed, Mar 08, 2023 at 12:56:28PM -0500, Rodrigo Vivi wrote:
> On Wed, Mar 08, 2023 at 07:50:27PM +0200, Ville Syrjälä wrote:
> > On Wed, Mar 08, 2023 at 11:58:59AM -0500, Rodrigo Vivi wrote:
> > >  	} else if (IS_I915GM(dev_priv)) {
> > >  		/*
> > >  		 * FIXME can't find a bit like this for 915G, and
> > >  		 * yet it does have the related watermark in
> > >  		 * FW_BLC_SELF. What's going on?
> > >  		 */
> > > -		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
> > > +		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
> > >  		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
> > >  			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
> > > -		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
> > > -		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
> > > +		intel_de_write(dev_priv, INSTPM, val);
> > > +		intel_de_posting_read(dev_priv, INSTPM);
> > 
> > I'm still not really convinced that we want to
> > use intel_de_*() for non-display registers.
> 
> hmmm... I see...
> so should we create a new component out of i915/display and move
> these calls there?
> 
> but in the end of the day it is the same uncore functions that
> are getting calling underneath anyway, right?!

Currently yes. Though I have occasionally thought about
splitting it up lower down, since no display registers need
forcewake, and IIRC the RM unclaimed stuff only really works
for display registers. So we could perhaps lighten each
side a bit by knowing ahead of time what kind of register
we're dealing with.

> 
> I believe i915/display should only call intel_de for mmio, so it
> gets easier on the code reuse on Xe.

Yeah, I get idea. However I think it might also be nice 
to check that we are not touching registers that we're
not supposed to touch from the display code. So having
intel_de*() validate the register offset might be nice.
Would be especially important if we did do the lower
level register accessor split.

Though admittedly on these old platforms that valiation
is perhaps a bit moot since the display vs. not split
is far from clear, and even the truly dedicated display
registers can live at rather weird offsets.

-- 
Ville Syrjälä
Intel
