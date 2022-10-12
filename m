Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9255FC860
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0072D10E335;
	Wed, 12 Oct 2022 15:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DB710E335
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665588383; x=1697124383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3PebaftonT1RBJY87Ku605zQR6eaGhlAIwUyeOscrQg=;
 b=E9t5yTPA2lpgV6zjKDl8ibe6EJdTgyHFGwXIO/sUxVAqZZK/1AL0vkP+
 Ntnl9yHfTwZRWro8CrZuBsgiDWwq5wNjD1xVRw7fw+sPlkneTbk/GYoXX
 ZVDBpUyAObHTZR/caZDVB8HJTYIM/kD8rZcOUBgFBLcpdSLvcHu9DgIAl
 yGR/NEZ00HBB3CLD6IBo4KR71y5UIrH2GhpKtwKNV2m8e+kNDDePv/3Pc
 NV0ShEweM4LROMkSmfL9FRWm7s6iNs29ylfwHp4vFSEEw0+X5Pu6sm59z
 2ID06b2DWqdETgbVWnwtRaKp7RPFhRvBzGI8R/KCw6ObqNg3blwZ0SrN0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="306450502"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="306450502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:26:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="657810364"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="657810364"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:26:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-22-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-22-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:26:21 +0300
Message-ID: <87k055t65e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 21/22] drm/i915/audio: Include ELD in the
 state dump
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Include the ELD has a hex blob in the crtc state dump.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_crtc_state_dump.c    | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drive=
rs/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e9212f69c360..0f9d3bf32129 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -3,6 +3,8 @@
>   * Copyright =C2=A9 2022 Intel Corporation
>   */
>=20=20
> +#include <drm/drm_edid.h>
> +
>  #include "i915_drv.h"
>  #include "intel_crtc_state_dump.h"
>  #include "intel_display_types.h"
> @@ -56,6 +58,17 @@ intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
>  	drm_dp_vsc_sdp_log(KERN_DEBUG, i915->drm.dev, vsc);
>  }
>=20=20
> +static void
> +intel_dump_buffer(struct drm_i915_private *i915,
> +		  const char *prefix, const u8 *buf, size_t len)
> +{
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	print_hex_dump(KERN_DEBUG, prefix, DUMP_PREFIX_NONE,
> +		       16, 0, buf, len, false);
> +}
> +
>  #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] =3D #x
>=20=20
>  static const char * const output_type_str[] =3D {
> @@ -236,6 +249,10 @@ void intel_crtc_state_dump(const struct intel_crtc_s=
tate *pipe_config,
>  	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
>  		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
>=20=20
> +	if (pipe_config->has_audio)
> +		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
> +				  drm_eld_size(pipe_config->eld));
> +
>  	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d=
, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
>  		    str_yes_no(pipe_config->vrr.enable),
>  		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,

--=20
Jani Nikula, Intel Open Source Graphics Center
