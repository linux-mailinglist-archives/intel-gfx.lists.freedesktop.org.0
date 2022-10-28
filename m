Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54700610A57
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 08:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5879F10E793;
	Fri, 28 Oct 2022 06:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA66010E785
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 06:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666938666; x=1698474666;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ywIU9G5DKmKLVKXlgVy+coYd1zIUDViJuECnr429V/k=;
 b=DjGE4/Kabai5+eC489fWaX/XJV2kVs4L5qpXUVyNAT4/EPomiKK+w9sb
 u4EIMpCIaglGfCeZVOMSmGj/gc3uXqvJUuFgWz9M31XDVChwEeSMzu6e5
 LHIB+mrs9MaxuijKHTE/cLRkyS8uQmoUjwjVM0lTEYdjz29LFsvpV/K+I
 IA/70kn0PVv2edx5wfs6N49/uZRxaIvsgZqgmNm2Ig91ILneqKOb4pH3n
 OvpkpWPFBucrAt3pcYZoMW19uELcV65KF0ExJTA8pD4N5oRHv0pTuE1mN
 91Pu0k+WuTXcZk+7cAgHZKgozQsGKZ1a43XjzcGuIhWdhg88Ia0u001Ng g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335061666"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335061666"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 23:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="635192435"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="635192435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 27 Oct 2022 23:31:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Oct 2022 09:31:03 +0300
Date: Fri, 28 Oct 2022 09:31:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Y1t3J2vIoiaPhYuR@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> Gentle Reminder!

Is the igt stuff merged, and did this pass the test?

> 
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Monday, October 10, 2022 1:24 PM
> > To: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>
> > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > 
> > Ville,
> > 	Gentle reminder!
> > 
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > 
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Monday, September 19, 2022 10:38 AM
> > > To: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>
> > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > >
> > > If no comments, can anyone merge the patch!
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > gfx@lists.freedesktop.org
> > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > buffers
> > > >
> > > > Gentle Reminder!
> > > > Any comments?
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Murthy, Arun R
> > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > > > Linear buffers
> > > > >
> > > > > Gentle Reminder!
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > <arun.r.murthy@intel.com>
> > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > buffers
> > > > > >
> > > > > > Starting from Gen12 Async Flip is supported on linear buffers.
> > > > > > This patch enables support for async on linear buffer.
> > > > > >
> > > > > > UseCase: In Hybrid graphics, for hardware unsupported pixel
> > > > > > formats it will be converted to linear memory and then composed.
> > > > > >
> > > > > > v2: Added use case
> > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > >
> > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > ++++++++++++++
> > > > > >  1 file changed, 14 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
> > > > > >  		 * this selectively if required.
> > > > > >  		 */
> > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > +			/*
> > > > > > +			 * FIXME: Async on Linear buffer is supported
> > on ICL
> > > > > > as
> > > > > > +			 * but with additional alignment and fbc
> > restrictions
> > > > > > +			 * need to be taken care of. These aren't
> > applicable
> > > > > > for
> > > > > > +			 * gen12+.
> > > > > > +			 */
> > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > +					"[PLANE:%d:%s] Modifier
> > does not
> > > > > > support async flips\n",
> > > > > > +					plane->base.base.id, plane-
> > > > > > >base.name);
> > > > > > +				return -EINVAL;
> > > > > > +			}
> > > > > > +
> > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > --
> > > > > > 2.25.1

-- 
Ville Syrjälä
Intel
