Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E6531E1C8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 23:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5CC6E7EA;
	Wed, 17 Feb 2021 22:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A502B6E7EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 22:10:27 +0000 (UTC)
IronPort-SDR: s7Rt6EPQLgztMm1ZXBlZBxqPk8GOOKdUJsbzi3y3HeHMRNGsOl/ts/hXSZSrkpIenMaPw1TATH
 tfr9DR5owQhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244794729"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="244794729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 14:10:26 -0800
IronPort-SDR: tWkGpIn14Uyv7fybx+y6vtDdZaY3sesPabUYamoxx43LgC6UJ5jGW5yhBDMGlm6Q5nxhXrEZHD
 xbYqxc4UJ5pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="401436642"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 17 Feb 2021 14:10:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Feb 2021 00:10:23 +0200
Date: Thu, 18 Feb 2021 00:10:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YC2UT0fD9Iiecgz5@intel.com>
References: <20210205202322.27608-1-ville.syrjala@linux.intel.com>
 <3dd3591dad1839f9f0396e09a68e0a834743d901.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dd3591dad1839f9f0396e09a68e0a834743d901.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Nuke INTEL_OUTPUT_FORMAT_INVALID
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 04:37:20PM +0000, Souza, Jose wrote:
> On Fri, 2021-02-05 at 22:23 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > We tend to use output_format!=3DRGB as a shorthand for YCbCr, but
> > this fails if we have a disabled crtc where output_format=3D=3DINVALID.
> > We're now getting some fail from intel_color_check() when we have:
> > =A0hw.enable=3D=3Dfalse
> > =A0hw.ctm!=3DNULL
> > =A0output_format=3D=3DINVALID
> > =

> > Let's avoid that by throwing INTEL_OUTPUT_FORMAT_INVALID to the
> > dumpster, and thus everything defaults to RGB when the crtc
> > is disabled.
> > =

> > This does beg the deeper question of how much of the state
> > should we in fact be validating when hw/uapi.enable=3D=3Dfalse.
> > And should we even be doing the uapi->hw copy when
> > uapi.enable=3D=3Dfalse? So far I've not been able to come up with
> > satisfactory answers for myself, so I'm putting it off for the
> > moment.
> > =

> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> > Fixes: 0aa5c3835c8a ("drm/i915: support two CSC module on gen11 and lat=
er")
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2964
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> > =A0drivers/gpu/drm/i915/display/intel_crtc.c          | 1 -
> > =A0drivers/gpu/drm/i915/display/intel_display.c       | 3 +--
> > =A0drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
> > =A03 files changed, 1 insertion(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/dr=
m/i915/display/intel_crtc.c
> > index 57b0a3ebe908..8e77ca7ddf11 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -109,7 +109,6 @@ void intel_crtc_state_reset(struct intel_crtc_state=
 *crtc_state,

void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
                            struct intel_crtc *crtc)
{
        memset(crtc_state, 0, sizeof(*crtc_state));
...

> > =A0	crtc_state->cpu_transcoder =3D INVALID_TRANSCODER;
> > =A0	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > =A0	crtc_state->hsw_workaround_pipe =3D INVALID_PIPE;
> > -	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_INVALID;
> =

> Missing set output_format to INTEL_OUTPUT_FORMAT_RGB, kmalloc() don't set=
 memory allocated to zero and INTEL_OUTPUT_FORMAT_INVALID was the index 0 a=
nd
> we were setting it during intel_crtc_state_reset() so we should now set i=
t to INTEL_OUTPUT_FORMAT_RGB.
> https://www.kernel.org/doc/htmldocs/kernel-api/mm.html

ie. we zero out the whole thing. The reason why the explicit assignment
was here I suppose is that I had assumed INTEL_OUTPUT_FORMAT_INVALID=3D=3D-=
1,
which is the case for INVALID_TRANSCODER/PIPE/etc.

> =

> With that fixed:
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > =A0	crtc_state->scaler_state.scaler_id =3D -1;
> > =A0	crtc_state->mst_master_transcoder =3D INVALID_TRANSCODER;
> > =A0}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 92c14f3f0abf..46d0093187f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -10220,7 +10220,6 @@ static void snprintf_output_types(char *buf, si=
ze_t len,
> > =A0}
> > =A0
> > =

> > =

> > =

> > =A0static const char * const output_format_str[] =3D {
> > -	[INTEL_OUTPUT_FORMAT_INVALID] =3D "Invalid",
> > =A0	[INTEL_OUTPUT_FORMAT_RGB] =3D "RGB",
> > =A0	[INTEL_OUTPUT_FORMAT_YCBCR420] =3D "YCBCR4:2:0",
> > =A0	[INTEL_OUTPUT_FORMAT_YCBCR444] =3D "YCBCR4:4:4",
> > @@ -10229,7 +10228,7 @@ static const char * const output_format_str[] =
=3D {
> > =A0static const char *output_formats(enum intel_output_format format)
> > =A0{
> > =A0	if (format >=3D ARRAY_SIZE(output_format_str))
> > -		format =3D INTEL_OUTPUT_FORMAT_INVALID;
> > +		return "invalid";
> > =A0	return output_format_str[format];
> > =A0}
> > =A0
> > =

> > =

> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 307ff4b771f4..b3ac39fea6f0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -830,7 +830,6 @@ struct intel_crtc_wm_state {
> > =A0};
> > =A0
> > =

> > =

> > =

> > =A0enum intel_output_format {
> > -	INTEL_OUTPUT_FORMAT_INVALID,
> > =A0	INTEL_OUTPUT_FORMAT_RGB,
> > =A0	INTEL_OUTPUT_FORMAT_YCBCR420,
> > =A0	INTEL_OUTPUT_FORMAT_YCBCR444,
> =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
