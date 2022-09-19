Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE515BD53A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 21:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8479589190;
	Mon, 19 Sep 2022 19:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3101610E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663615958; x=1695151958;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YK4Gz0G7dNjqALSoa4jVL5r9N3tJ7co9MvZbgOfBsHk=;
 b=Q7t1A8eE6xJ0zc6ZXFe4iiJLjipIxPWsTNaBT42sFgIddwdAlTz5tp/n
 /aYmvqRoNAvsJR+t9Gy+dI8OSa4BstJQY7TT2XRdBiFAGkDupS1DHDhuu
 J1FHf/fv1pcO1vCkFZ4HaxrGOJQ2vWvwx131fREyQzrw3ByfuH43Bj26N
 JJDG5pQ9H5e7yd2ToV3Dnh4nAstP60yqKKaqBseRWX54kQBduueAVAx6D
 TNLK5hRppaMpYduL17bKGrzb2GD8u/rJ94shJNd0HCeeHasbEF7Lfo3HF
 00OwdWMCxNOqcAjyknESbC3K4qQqqKdB8XzaEG1QKC2uxUrKS7C6Gg1Xt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300879182"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="300879182"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:32:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="722433359"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:32:36 -0700
Date: Mon, 19 Sep 2022 12:32:57 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220919193257.GA1061080@mdnavare-mobl1.jf.intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-3-anusha.srivatsa@intel.com>
 <87y1ufpves.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y1ufpves.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action
 struct to cdclk_config
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

On Mon, Sep 19, 2022 at 12:26:19PM +0300, Jani Nikula wrote:
> On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > The struct has the action to be performed - squash, crawl
> > or modeset and the corresponding cdclk which is the desired
> > cdclk. This is the structure that gets populated during
> > atomic check once it is determined what the cdclk change looks
> > like
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index c674879a84a5..3869f93e8ad2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -11,13 +11,27 @@
> >  #include "intel_display.h"
> >  #include "intel_global_state.h"
> >  
> > +#define	MAX_CDCLK_ACTIONS	1
> 
> Okay, this review is just nitpicks, but they'll need to get fixed
> eventually so here goes.
> 
> No tab after #define.
> 
> > +
> >  struct drm_i915_private;
> >  struct intel_atomic_state;
> >  struct intel_crtc_state;
> >  
> > +enum cdclk_sequence {
> 
> Needs to be named intel_ something.

Agree here

> 
> > +	CDCLK_INVALID_ACTION = -1,
> > +
> > +	CDCLK_SQUASH_ONLY = 0,
> > +	CDCLK_CRAWL_ONLY,
> > +	CDCLK_LEGACY,
> > +};
> > +
> >  struct intel_cdclk_config {
> >  	unsigned int cdclk, vco, ref, bypass;
> >  	u8 voltage_level;
> > +	struct cdclk_step {
> 
> Needs to be named intel_ something.
> 
> Since this is used independently, I'd prefer it to be defined outside of
> struct intel_cdclk_config.

I think the point of having it as part of intel_cdclk_config is that
because we already pass cdclk_config to set_cdclk where these actions
are going to get used.

Manasi

> 
> > +		enum cdclk_sequence action;
> > +		u32 cdclk;
> > +	} steps[MAX_CDCLK_ACTIONS];
> >  };
> >  
> >  struct intel_cdclk_state {
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
