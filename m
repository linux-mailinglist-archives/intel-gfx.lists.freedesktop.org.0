Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA73190E96B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 13:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E19E10EC48;
	Wed, 19 Jun 2024 11:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M52EwLKZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AED310EC48
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 11:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718796545; x=1750332545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QiCsBE1fkCkCzNqqlGKBhb8jSTUnMo5BCRcqsjwcPIk=;
 b=M52EwLKZ1iUGIry+Rhob4ADFIXNuOSyq88vHOeY3Y6hGl5nbG/AJdWu5
 rWVueGwnvqA8UM2kPsPffXLCEjg+Q+GDw7zE6ZAGdS2dUtHEarxPJ5iMD
 /3QMc2zqVH32gD/gqjLiUqAXg7ayWukfmPoz5vwQwYyAnC2rqD5rfSFzD
 +wTBVCpB2bKLh74pPPgv0xUsN4lxzFVexXSPlCEyVgjvxx+xLEA+irhb+
 sbJFiDhDqUYS7BsiuauYG126gfiSxK/dsuWoG/N1+/pmKd/VICMA61V3D
 iiVUzAJH0KyhSQUgJulTFLsTZtQTE3PeOeQmcsQEDLdbE3mjvoyv0nj3B w==;
X-CSE-ConnectionGUID: UOCERAO1S2uECSNkpA2rFA==
X-CSE-MsgGUID: +1eAuHqAT0ip3nlGNswRuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15875007"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15875007"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 04:29:05 -0700
X-CSE-ConnectionGUID: zJb3GIf1S+KfoxoDrtC4sg==
X-CSE-MsgGUID: QhqvaVjjSmaLPfHulNLYlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41845316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Jun 2024 04:29:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2024 14:29:01 +0300
Date: Wed, 19 Jun 2024 14:29:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
Message-ID: <ZnLA_a8zAukixdI-@intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-9-ville.syrjala@linux.intel.com>
 <875xu6h5kj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875xu6h5kj.fsf@intel.com>
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

On Tue, Jun 18, 2024 at 02:07:56PM +0300, Jani Nikula wrote:
> On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > As we extend the use of DSB for critical pipe/plane register
> > programming, it'll be nice to have an escape valve at hand,
> > in case things go very poorly. To that end, add a i915.enable_dsb
> > modparam by which we can force the driver to take the pure mmio
> > path instead.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
> >  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
> >  drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
> >  3 files changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> > index aebdb7b59dbf..449a31767791 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > @@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
> >  intel_display_param_named_unsafe(enable_dpt, bool, 0400,
> >  	"Enable display page table (DPT) (default: true)");
> >  
> > +intel_display_param_named_unsafe(enable_dsb, bool, 0600,
> > +	"Enable display state buffer (DSB) (default: true)");
> 
> Not much point in leaving the module param 0600, is there?

It'll let you try both dsb and mmio paths at runtime without
having to do a full reboot/reload.

> 
> BR,
> Jani.
> 
> > +
> >  intel_display_param_named_unsafe(enable_sagv, bool, 0400,
> >  	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> > index 1208a62c16d2..48c29c55c939 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> > @@ -31,6 +31,7 @@ struct drm_i915_private;
> >  	param(int, vbt_sdvo_panel_type, -1, 0400) \
> >  	param(int, enable_dc, -1, 0400) \
> >  	param(bool, enable_dpt, true, 0400) \
> > +	param(bool, enable_dsb, true, 0600) \
> >  	param(bool, enable_sagv, true, 0600) \
> >  	param(int, disable_power_well, -1, 0400) \
> >  	param(bool, enable_ips, true, 0600) \
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index bee48ac419ce..2ab3765f6c06 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -460,6 +460,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
> >  	if (!HAS_DSB(i915))
> >  		return NULL;
> >  
> > +	if (!i915->display.params.enable_dsb)
> > +		return NULL;
> > +
> >  	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
> >  	if (!IS_ENABLED(I915))
> >  		return NULL;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
