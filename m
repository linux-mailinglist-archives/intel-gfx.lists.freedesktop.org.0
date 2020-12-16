Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A890B2DBF45
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8034E6E193;
	Wed, 16 Dec 2020 11:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC616E118
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:18:33 +0000 (UTC)
IronPort-SDR: Mw1n/7oJ4YoiwGtHAEyJDKkQEQfIPXXmT2zweHLAnb4xPVibqEfCzxvOjJ9GJ8pdT2kutPJH9A
 pQ1Y8ZqgeiLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="172475701"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="172475701"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:18:33 -0800
IronPort-SDR: SFBVpPbEQgq7DAgic5l+CFvcWx3rEAoAO44pV21EYSsbBmntdNYvAYglyX0qRW5tJfXZ4dU7LX
 /jRjOP7h7ing==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="333290974"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Dec 2020 03:18:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Dec 2020 13:18:29 +0200
Date: Wed, 16 Dec 2020 13:18:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andres Calderon Jaramillo <andrescj@google.com>
Message-ID: <X9ntBd0kC6SF0her@intel.com>
References: <20201214221934.2478240-1-andrescj@google.com>
 <9448bc8ea67a49d6a1ebf208824e5472@intel.com>
 <X9j5908SZDj2gJQQ@intel.com>
 <CAL7xsmN_sqEM30ccWrD66=veGkwJKxp+VTK9aSvZ7Qum+6=Hrw@mail.gmail.com>
 <X9kY3ONpq6T0Im0K@intel.com>
 <CAL7xsmPyFWmnr=JA8KCyf0ikBm35WLErteX-+O_ywV__2cmBRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL7xsmPyFWmnr=JA8KCyf0ikBm35WLErteX-+O_ywV__2cmBRQ@mail.gmail.com>
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

On Wed, Dec 16, 2020 at 01:46:58AM -0500, Andres Calderon Jaramillo wrote:
> On Tue, Dec 15, 2020 at 3:13 PM Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Dec 15, 2020 at 03:06:30PM -0500, Andres Calderon Jaramillo wro=
te:
> > > On Tue, Dec 15, 2020 at 1:01 PM Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > On Mon, Dec 14, 2020 at 10:57:03PM +0000, Shankar, Uma wrote:
> > > > >
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: andrescj via sendgmr <andrescj@andrescj-cros-specialist.c=
.googlers.com>
> > > > > > On Behalf Of Andres Calderon Jaramillo
> > > > > > Sent: Tuesday, December 15, 2020 3:50 AM
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Venkatesh Reddy, Sush=
ma
> > > > > > <sushma.venkatesh.reddy@intel.com>; seanpaul@chromium.org; Andr=
es
> > > > > > Calderon Jaramillo <andrescj@chromium.org>
> > > > > > Subject: [PATCH] drm/i915/display: Prevent double YUV range cor=
rection on HDR
> > > > > > planes
> > > > > >
> > > > > > From: Andres Calderon Jaramillo <andrescj@chromium.org>
> > > > > >
> > > > > > Prevent the ICL HDR plane pipeline from performing YUV color ra=
nge correction
> > > > > > twice when the input is in limited range.
> > > > > >
> > > > > > Before this patch the following could happen: user space gives =
us a YUV buffer in
> > > > > > limited range; per the pipeline in [1], the plane would first g=
o through a "YUV
> > > > > > Range correct" stage that expands the range; the plane would th=
en go through
> > > > > > the "Input CSC" stage which would also expand the range because
> > > > > > icl_program_input_csc() would use a matrix and an offset that a=
ssume limited-
> > > > > > range input; this would ultimately cause dark and light colors =
to appear darker
> > > > > > and lighter than they should respectively.
> > > > > >
> > > > > > This is an issue because if a buffer switches between being sca=
nned out and
> > > > > > being composited with the GPU, the user will see a color differ=
ence.
> > > > > > If this switching happens quickly and frequently, the user will=
 perceive this as a
