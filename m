Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 193D96878BA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 10:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30B110E4AE;
	Thu,  2 Feb 2023 09:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E4F10E4AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675329862; x=1706865862;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T6aMLO0uwNJn8Qg+dsdBW9cEEEx9gfmXzgou+3zlWgA=;
 b=Z9egJNXzvwUva/uuLNHmyq6SykAhvdDegDgxjzVR6fbaEqe3/96T8U4g
 8c1DB6igskvRaA3iI8IiJeDnRHQkJVydH4jdJlS74A0LDmMzco4oR/3Su
 Rr3r0Jyowvth9sCF85SNjL+PaS/3F/vY39/VqUcUtLgwK3q/fbH4UUIsk
 jeYtFqEfU8TydzXFI+EewGotQxM65scGf/o7WC+c494vmvuVR4VZxCnQE
 0EPJ7Bb4Qm0HYx9DZlhBMDSbZOFbp/qZJSrn4Qaw0hlZJ/gdWvMvP3hE2
 xO8IOIv5E/Jb+a/mCD9ePGPskvgLPt10eZJDrEj7kZVEDdPP8pvWuHY5e g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316397609"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316397609"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:24:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="807906057"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="807906057"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga001.fm.intel.com with SMTP; 02 Feb 2023 01:24:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Feb 2023 11:24:18 +0200
Date: Thu, 2 Feb 2023 11:24:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Y9uBQoHTkp1HZTQa@intel.com>
References: <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31770BE42F08018A83ABF749BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB31770BE42F08018A83ABF749BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
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

On Thu, Feb 02, 2023 at 06:51:49AM +0000, Murthy, Arun R wrote:
> Gentle Reminder!
> The patch is pending since a long time.

Please review the igt changes here:
https://patchwork.freedesktop.org/series/113525/
then we can actually test this (and any other new 
modifier in the future).

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> 
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Monday, January 23, 2023 12:14 PM
> > To: 'Ville Syrjälä' <ville.syrjala@linux.intel.com>
> > Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>;
> > Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> > buffers
> > 
> > Any review comments on this. Gentle Reminder!
> > 
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > 
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Tuesday, January 17, 2023 2:09 PM
> > > To: 'Ville Syrjälä' <ville.syrjala@linux.intel.com>
> > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>;
> > > Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > Linear buffers
> > >
> > > Gentle Reminder!
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > -------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Friday, January 13, 2023 12:57 PM
> > > > To: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > > > <ville.syrjala@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > > Linear buffers
> > > >
> > > > > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > > > > > Gentle Reminder!
> > > > >
> > > > > Is the igt stuff merged, and did this pass the test?
> > > > >
> > > > With IGT alone the tests will fail without the kernel patch.
> > > > The
> > > > tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/shard
> > > > s-
> > > > all.html?testfilter=kms_async_flips) are passing with IGT and kernel
> > patch.
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Murthy, Arun R
> > > > > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > > buffers
> > > > > > >
> > > > > > > Ville,
> > > > > > > 	Gentle reminder!
> > > > > > >
> > > > > > > Thanks and Regards,
> > > > > > > Arun R Murthy
> > > > > > > --------------------
> > > > > > >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Murthy, Arun R
> > > > > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > Linear buffers
> > > > > > > >
> > > > > > > > If no comments, can anyone merge the patch!
> > > > > > > >
> > > > > > > > Thanks and Regards,
> > > > > > > > Arun R Murthy
> > > > > > > > --------------------
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Murthy, Arun R
> > > > > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > > > > gfx@lists.freedesktop.org
> > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > Linear buffers
> > > > > > > > >
> > > > > > > > > Gentle Reminder!
> > > > > > > > > Any comments?
> > > > > > > > >
> > > > > > > > > Thanks and Regards,
> > > > > > > > > Arun R Murthy
> > > > > > > > > --------------------
> > > > > > > > >
> > > > > > > > > > -----Original Message-----
> > > > > > > > > > From: Intel-gfx
> > > > > > > > > > <intel-gfx-bounces@lists.freedesktop.org>
> > > > > > > > > > On Behalf Of Murthy, Arun R
> > > > > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support
> > > > > > > > > > Async Flip on Linear buffers
> > > > > > > > > >
> > > > > > > > > > Gentle Reminder!
> > > > > > > > > >
> > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > > > Linear buffers
> > > > > > > > > > >
> > > > > > > > > > > Starting from Gen12 Async Flip is supported on linear buffers.
> > > > > > > > > > > This patch enables support for async on linear buffer.
> > > > > > > > > > >
> > > > > > > > > > > UseCase: In Hybrid graphics, for hardware unsupported
> > > > > > > > > > > pixel formats it will be converted to linear memory
> > > > > > > > > > > and then
> > > > composed.
> > > > > > > > > > >
> > > > > > > > > > > v2: Added use case
> > > > > > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > > > > > >
> > > > > > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > > > > > ---
> > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > > > > > ++++++++++++++
> > > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > > >
> > > > > > > > > > > diff --git
> > > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > > > > intel_async_flip_check_hw(struct intel_atomic_state
> > > > > > > > > > > *state, struct
> > > > > in
> > > > > > > > > > >  		 * this selectively if required.
> > > > > > > > > > >  		 */
> > > > > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > > > > +			/*
> > > > > > > > > > > +			 * FIXME: Async on Linear buffer is
> > supported
> > > > > > > on ICL
> > > > > > > > > > > as
> > > > > > > > > > > +			 * but with additional alignment and
> > fbc
> > > > > > > restrictions
> > > > > > > > > > > +			 * need to be taken care of. These
> > aren't
> > > > > > > applicable
> > > > > > > > > > > for
> > > > > > > > > > > +			 * gen12+.
> > > > > > > > > > > +			 */
> > > > > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > > > > +					"[PLANE:%d:%s]
> > Modifier
> > > > > > > does not
> > > > > > > > > > > support async flips\n",
> > > > > > > > > > > +					plane->base.base.id,
> > plane-
> > > > > > > > > > > >base.name);
> > > > > > > > > > > +				return -EINVAL;
> > > > > > > > > > > +			}
> > > > > > > > > > > +
> > > > > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > > > > --
> > > > > > > > > > > 2.25.1
> > > > >
> > > > > --
> > > > > Ville Syrjälä
> > > > > Intel

-- 
Ville Syrjälä
Intel
