Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691039963BF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 10:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E0B10E69B;
	Wed,  9 Oct 2024 08:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mU4JaaVX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C822010E69C;
 Wed,  9 Oct 2024 08:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728463835; x=1759999835;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iUK84Q1K6qanBk/T4VrR9DSXGRAGCCc0G626pfF9nFc=;
 b=mU4JaaVXXwuWIyRfa3Cw3ZUM3kMaFdIJm7wnueAamjs38cCJSkZTltHs
 Q1ebdwfwoeWT7mUh7pv7/7iSK7x5b8WP2dU8W8RKcW7lP2RfsbdUGsSWg
 akWrKQGR7Z/Maggm+xDsMXAxQvuZX19jLwAvYdSRdW+E6jAQ3JwbkHASZ
 Q187hj9S/wCasVzVSoqQYXolrJorz4GnpW+9hbS2PSEwPS27xhB7+LP/O
 cpxdYJGgJgLXYyIMePH+h3tnxYPRBYjWlm2bS4XECu3JlPvohQgOquIum
 1N8MwTUGVMX3t23HVRD2ZSzFafRuJ61FIcwVfQlm6gUL/5VNeXdHOCJi9 w==;
X-CSE-ConnectionGUID: qQCGC8M+TgucIDa5LGqTrA==
X-CSE-MsgGUID: ysZxcr6gS5WVWWoLaM6wuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31639379"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31639379"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 01:50:34 -0700
X-CSE-ConnectionGUID: PCWT1Yi8SvW3EKi3LP4UKA==
X-CSE-MsgGUID: RjpvJM96Sz+S6WZfxJtKFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76282828"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 01:50:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 11:50:30 +0300
Date: Wed, 9 Oct 2024 11:50:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/color: Use correct variable to load lut
Message-ID: <ZwZD1qYnJn7Hnvtu@intel.com>
References: <20241009063753.1799234-2-suraj.kandpal@intel.com>
 <ZwYoymdhNQAh42UQ@intel.com>
 <SN7PR11MB6750FEEFACE7052E8FA88077E37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB6750FEEFACE7052E8FA88077E37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
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

On Wed, Oct 09, 2024 at 08:46:20AM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, October 9, 2024 12:25 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shankar,
> > Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>
> > Subject: Re: [PATCH] drm/i915/color: Use correct variable to load lut
> > 
> > On Wed, Oct 09, 2024 at 12:07:53PM +0530, Suraj Kandpal wrote:
> > > Use the blob variable instead of post_csc_lut as it may end up being
> > > null.
> > 
> > Not possible. We always have a LUT for each half in split gamma mode, and
> > if we don't then someone screwed up much earlier before we end up here.
> > 
> 
> If that is the case then the code line
> const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
> wouldn't be needed but it has been added  presumably because there are times

That is for the non-split gamma cases.

> that we reach here with post csc as null and in that case we at least make sure we are
> loading the correct lut hence the fix.

post_csc_lut is the correct one to load here. Trying to load
the pre_csc_lut twice is just complete nonsense. And if
post_csc_lut could somehow be NULL so could pre_csc_lut.

> 
> Regards,
> Suraj Kandpal
> 
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > > b/drivers/gpu/drm/i915/display/intel_color.c
> > > index caf1af039960..22b7090c4f6f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > @@ -1503,7 +1503,7 @@ static void ivb_load_luts(const struct
> > intel_crtc_state *crtc_state)
> > >  		ivb_load_lut_10(crtc_state, pre_csc_lut,
> > PAL_PREC_SPLIT_MODE |
> > >  				PAL_PREC_INDEX_VALUE(0));
> > >  		ivb_load_lut_ext_max(crtc_state);
> > > -		ivb_load_lut_10(crtc_state, post_csc_lut,
> > PAL_PREC_SPLIT_MODE |
> > > +		ivb_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> > >  				PAL_PREC_INDEX_VALUE(512));
> > >  		break;
> > >  	case GAMMA_MODE_MODE_10BIT:
> > > @@ -1531,7 +1531,7 @@ static void bdw_load_luts(const struct
> > intel_crtc_state *crtc_state)
> > >  		bdw_load_lut_10(crtc_state, pre_csc_lut,
> > PAL_PREC_SPLIT_MODE |
> > >  				PAL_PREC_INDEX_VALUE(0));
> > >  		ivb_load_lut_ext_max(crtc_state);
> > > -		bdw_load_lut_10(crtc_state, post_csc_lut,
> > PAL_PREC_SPLIT_MODE |
> > > +		bdw_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> > >  				PAL_PREC_INDEX_VALUE(512));
> > >  		break;
> > >  	case GAMMA_MODE_MODE_10BIT:
> > > --
> > > 2.43.2
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
