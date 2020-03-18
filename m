Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A445318A84D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2EA6E978;
	Wed, 18 Mar 2020 22:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E226E978
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 22:35:58 +0000 (UTC)
IronPort-SDR: zEyBtseqg7Iy36DmS0qZfVGDKubb/m/c4ITjuRpB58/mGwT7Ryg7JH+PVhV2yncYmjML03j4SS
 UZWY7FcA38pQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:35:58 -0700
IronPort-SDR: aQtTZLhXJejV1PUu0uI/J6xUkqnbif3GFaMlS22mIOyHq0e/TeZmkP+AuzuEyygNXafANYDJqu
 fjUUmcxvE+qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="279885876"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2020 15:35:57 -0700
Date: Wed, 18 Mar 2020 15:37:32 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318223732.GC6675@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164831.5980-4-ville.syrjala@linux.intel.com>
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

On Fri, Mar 13, 2020 at 06:48:21PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The entire crtc state has been reset before readout so
> master_transcoder is already set to INVALID.

But wont that mean that the master transcoder would be set to 0
on reset and what we want is actually setting that to INVALID

Manasi

> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 --
>  1 file changed, 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c49b4e6eb3d4..12823d8f6afe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9364,7 +9364,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
>  	pipe_config->shared_dpll =3D NULL;
> -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
>  =

>  	ret =3D false;
>  =

> @@ -10588,7 +10587,6 @@ static bool ilk_get_pipe_config(struct intel_crtc=
 *crtc,
>  =

>  	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
>  	pipe_config->shared_dpll =3D NULL;
> -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
>  =

>  	ret =3D false;
>  	tmp =3D intel_de_read(dev_priv, PIPECONF(crtc->pipe));
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
