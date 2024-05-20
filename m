Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A048CA067
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 18:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D3C10E056;
	Mon, 20 May 2024 16:00:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBgvUwvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6200E10E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 16:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716220831; x=1747756831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6UGlQBkobdsTT0d/wcdoKIF/ZJ1qgK0sIOUGjZQtGfo=;
 b=fBgvUwvlPz30IO+uRcYJevPd0+ImvtM85Yp8zpSqzDIYPDFxYNCss6Kh
 CeYejUJheVbW0Vyyr063zmAZ0utP5Glw96NVbZbq+7D3atRF3qKLwIqpt
 ZKUkcSLralQZ1wwcyiZ0ON5ywkRN4vytL4lrsCsNT3Fb8kVi4np6mVntB
 Q6c5cu39gPbYNceQ8kO/Bbsi3RZ2T3xc6wd6mOoJn2bmn9TqTpfaHm+vh
 DhttC3XnTD5ioO1FVLpa+ROsQecqkXo+1RDUg0bSxq5BSbXon4JMPmhTZ
 XF6shWxLuiXmIvWjhThKRvFYNmMf1g1xHg+eyueXbcc3MWRDtHqGZGnAA A==;
X-CSE-ConnectionGUID: KkGDS6xDTsyJpg89pArpvw==
X-CSE-MsgGUID: BDjdvutwQnGpGom0iEqhXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12535610"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12535610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:00:30 -0700
X-CSE-ConnectionGUID: E6xemGU/RDufn17X3vK+tg==
X-CSE-MsgGUID: 3vffI4i6QW2Bcm19oS5VkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32569974"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 09:00:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 19:00:26 +0300
Date: Mon, 20 May 2024 19:00:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
Message-ID: <Zktzmthyfrxk7ACO@intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-3-ville.syrjala@linux.intel.com>
 <87h6esu5dl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h6esu5dl.fsf@intel.com>
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

On Mon, May 20, 2024 at 01:47:34PM +0300, Jani Nikula wrote:
> On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Extract a helper to check whether the source+sink combo
> > supports DSC. That basic check is needed both during mode
> > validation and compute config. We'll also need to add extra
> > checks to both places, so having a single place for it is nicer.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1e88449fe5f2..7bf283b4df7f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> >  	       connector->force_bigjoiner_enable;
> >  }
> >  
> > +static bool intel_dp_has_dsc(struct intel_connector *connector)
> 
> Why not const?

We've generally not consted these things. And then whenver add
one const somewhere it usually ends up getting in the way later,
not because we need mutability but simply because we want to
call something that doesn't have the const.

I suppose if we do want to start consting things more we should
just do some kind of bigger pass over the whole codebase so that
that there's less chance of pain later.

We're also not using container_of_const() for these right now,
so the const can vanish semi-accidentally when casting things.

I suppose this thing might be low level enough that the const
could be kept. I'll have another think about it.

> 
> > +{
> > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > +
> > +	if (!HAS_DSC(i915))
> > +		return false;
> > +
> > +	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  static enum drm_mode_status
> >  intel_dp_mode_valid(struct drm_connector *_connector,
> >  		    struct drm_display_mode *mode)
> > @@ -1274,8 +1287,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >  	mode_rate = intel_dp_link_required(target_clock,
> >  					   intel_dp_mode_min_output_bpp(connector, mode));
> >  
> > -	if (HAS_DSC(dev_priv) &&
> > -	    drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)) {
> > +	if (intel_dp_has_dsc(connector)) {
> >  		enum intel_output_format sink_format, output_format;
> >  		int pipe_bpp;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
