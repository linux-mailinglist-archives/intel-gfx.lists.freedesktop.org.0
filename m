Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E632F63B1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9546E413;
	Thu, 14 Jan 2021 15:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71E76E429
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:06:06 +0000 (UTC)
IronPort-SDR: OZc/n0AC2LI5o9/rKt5RohpQZaBa2cEbQimhKhiSixy9Jc+KcOR7hqByL/BNrNXdtbYOjHlI7z
 9d4Q76KLYXxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="263171171"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263171171"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:06:06 -0800
IronPort-SDR: gTzTw8Cvl+vDYz1AnsxuDHRELbCBRF9h+V5qZAaHiNz96WpR6oCWVCx+CFBprPK8B09CYr1XTy
 qcmxwli/Rh/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="352523750"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Jan 2021 07:06:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 17:06:00 +0200
Date: Thu, 14 Jan 2021 17:06:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YABd2J3L+MTNV42w@intel.com>
References: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
 <87v9c0q8pk.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9c0q8pk.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only enable DFP 4:4:4->4:2:0
 conversion when outputting YCbCr 4:4:4
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 09:27:35AM +0200, Jani Nikula wrote:
> On Mon, 11 Jan 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Let's not enable the 4:4:4->4:2:0 conversion bit in the DFP unless we're
> > actually outputting YCbCr 4:4:4. It would appear some protocol
> > converters blindy consult this bit even when the source is outputting
> > RGB, resulting in a visual mess.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2914
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Fixes: 181567aa9f0d ("drm/i915: Do YCbCr 444->420 conversion via DP proto=
col converters")
> Cc: <stable@vger.kernel.org> # v5.10+
> =

> Right?

Not sure I should to add the stable tag directly since it apparently
applies cleanly but does not build. So needs a custom backport.

> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 4f190a82d4ad..aa30ef9f6906 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4368,8 +4368,8 @@ void intel_dp_configure_protocol_converter(struct=
 intel_dp *intel_dp,
> >  		drm_dbg_kms(&i915->drm, "Failed to set protocol converter HDMI mode =
to %s\n",
> >  			    enableddisabled(intel_dp->has_hdmi_sink));
> >  =

> > -	tmp =3D intel_dp->dfp.ycbcr_444_to_420 ?
> > -		DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> > +	tmp =3D crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444=
 &&
> > +		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : =
0;
> >  =

> >  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> >  			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) !=3D 1)
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
