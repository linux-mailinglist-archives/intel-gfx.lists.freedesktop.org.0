Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E63195E675C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5BE10EC2E;
	Thu, 22 Sep 2022 15:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC8110EC2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861377; x=1695397377;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GJmuNx+aaFfq/jcy2piMPiy/p8wdGZ4V80fB9k/61rM=;
 b=LPx5rfZyfCdfAaOeOZERZiW2OBcdNubrdAYETkedDWvjZt00Ria8KhIM
 ndpF48FbF7zWmARDQ5sDM4vzfjx559IbfoMYveM9WmUlXy5ESdljP+Zs/
 yl9QCBck8mWUOWtl2v9vA61ULpfMRlgfTUq6Mo48LE3oO5usQUcZRmCqc
 t3OjPE8jYmQbTXm3IEp53U6MWa4r7DLtxEa7PtodI6S5wQEgEW093KcwE
 VR9UxLF7/HtuJc7sT3oehQ3Y+jtHJTJwE8AAOxhY2l4gfQZgSEmidHN40
 Wvm6QdsdqwhfO81or+JJ5vU0H3p+lM8o3DUm4idLS2+Jh3cbNZ4gXgqR4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="300319491"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="300319491"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="723714803"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 22 Sep 2022 08:42:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 18:42:41 +0300
Date: Thu, 22 Sep 2022 18:42:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YyyCca+HGirPDS5o@intel.com>
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
 <20220921211525.10675-4-ville.syrjala@linux.intel.com>
 <87mtar62py.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87mtar62py.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Pimp DPLL ref/unref debugs
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

On Thu, Sep 22, 2022 at 02:57:45PM +0300, Jani Nikula wrote:
> On Thu, 22 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We currently have a debug message in intel_reference_shared_dpll()
> > but no counterpart in intel_unreference_shared_dpll(). Add one.
> >
> > Switch to the [CRTC:...] notation for the pipe name while at it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index e5fb66a5dd02..c21818cb6fe2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -384,20 +384,25 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
> >  	if (shared_dpll[id].pipe_mask == 0)
> >  		shared_dpll[id].hw_state = *pll_state;
> >  
> > -	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
> > -		pipe_name(crtc->pipe));
> > -
> >  	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
> > +
> > +	drm_dbg(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
> > +		crtc->base.base.id, crtc->base.name, pll->info->name);
> 
> 
> drm_dbg_kms while at it?

I shall blame this on tab completion stopping mid-sentence.

> 
> >  }
> >  
> >  static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
> >  					  const struct intel_crtc *crtc,
> >  					  const struct intel_shared_dpll *pll)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_shared_dpll_state *shared_dpll;
> >  
> >  	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
> > +
> >  	shared_dpll[pll->info->id].pipe_mask &= ~BIT(crtc->pipe);
> > +
> > +	drm_dbg(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
> > +		crtc->base.base.id, crtc->base.name, pll->info->name);
> >  }
> >  
> >  static void intel_put_dpll(struct intel_atomic_state *state,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
