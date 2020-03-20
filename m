Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4218DB89
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 00:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A736EB85;
	Fri, 20 Mar 2020 23:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4D86EB85
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 23:10:38 +0000 (UTC)
IronPort-SDR: vKUSEwWkIDCyjCIOqqvCvwFu7WfVH7yHA8FvdPa9ek55hjZ8TjKmMCaXrgSUNktpSSit/uTeGK
 loGMIT1FgEZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 16:10:38 -0700
IronPort-SDR: SP/Ft4r0a0SXlykeq8PCg3h5nKFKMSHX23/YF8vuMtHO8zx/LbiQAF+9Mb+RMBoAW5nVQrEDCC
 rLH/pLlQBfxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,286,1580803200"; d="scan'208";a="269248978"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 20 Mar 2020 16:10:38 -0700
Date: Fri, 20 Mar 2020 16:12:16 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200320231216.GC15035@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-4-ville.syrjala@linux.intel.com>
 <20200318223732.GC6675@intel.com>
 <20200319132205.GI13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319132205.GI13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Thu, Mar 19, 2020 at 03:22:06PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 18, 2020 at 03:37:32PM -0700, Manasi Navare wrote:
> > On Fri, Mar 13, 2020 at 06:48:21PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > The entire crtc state has been reset before readout so
> > > master_transcoder is already set to INVALID.
> > =

> > But wont that mean that the master transcoder would be set to 0
> > on reset and what we want is actually setting that to INVALID
> =

> No. Pls see intel_crtc_state_reset()
>

Okay got it with that

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 =

> =

> > =

> > Manasi
> > =

> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 2 --
> > >  1 file changed, 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index c49b4e6eb3d4..12823d8f6afe 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -9364,7 +9364,6 @@ static bool i9xx_get_pipe_config(struct intel_c=
rtc *crtc,
> > >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
> > >  	pipe_config->shared_dpll =3D NULL;
> > > -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> > >  =

> > >  	ret =3D false;
> > >  =

> > > @@ -10588,7 +10587,6 @@ static bool ilk_get_pipe_config(struct intel_=
crtc *crtc,
> > >  =

> > >  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
> > >  	pipe_config->shared_dpll =3D NULL;
> > > -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> > >  =

> > >  	ret =3D false;
> > >  	tmp =3D intel_de_read(dev_priv, PIPECONF(crtc->pipe));
> > > -- =

> > > 2.24.1
> > > =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
