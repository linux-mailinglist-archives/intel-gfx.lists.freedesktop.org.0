Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9272DB4E4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 21:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6C889C84;
	Tue, 15 Dec 2020 20:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FF289C84
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 20:13:26 +0000 (UTC)
IronPort-SDR: N84m/4BuT4ClhLZQbB+nj9ROGD1PbAaujgd65lF39O0fbDFkcF3wuYE2yvrp2hW87F32gecRvj
 rJ7zxiV9uKUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162000804"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="162000804"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 12:13:21 -0800
IronPort-SDR: ClkLVAFKVHqh20AQz680yqR1cXwrl30n0jxL5B3jQYDF7hQ+RFPEzYcQ5V2oDaSdONTZ0JbxcG
 71MKMxfRXwiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="368432573"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 15 Dec 2020 12:13:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Dec 2020 22:13:16 +0200
Date: Tue, 15 Dec 2020 22:13:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andres Calderon Jaramillo <andrescj@google.com>
Message-ID: <X9kY3ONpq6T0Im0K@intel.com>
References: <20201214221934.2478240-1-andrescj@google.com>
 <9448bc8ea67a49d6a1ebf208824e5472@intel.com>
 <X9j5908SZDj2gJQQ@intel.com>
 <CAL7xsmN_sqEM30ccWrD66=veGkwJKxp+VTK9aSvZ7Qum+6=Hrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL7xsmN_sqEM30ccWrD66=veGkwJKxp+VTK9aSvZ7Qum+6=Hrw@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Prevent double YUV range
 correction on HDR planes
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
Cc: Andres Calderon Jaramillo <andrescj@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>, "Venkatesh Reddy,
 Sushma" <sushma.venkatesh.reddy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 15, 2020 at 03:06:30PM -0500, Andres Calderon Jaramillo wrote:
> On Tue, Dec 15, 2020 at 1:01 PM Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Mon, Dec 14, 2020 at 10:57:03PM +0000, Shankar, Uma wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: andrescj via sendgmr <andrescj@andrescj-cros-specialist.c.goo=
glers.com>
> > > > On Behalf Of Andres Calderon Jaramillo
> > > > Sent: Tuesday, December 15, 2020 3:50 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Venkatesh Reddy, Sushma
> > > > <sushma.venkatesh.reddy@intel.com>; seanpaul@chromium.org; Andres
> > > > Calderon Jaramillo <andrescj@chromium.org>
> > > > Subject: [PATCH] drm/i915/display: Prevent double YUV range correct=
ion on HDR
> > > > planes
> > > >
> > > > From: Andres Calderon Jaramillo <andrescj@chromium.org>
> > > >
> > > > Prevent the ICL HDR plane pipeline from performing YUV color range =
correction
> > > > twice when the input is in limited range.
> > > >
> > > > Before this patch the following could happen: user space gives us a=
 YUV buffer in
> > > > limited range; per the pipeline in [1], the plane would first go th=
rough a "YUV
> > > > Range correct" stage that expands the range; the plane would then g=
o through
> > > > the "Input CSC" stage which would also expand the range because
> > > > icl_program_input_csc() would use a matrix and an offset that assum=
e limited-
> > > > range input; this would ultimately cause dark and light colors to a=
ppear darker
> > > > and lighter than they should respectively.
> > > >
> > > > This is an issue because if a buffer switches between being scanned=
 out and
> > > > being composited with the GPU, the user will see a color difference.
> > > > If this switching happens quickly and frequently, the user will per=
ceive this as a
> > > > flickering.
> > > >
> > > > [1] https://01.org/sites/default/files/documentation/intel-gfx-prm-=
osrc-icllp-
> > > > vol12-displayengine_0.pdf#page=3D281
> > >
> > > Change looks good to me, double conversion should not be done.
> > > Plane input csc coefficients take care of the limited range.
> >
> > Might make sense to actually use the hw range correction instead.
> > Would avoid having to keep around two sets of coefficients.
> >
> > Also the question now becomes: How can our tests be passing if
> > we're doing the range correction twice?
> >
> =

> I also considered just removing the limited-range matrix/offsets from
> icl_program_input_csc(). However, I figured that since the "Input CSC"
> stage must happen regardless of range correction, maybe it would be a
> gain to disable the "YUV Range Correction" stage. However, I'm not
> familiar with the hardware details, so I don't know for sure. I don't
> feel strongly either way; let me know what you'd prefer.

IIRC we use the fixed function range compression + full range csc
approach on chv as well. Wouldn't hurt to do the same thing on
icl+ IMO.

> =

> I'm also curious about the testing. How do the tests work? I assume
> they are in Intel's CI and not open sourced? Do they use the DRM
> writeback connector (I didn't think this was implemented for i915
> yet)?

Tests are here:
git://anongit.freedesktop.org/xorg/app/intel-gpu-tools

In particular kms_plane/pixel-format tests should rather be failing I
think. Unless we've relaxed things a bit too much to get the crcs to
match when the results are close enough.

> =

> > >
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > >
> > > > Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 761be8deaa9b..aeea344b06ad 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -4811,6 +4811,13 @@ u32 glk_plane_color_ctl(const struct intel_c=
rtc_state
> > > > *crtc_state,
> > > >                     plane_color_ctl |=3D
> > > > PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> > > >     } else if (fb->format->is_yuv) {
> > > >             plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> > > > +
> > > > +           /*
> > > > +            * Disable the YUV range correction stage because the i=
nput CSC
> > > > +            * stage already takes care of range conversion by usin=
g separate
> > > > +            * matrices and offsets depending on the color range.
> > > > +            */
> > > > +           plane_color_ctl |=3D
> > > > PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> > > >     }
> > > >
> > > >     return plane_color_ctl;
> > > > --
> > > > 2.29.2.684.gfbc64c5ab5-goog
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
