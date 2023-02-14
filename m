Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2903B6960DB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF41B10E86A;
	Tue, 14 Feb 2023 10:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA36A10E86A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676370929; x=1707906929;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MIKTu/ajWAuifDBg9TgE9bYruiSU2I7F4vTFMOnyHqg=;
 b=ZofKvnEo2ohllFMjOJ83VE98h//zc8kmbwvVlJZMaIXNMPASsjTfej8e
 prVs+aO+sUsTS1cEMko070VWznqOTGMPnmngJh5XaPXqD0oYE+MfEEBN8
 qU5EjPSXQaDEN8C+PdbYwUw2GMQgkke0GfOyi8JMWZLciouny8OB26n3m
 zeP61W1smi1AOaLhhvWnjO/yZh0xPlTw1RZ0GyAs7TxpHgeS1D38Zekfo
 R6rdeJdOlis8S5MzlvpUhYaVMP+tCLlah/lqt88HkcYwGXtlEr7m/fbpU
 i9hCWXxzL0tePAmy9SG0uUh7HGYkEbynAL9Z0Rd0VRTtNCaZjIF0smiP7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417347818"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417347818"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:35:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="662495888"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="662495888"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:35:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230213225258.2127-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-12-ville.syrjala@linux.intel.com>
Date: Tue, 14 Feb 2023 12:35:25 +0200
Message-ID: <87zg9gsff6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Sprinkle some FIXMEs about
 TGL+ DSI transcoder timing mess
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The DSI code has some local hacks to program TRANS_H/VBLANK on
> TGL+ (ICL DSI transcoders didn't have these registers). That
> will not work when we need to start using the delayed vblank
> (for DSB purposes). Too lazy to figure out what the is going
> on there, so just sprinkle FIXMEs in the hopes someone else
> will spot them eventually.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  2 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index def3aff4d717..b5316715bb3b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -957,7 +957,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encode=
r *encoder,
>  		}
>  	}
>=20=20
> -	/* program TRANS_VBLANK register, should be same as vtotal programmed */
> +	/*
> +	 * program TRANS_VBLANK register, should be same as vtotal programmed
> +	 *
> +	 * FIXME get rid of these local hacks and do it right,
> +	 * this will not handle eg. delayed vblank correctly.
> +	 */
>  	if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans =3D dsi_port_to_transcoder(port);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 92306246e907..4210ede5e52e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2938,6 +2938,7 @@ static void intel_get_transcoder_timings(struct int=
el_crtc *crtc,
>  	adjusted_mode->crtc_hdisplay =3D REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
>  	adjusted_mode->crtc_htotal =3D REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
>=20=20
> +	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
>  		tmp =3D intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
>  		adjusted_mode->crtc_hblank_start =3D REG_FIELD_GET(HBLANK_START_MASK, =
tmp) + 1;
> @@ -2952,6 +2953,7 @@ static void intel_get_transcoder_timings(struct int=
el_crtc *crtc,
>  	adjusted_mode->crtc_vdisplay =3D REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
>  	adjusted_mode->crtc_vtotal =3D REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>=20=20
> +	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
>  		tmp =3D intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
>  		adjusted_mode->crtc_vblank_start =3D REG_FIELD_GET(VBLANK_START_MASK, =
tmp) + 1;
> @@ -2967,6 +2969,7 @@ static void intel_get_transcoder_timings(struct int=
el_crtc *crtc,
>  		adjusted_mode->crtc_vblank_end +=3D 1;
>  	}
>=20=20
> +	/* FIXME ADL+ DSI transcoders have this! */
>  	if (DISPLAY_VER(dev_priv) >=3D 13 && !transcoder_is_dsi(cpu_transcoder))
>  		adjusted_mode->crtc_vblank_start =3D
>  			adjusted_mode->crtc_vdisplay +

--=20
Jani Nikula, Intel Open Source Graphics Center
