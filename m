Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A305BD542
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 21:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC2410E0E3;
	Mon, 19 Sep 2022 19:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230D110E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 19:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663616329; x=1695152329;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DgA5BndZxMe4QbB6lDVMzaINNdUDLZa9FqH8Bsx2IyI=;
 b=aXvcHdSdZKfTLEs+NVQEh28s2M/bTr+C6u7esBJVm3wR/f+SailhVQRe
 +9QEum9fjO70KKC9MRV6B+VviiCDMxTIzt4th9rpA5inZoHELD5DKkvsA
 Cmt/xoK8HiZr/ju7bYoCqt5yeKoMlX7OTe+BIJ9MpfId2u1XF26WGF+8r
 7L/4SOxLafXu/mgUQoOCvefbOCXb2DJOYrgA2wk/6CH27ax3AwZBMJCtE
 RK6irUjTUqe6uvrd2kN054fOFnd7ssR2LStwXvBERryLbGbWY+czor1pa
 2GVxwIH3PPZplL1WJzcqV7UN8sZ7PoZN0kjIWXXV4h041rPTjMKaN3jrJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="325798675"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="325798675"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:38:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="707693079"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:38:48 -0700
Date: Mon, 19 Sep 2022 12:39:09 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220919193909.GB1061080@mdnavare-mobl1.jf.intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-4-anusha.srivatsa@intel.com>
 <87v8pjpvc4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v8pjpvc4.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new struct
 steps for squashing
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

On Mon, Sep 19, 2022 at 12:27:55PM +0300, Jani Nikula wrote:
> On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Populate the new struct steps for squash case.
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 220d32adbd12..d2e81134b6f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1973,8 +1973,9 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  
> >  static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> >  				   const struct intel_cdclk_config *a,
> > -				   const struct intel_cdclk_config *b)
> > +				   struct intel_cdclk_config *b)
> 
> Why are you dropping const?
> 
> >  {
> > +	struct cdclk_step *cdclk_transition = b->steps;
> 
> The type name has step, the array is named steps, why is the variable
> "transition"?

Yes I agree that the name cdclk_tranistion is confusing rather having
cdclk_transition is unnecessary.
Why cant you directly access b->steps->action, b->steps->cdclk


Manasi

> 
> >  	/*
> >  	 * FIXME should store a bit more state in intel_cdclk_config
> >  	 * to differentiate squasher vs. cd2x divider properly. For
> > @@ -1984,6 +1985,12 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
> >  	if (!has_cdclk_squasher(dev_priv))
> >  		return false;
> >  
> > +	if (a->cdclk != b->cdclk && a->vco != 0 &&
> > +	    a->vco == b->vco &&	a->ref == b->ref) {
> > +		cdclk_transition->action = CDCLK_SQUASH_ONLY;
> > +		cdclk_transition->cdclk = b->cdclk;
> > +	}
> > +
> >  	return a->cdclk != b->cdclk &&
> >  		a->vco != 0 &&
> >  		a->vco == b->vco &&
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
