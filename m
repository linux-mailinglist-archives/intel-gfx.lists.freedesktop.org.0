Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E395D8ACA4D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 12:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9CA11295E;
	Mon, 22 Apr 2024 10:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxbwPqWj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7B111295E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 10:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713780662; x=1745316662;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QDyFd3PNeA8h0oXsYvZwnNOAaRZlmIWRwL4MgpLCmD0=;
 b=nxbwPqWjiE+ZX+aM+ciFAQMwU7SiK2fKls/pfcr2ZC2cKnUO4W75XjpG
 +pc9YreqB8iPBsEdoHd8+NFXnjM6G8qjar156sCcwzPXk1D8y5hWE+fuh
 KyMXvCpXyfu4ve0Xpgb+4K2W0MjHgC1t6izQTgnHnMN0FCptD0ahFVetW
 Tjtj05iix2yVlgGEicLGk25HSoY+RDqafwXk/rJkTlD+/Mz4gjx74GO1a
 sjKQrnQatyOOic/8nEyv1NkK/XT1dOCAyv7JgPfDwk7Pcfu4O29dtZUhf
 n4Bvgk97pCQn9RQq7PDMNmL2JKADnknZkENXPUB9P6HGzxJnVmduuhwO3 w==;
X-CSE-ConnectionGUID: ZkDVVNtnQSKhrbBImJl2+Q==
X-CSE-MsgGUID: Q1Nk24LsTF+04a2tlMzbww==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="20005230"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="20005230"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:11:02 -0700
X-CSE-ConnectionGUID: YLaJuK2sRRS4ojBBZsH7tg==
X-CSE-MsgGUID: 8tzEPUZTTXmRFLMTwjMTBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28429707"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:11:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/14] drm/i915/dpio: Derive the phy from the port
 rather than pipe in encoder hooks
In-Reply-To: <20240422083457.23815-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-10-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 13:10:57 +0300
Message-ID: <87y195u2q6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In the encoder hooks we are dealing primarily with the encoder,
> so derive the DPIO PHY from the encoder rather than the pipe.
> Technically this doesn't matter as we can't cross connect
> pipes<->port across PHY boundaries, but it does conveny the
> intention more accurately.

I'll note that for most places converting vlv_dig_port_to_* to
vlv_encoder_to_* would be more convenient in the caller side. We have
the encoder available where they're needed, and in many places we use
enc_to_dig_port(encoder) just to be able to use vlv_dig_port_to_*.

I'd just convert them to vlv_encoder_to_*.

Regardless, this does what it says on the tin,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Oh, one comment inline near the end.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 27 ++++++++-----------
>  drivers/gpu/drm/i915/vlv_sideband.c           |  1 -
>  2 files changed, 11 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index e4a04c9b5b19..4fafac534967 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -719,9 +719,8 @@ void chv_set_phy_signal_level(struct intel_encoder *e=
ncoder,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>  	u32 val;
>  	int i;
>=20=20
> @@ -814,9 +813,9 @@ void chv_data_lane_soft_reset(struct intel_encoder *e=
ncoder,
>  			      bool reset)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	enum dpio_channel ch =3D vlv_dig_port_to_channel(enc_to_dig_port(encode=
r));
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>  	u32 val;
>=20=20
>  	val =3D vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW0(ch));
> @@ -861,7 +860,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *enc=
oder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>  	enum pipe pipe =3D crtc->pipe;
>  	unsigned int lane_mask =3D
>  		intel_dp_unused_lane_mask(crtc_state->lane_count);
> @@ -941,9 +940,8 @@ void chv_phy_pre_encoder_enable(struct intel_encoder =
*encoder,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>  	int data, i, stagger;
>  	u32 val;
>=20=20
> @@ -1030,8 +1028,8 @@ void chv_phy_post_pll_disable(struct intel_encoder =
*encoder,
>  			      const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(enc_to_dig_port(encoder));
>  	enum pipe pipe =3D to_intel_crtc(old_crtc_state->uapi.crtc)->pipe;
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(pipe);
>  	u32 val;
>=20=20
>  	vlv_dpio_get(dev_priv);
> @@ -1068,9 +1066,8 @@ void vlv_set_phy_signal_level(struct intel_encoder =
*encoder,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>=20=20
>  	vlv_dpio_get(dev_priv);
>=20=20
> @@ -1095,9 +1092,8 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *e=
ncoder,
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>=20=20
>  	/* Program Tx lane resets to default */
>  	vlv_dpio_get(dev_priv);
> @@ -1127,8 +1123,8 @@ void vlv_phy_pre_encoder_enable(struct intel_encode=
r *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>  	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(pipe);
>  	u32 val;
>=20=20
>  	vlv_dpio_get(dev_priv);
> @@ -1154,9 +1150,8 @@ void vlv_phy_reset_lanes(struct intel_encoder *enco=
der,
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
> -	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum dpio_phy phy =3D vlv_dig_port_to_phy(dig_port);
>=20=20
>  	vlv_dpio_get(dev_priv);
>  	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch), 0x00000000);
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/v=
lv_sideband.c
> index ffa195560d0d..68291412f4cb 100644
> --- a/drivers/gpu/drm/i915/vlv_sideband.c
> +++ b/drivers/gpu/drm/i915/vlv_sideband.c
> @@ -9,7 +9,6 @@
>  #include "vlv_sideband.h"
>=20=20
>  #include "display/intel_dpio_phy.h"
> -#include "display/intel_display_types.h"

I guess this should be done in some other patch?

>=20=20
>  /*
>   * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and

--=20
Jani Nikula, Intel
