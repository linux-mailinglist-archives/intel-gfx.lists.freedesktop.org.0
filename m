Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2EB4D43E0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:54:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103EF10E7E6;
	Thu, 10 Mar 2022 09:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D144210E68D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646906072; x=1678442072;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=N10o4B8kpc9tBPqQU1I4px13WilIas8rx0+IxJg9oXA=;
 b=AvLVHZsT0tttWgEGjCJDOJwPRg2MIz5qP1STd1AHk05qq/jn5vcBQi2o
 jiGDAyATpIKf+a/HDndgb84aAsxdqmqinP9U7O+MnjKVonqmY7rxnEaYb
 5SkkefhGEqLOr/l9qNJA6pKDBrvXE2pr5um2IIrfdeI7z3dbas4eZQurS
 qr0oZCO6YvXF+JIT8YEeQ2eLuMg+gmDpCc7oICj9K++yJqdYuiFVaptQG
 mzVh7GTMvfnbnLeBUqz6kB6E6OShU5mMQyT38Lg2Gffs4UjOG1OZyWskD
 DXBzTesHkLKze+LsEbOyOGg9WLkVyr6WISPBQ4nwtY8QyFDVQa6ktrVbU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341637515"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="341637515"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:54:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554571569"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:54:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-11-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:54:28 +0200
Message-ID: <87h786xhd7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915: Move DRRS enable/disable
 higher up
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No reason to keep the DRRS enable/disable hidden insider the encoder
> hooks. Let's just move them all the way up into platform independent
> code so that all platforms get to use them. These are nops when
> the state computation doesn't think DRRS is possible.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 3 ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index a3bf4e876fb4..e2b297d2c295 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2820,8 +2820,6 @@ static void intel_enable_ddi_dp(struct intel_atomic=
_state *state,
>  	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>=20=20
> -	intel_drrs_enable(crtc_state);
> -
>  	if (crtc_state->has_audio)
>  		intel_audio_codec_enable(encoder, crtc_state, conn_state);
>=20=20
> @@ -2963,7 +2961,6 @@ static void intel_disable_ddi_dp(struct intel_atomi=
c_state *state,
>  		intel_audio_codec_disable(encoder,
>  					  old_crtc_state, old_conn_state);
>=20=20
> -	intel_drrs_disable(old_crtc_state);
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4c7c74665819..455f19e6d43d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8106,6 +8106,8 @@ static void intel_enable_crtc(struct intel_atomic_s=
tate *state,
>  	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
>  		return;
>=20=20
> +	intel_drrs_enable(new_crtc_state);
> +
>  	/* vblanks work again, re-enable pipe CRC. */
>  	intel_crtc_enable_pipe_crc(crtc);
>  }
> @@ -8175,6 +8177,8 @@ static void intel_old_crtc_state_disables(struct in=
tel_atomic_state *state,
>  	 */
>  	intel_crtc_disable_pipe_crc(crtc);
>=20=20
> +	intel_drrs_disable(old_crtc_state);
> +
>  	dev_priv->display->crtc_disable(state, crtc);
>  	crtc->active =3D false;
>  	intel_fbc_disable(crtc);

--=20
Jani Nikula, Intel Open Source Graphics Center
