Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016A818B5CD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 14:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DE46E158;
	Thu, 19 Mar 2020 13:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546AB6E158
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 13:22:09 +0000 (UTC)
IronPort-SDR: bOAfO0hRVauPg74vvrmAJWCm2FjnM4ZaYY+AqzjTEpInfH0kEwQrlUxorM8G3P6mUKGJ9ifhtR
 pqh0KObY5I6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 06:22:08 -0700
IronPort-SDR: 0uREVlUu2pL0QtqiAd7hMO+eVgxqE/HN3Dvbud6VP9fm+V3XOhRa+VxT/wZ4xLxuSfEDEZq1Zq
 5Ln7N6oC6CGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="236937141"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 19 Mar 2020 06:22:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 15:22:06 +0200
Date: Thu, 19 Mar 2020 15:22:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200319132205.GI13686@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-4-ville.syrjala@linux.intel.com>
 <20200318223732.GC6675@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318223732.GC6675@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915: Drop usless
 master_transcoder assignments
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

On Wed, Mar 18, 2020 at 03:37:32PM -0700, Manasi Navare wrote:
> On Fri, Mar 13, 2020 at 06:48:21PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The entire crtc state has been reset before readout so
> > master_transcoder is already set to INVALID.
> =

> But wont that mean that the master transcoder would be set to 0
> on reset and what we want is actually setting that to INVALID

No. Pls see intel_crtc_state_reset()


> =

> Manasi
> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 --
> >  1 file changed, 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index c49b4e6eb3d4..12823d8f6afe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9364,7 +9364,6 @@ static bool i9xx_get_pipe_config(struct intel_crt=
c *crtc,
> >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
> >  	pipe_config->shared_dpll =3D NULL;
> > -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> >  =

> >  	ret =3D false;
> >  =

> > @@ -10588,7 +10587,6 @@ static bool ilk_get_pipe_config(struct intel_cr=
tc *crtc,
> >  =

> >  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
> >  	pipe_config->shared_dpll =3D NULL;
> > -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> >  =

> >  	ret =3D false;
> >  	tmp =3D intel_de_read(dev_priv, PIPECONF(crtc->pipe));
> > -- =

> > 2.24.1
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
