Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4125E6C77
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 21:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D054510E1BE;
	Thu, 22 Sep 2022 19:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A33810E1BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 19:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663876675; x=1695412675;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SK4EfdRRq3aYupRWTUP4adH80agYWqpbE5kAem2fR5A=;
 b=SeWOfyY5j2UQwI0Am8uFoBVdway9q7b0jDIx2Q/6DGe87xTPWoCLI1OP
 LPfKir9AZ1cqCXiVm6q87t768y7biuMSLzk+iKbo/tf1s+vnAlT0QNHuR
 x8PRcsKn+hdYzRqpqGRT5uEyLvErfsdYO/FxC5ggfZvd/RsRzZqIFIzkR
 /5uWwDCFZ/zPmgHOBWwU3eYL1qDfQK8gONHTP22+jnbL1P5x3L4KfKxYu
 zz5vvZRR/vzavXixMN/Ut5TQkEKL6UO6lco9EK64mSgFGKYuV3eQ21d5N
 38bOy8syJ7cx/mUbnyvkIn8XpSRqztES7CwyVqa9bUJQir9kGvYQkUBVR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362219116"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362219116"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 12:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="619944018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Sep 2022 12:57:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 22:57:51 +0300
Date: Thu, 22 Sep 2022 22:57:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yyy+PxOrG2LFEx3G@intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-4-ville.syrjala@linux.intel.com>
 <878rmb5s4p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rmb5s4p.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Stop requiring PLL index ==
 PLL ID
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

On Thu, Sep 22, 2022 at 06:46:30PM +0300, Jani Nikula wrote:
> On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > There's no good reason to keep around this PLL index == PLL ID
> > footgun. Get rid of it.
> >
> > Both i915->shared_dplls[] and state->shared_dpll[] are indexed
> > by the same thing now, which is just the index we get at
> > initialization from dpll_mgr->dpll_info[]. The rest is all about
> > PLL IDs now.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 64 +++++++++++++------
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |  5 +-
> >  2 files changed, 47 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index f900c4c73cc6..fb09029cc4aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -110,7 +110,7 @@ static void
> >  intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
> >  				  struct intel_shared_dpll_state *shared_dpll)
> >  {
> > -	enum intel_dpll_id i;
> > +	int i;
> >  
> >  	/* Copy shared dpll state */
> >  	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
> > @@ -137,6 +137,13 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
> >  	return state->shared_dpll;
> >  }
> >  
> > +static int
> > +intel_shared_dpll_idx(struct drm_i915_private *i915,
> > +		      const struct intel_shared_dpll *pll)
> > +{
> > +	return pll - &i915->display.dpll.shared_dplls[0];
> > +}
> 
> I liked getting rid of this magic in the previous patch, and would not
> like to have it brought back!
> 
> I'm thinking
> 
> static int
> intel_shared_dpll_idx(struct drm_i915_private *i915, enum intel_dpll_id id)
> 
> which would loop over shared_dplls[] and return the index, similar to
> the function below. Feels more robust.

Dunno if it's more robust, but I guess it does decouple us
a bit more from the array storage of the actual plls. We
could even do this exactly like eg. drm_crtc, ie. introduce
pll->index for the atomic state indexing but could use a
linked list to keep the actual plls. Though that would
again mean more kmallocs() that can fail, so I don't think
I'll go quite that far, at least not yet. Though I suppose
I could introduce pll->index already...

-- 
Ville Syrjälä
Intel
