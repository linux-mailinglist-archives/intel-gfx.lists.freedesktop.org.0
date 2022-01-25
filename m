Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE949ACBB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 07:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E836E10EB46;
	Tue, 25 Jan 2022 06:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 220E110EB46
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643093465; x=1674629465;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=3jBY91VV2A151U8BU0bZq7QCBzVwdfTXmrMoy6lMkJs=;
 b=Orb6VUyl/eHiUFrXcx4g1cxG6iOntBs+VBYShcUpy7lczMA0JUejGnJ4
 mxxqNOQP8EqPbTVJQHTH13L+P7GHMEpt+qdTE2Zde3260vZ72N34gB10d
 W4NkHqLn3poR6LBx1fbJPWKXkaJF3JUrCLg0xbpsVdHFhIm9VNdlFlQ7h
 /r8lOL1/sLvMI68aYgyf3iKJjYE6r2r5H6Rge0OrIOY7Y+qiIndq7UEUM
 JJvP+4qLRZQeQQ4AAFikFT6CO9ms02frU3BhBmP+3MiplTITUNmvFqNYT
 AVk+GyCa3aWn6Afmvh85PDHT11eAweSlDrEFzhwWTxkYzZxhXRGxS2rog w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="306952167"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="306952167"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 22:51:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="534596751"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 22:51:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220125063937.7003-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220124192638.26262-5-ville.syrjala@linux.intel.com>
 <20220125063937.7003-1-ville.syrjala@linux.intel.com>
Date: Tue, 25 Jan 2022 08:50:47 +0200
Message-ID: <87o8401f7c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Move dsc/joiner enable
 into hsw_crtc_enable()
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

On Tue, 25 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Lift the dsc/joiner enable up from the wonky places where it
> currently sits (ddi .pre_enable() or icl_ddi_bigjoiner_pre_enable())
> into hsw_crtc_enable() where we write the other per-pipe stuff
> as well. Makes the transcoder vs. pipe split less confusing.
>
> For DSI this results in slight reordering between the dsc/joiner
> enable vs. transcoder timings setup, but I can't really think
> why that should cause any issues since the transcoder isn't yet
> enabled at that point.
>
> v2: Take care of dsi (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

One question inline.

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  2 --
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ------
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-------
>  3 files changed, 5 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 95f49535fa6e..16a611f7d659 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1233,8 +1233,6 @@ static void gen11_dsi_pre_enable(struct intel_atomi=
c_state *state,
>=20=20
>  	intel_dsc_dsi_pps_write(encoder, pipe_config);
>=20=20
> -	intel_dsc_enable(pipe_config);
> -
>  	/* step6c: configure transcoder timings */
>  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2f20abc5122d..5d1f7d6218c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2425,9 +2425,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	intel_ddi_enable_fec(encoder, crtc_state);
>=20=20
>  	intel_dsc_dp_pps_write(encoder, crtc_state);
> -
> -	if (!crtc_state->bigjoiner)
> -		intel_dsc_enable(crtc_state);
>  }
>=20=20
>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -2493,9 +2490,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  		intel_ddi_enable_pipe_clock(encoder, crtc_state);
>=20=20
>  	intel_dsc_dp_pps_write(encoder, crtc_state);
> -
> -	if (!crtc_state->bigjoiner)
> -		intel_dsc_enable(crtc_state);
>  }
>=20=20
>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d2906434ab3f..13b1de03640d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1974,7 +1974,6 @@ static void hsw_set_frame_start_delay(const struct =
intel_crtc_state *crtc_state)
>  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *stat=
e,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *master_crtc_state;
>  	struct intel_crtc *master_crtc;
>  	struct drm_connector_state *conn_state;
> @@ -2004,12 +2003,6 @@ static void icl_ddi_bigjoiner_pre_enable(struct in=
tel_atomic_state *state,
>=20=20
>  	if (crtc_state->bigjoiner_slave)
>  		intel_encoders_pre_enable(state, master_crtc);
> -
> -	/* need to enable VDSC, which we skipped in pre-enable */
> -	intel_dsc_enable(crtc_state);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 13)
> -		intel_uncompressed_joiner_enable(crtc_state);
>  }
>=20=20
>  static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *=
crtc_state)
> @@ -2057,6 +2050,11 @@ static void hsw_crtc_enable(struct intel_atomic_st=
ate *state,
>  		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
>  	}
>=20=20
> +	intel_dsc_enable(new_crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 13)
> +		intel_uncompressed_joiner_enable(new_crtc_state);
> +

Should this call be moved inside intel_dsc_enable()? I mean it's not
compression, but it's the same splitter/joiner/etc. block that handles
all of this?

BR,
Jani.


>  	intel_set_pipe_src_size(new_crtc_state);
>  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
