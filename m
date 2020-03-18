Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF0118A8BD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3016E98C;
	Wed, 18 Mar 2020 22:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E926E98C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 22:59:02 +0000 (UTC)
IronPort-SDR: P5gCxBNiTMrk6v+aW+fDEn69DtW5y6Ejlk7keryZ5apbCUb72Tj+2ZjXeDLm4hmTfyyCBsk0ye
 eIR2ksPuvMqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:59:01 -0700
IronPort-SDR: HzHLkERsqVPTz3SFRWHA3wflN90y0tWHN8btvCcbOoeLTm0ngrtF99zWCeMZCMJK6VyGn4dVw0
 6LzOSFYmKpqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="291447079"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Mar 2020 15:59:01 -0700
Date: Wed, 18 Mar 2020 16:00:36 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318230035.GF6675@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164831.5980-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Include port sync state in
 the state dump
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

On Fri, Mar 13, 2020 at 06:48:24PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Dump the port sync stat in intel_dump_pipe_config().
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.anavre@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5c5a131db8b4..4840988dc58d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12947,6 +12947,11 @@ static void intel_dump_pipe_config(const struct =
intel_crtc_state *pipe_config,
>  		    transcoder_name(pipe_config->cpu_transcoder),
>  		    pipe_config->pipe_bpp, pipe_config->dither);
>  =

> +	drm_dbg_kms(&dev_priv->drm,
> +		    "port sync: master transcoder: %s, slave transcoder bitmask =3D 0x=
%x\n",
> +		    transcoder_name(pipe_config->master_transcoder),
> +		    pipe_config->sync_mode_slaves_mask);
> +
>  	if (pipe_config->has_pch_encoder)
>  		intel_dump_m_n_config(pipe_config, "fdi",
>  				      pipe_config->fdi_lanes,
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