> > > > > > flickering.
> > > > > >
> > > > > > [1] https://01.org/sites/default/files/documentation/intel-gfx-=
prm-osrc-icllp-
> > > > > > vol12-displayengine_0.pdf#page=3D281
> > > > >
> > > > > Change looks good to me, double conversion should not be done.
> > > > > Plane input csc coefficients take care of the limited range.
> > > >
> > > > Might make sense to actually use the hw range correction instead.
> > > > Would avoid having to keep around two sets of coefficients.
> > > >
> > > > Also the question now becomes: How can our tests be passing if
> > > > we're doing the range correction twice?
> > > >
> > >
> > > I also considered just removing the limited-range matrix/offsets from
> > > icl_program_input_csc(). However, I figured that since the "Input CSC"
> > > stage must happen regardless of range correction, maybe it would be a
> > > gain to disable the "YUV Range Correction" stage. However, I'm not
> > > familiar with the hardware details, so I don't know for sure. I don't
> > > feel strongly either way; let me know what you'd prefer.
> >
> > IIRC we use the fixed function range compression + full range csc
> > approach on chv as well. Wouldn't hurt to do the same thing on
> > icl+ IMO.
> =

> Sounds good! Thanks for the review.
> =

> >
> > >
> > > I'm also curious about the testing. How do the tests work? I assume
> > > they are in Intel's CI and not open sourced? Do they use the DRM
> > > writeback connector (I didn't think this was implemented for i915
> > > yet)?
> >
> > Tests are here:
> > git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> >
> > In particular kms_plane/pixel-format tests should rather be failing I
> > think. Unless we've relaxed things a bit too much to get the crcs to
> > match when the results are close enough.
> >
> =

> Nice. I took a look at the tests you referenced. It seems that we may
> have just gotten unlucky with the color choice, but I'm not sure why
> (I kind of expected to still get a color difference with the current
> colors).

Hmm. I guess we need to think a bit more about the colors used.

> I tried changing the color in [1] to {0.0f, 0.2f, 0.2f}, and
> I got "CRC mismatches" failures for multiple formats including NV12,
> C8, and YUYV. Interestingly, I had tried something like this multiple
> times, and I couldn't get the CRC mismatch at first. I don't know what
> changed. Maybe the mode was in a bad state and when I rebooted the
> device, it was good.
> =

> Note, with that color change and with this patch, I still get "CRC
> mismatches" failures but only for C8. I'm unfamiliar with that format,
> but it seems like a different problem.

We render the image as RGB332 for C8 so it can only have 2^3 or 2^2
levels. Whereas for the 8bpc reference image we only chop off the
results to 5 msbs with the LUT, which gets us 2^5 levels. So the
choice of color would have to be constrained to fit the RGB332
limits to get the same output for both.

> =

> [1] https://source.chromium.org/chromiumos/chromiumos/codesearch/+/main:s=
rc/third_party/igt-gpu-tools/tests/kms_plane.c;l=3D383;drc=3Dc8a9aa95e2c5c8=
d9d39f4f9388a7d602a2e64311
> =

> > >
> > > > >
> > > > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > > > >
> > > > > > Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
> > > > > >  1 file changed, 7 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index 761be8deaa9b..aeea344b06ad 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -4811,6 +4811,13 @@ u32 glk_plane_color_ctl(const struct int=
el_crtc_state
> > > > > > *crtc_state,
> > > > > >                     plane_color_ctl |=3D
> > > > > > PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> > > > > >     } else if (fb->format->is_yuv) {
> > > > > >             plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> > > > > > +
> > > > > > +           /*
> > > > > > +            * Disable the YUV range correction stage because t=
he input CSC
> > > > > > +            * stage already takes care of range conversion by =
using separate
> > > > > > +            * matrices and offsets depending on the color rang=
e.
> > > > > > +            */
> > > > > > +           plane_color_ctl |=3D
> > > > > > PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> > > > > >     }
> > > > > >
> > > > > >     return plane_color_ctl;
> > > > > > --
> > > > > > 2.29.2.684.gfbc64c5ab5-goog
> > > > >
> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > >
> > > > --
> > > > Ville Syrj=E4l=E4
> > > > Intel
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
