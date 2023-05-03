Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6126F53B7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6437210E211;
	Wed,  3 May 2023 08:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68E910E211
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683103976; x=1714639976;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=5BARNYNODi3UQskGYl55w/LPfATFe0nZAPtZJM5F29E=;
 b=WG5do3Sk66NVh1bzkjcivrKFMJj10tWXdLOCpVDjd94wPKYSidNp4ezu
 TK7QWVQUK8vc619jBALeoHPjR9eCMA7asmcnjXbQMNskCLpeuXw6+lkc6
 36cA0Lri9vIl7v43m56jJD5/9RzVGezLg958gQPwAB5XQvZdijOotVMAh
 T6qIXc5AU+wLCoIXcC88IFSxwooaGMH9ctPmG8ShE4W6u+iKTcIBB7Gzf
 Mphn1Pa7ZFWYIWWVwcYB9Y3HbzVdfm0bFDi+j8UEX+SMInRpiartBTrC0
 BeH0xBKOn6C/pw5URMPaJu4nMRTbxMO7yYdaO8h799TiRzrRxK0j3TB9i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332966559"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="332966559"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:52:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="808178577"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="808178577"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:52:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425105450.18441-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
 <20230425105450.18441-10-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:52:52 +0300
Message-ID: <874jot23vf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/14] drm/i915/dsi: Move most things from
 .enable() into .post_disable()
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

On Tue, 25 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> encoder->disable() is supposed to happen before the pipe/transcoder
> gets disabled. The icl+ DSI code screwed that up and put most things
> (including the transcoder disable itself) into  encoder->disable().
> Follow the common rules and hoist most things into the
> encoder->post_disable() hook.

Subject: s/enable/disable/

ISTR there was something in the ICL mode set sequence that basically
made us work around the order in hsw_crtc_enable and
hsw_crtc_disable. But if this matches what Windows does, *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 600199d51d69..0e2ed4776766 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1395,11 +1395,20 @@ static void gen11_dsi_disable(struct intel_atomic=
_state *state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_conn_state->crtc);
>=20=20
>  	/* step1: turn off backlight */
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
>  	intel_backlight_disable(old_conn_state);
> +}
> +
> +static void gen11_dsi_post_disable(struct intel_atomic_state *state,
> +				   struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *old_crtc_state,
> +				   const struct drm_connector_state *old_conn_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(old_conn_state->crtc);
> +
> +	intel_crtc_vblank_off(old_crtc_state);
>=20=20
>  	/* step2d,e: disable transcoder and wait */
>  	gen11_dsi_disable_transcoder(encoder);
> @@ -1420,14 +1429,6 @@ static void gen11_dsi_disable(struct intel_atomic_=
state *state,
>=20=20
>  	/* step4: disable IO power */
>  	gen11_dsi_disable_io_power(encoder);
> -}
> -
> -static void gen11_dsi_post_disable(struct intel_atomic_state *state,
> -				   struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *old_crtc_state,
> -				   const struct drm_connector_state *old_conn_state)
> -{
> -	intel_crtc_vblank_off(old_crtc_state);
>=20=20
>  	intel_dsc_disable(old_crtc_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
