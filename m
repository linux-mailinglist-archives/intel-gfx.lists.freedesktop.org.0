Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09147749649
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 09:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65F310E43A;
	Thu,  6 Jul 2023 07:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33ABE10E43A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 07:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688628249; x=1720164249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ucHNj26wmHv/Za3kDQO3QmvAiDjBdBdIhx0MW8JP2Es=;
 b=HrRV1yrc1zqMzOhX+F59xxA/45ay+yG/UsQpI+jEskjHRsuLR/amPNPw
 qEfuWvavUXMUV2TAzSnlFsatHOEF80NnIOG2k23C0Jt+rFMQWiIXG1EV4
 wNd84ope/VGvKOHM9hUjKzh/4rDD4ltfWyBE+5zIfN3jQvpFJ/i7+aV6C
 NRqFMLDJpoj4lKKxLVvYg4Lw+wf97/Z0ODroMgOnBdFZAfwXglshlbejH
 Ttt1jn7dbRUBluoFAz7M1r0UcC+LudO56KoSUeIFGWXsGCMOOrjQoMQEE
 nu+rRHQOPZUVxccmllSxVikwxRdKz5p+GujMOARA1ZKyiDLxVmp3i347r w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="348315741"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="348315741"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:24:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="809526477"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="809526477"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 00:24:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-4-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 10:24:04 +0300
Message-ID: <87ilaxzenf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/sdvo:
 s/sdvo_inputs_mask/sdvo_num_inputs/
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The SDVO inputs are reportes a simple number, not a bitmask.

*reported as a

> Adjust the code to match reality.
>
> Note that we don't actually support dual input SDVO devices,
> and we just always use the first input.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Didn't actually check this against any spec, but looks reasonable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c      | 9 ++++-----
>  drivers/gpu/drm/i915/display/intel_sdvo_regs.h | 2 +-
>  2 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index ec94da6cb7bb..76eed11e9fed 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1955,7 +1955,7 @@ static bool intel_sdvo_get_capabilities(struct inte=
l_sdvo *intel_sdvo, struct in
>  		      "  device_rev_id: %d\n"
>  		      "  sdvo_version_major: %d\n"
>  		      "  sdvo_version_minor: %d\n"
> -		      "  sdvo_inputs_mask: %d\n"
> +		      "  sdvo_num_inputs: %d\n"
>  		      "  smooth_scaling: %d\n"
>  		      "  sharp_scaling: %d\n"
>  		      "  up_scaling: %d\n"
> @@ -1967,7 +1967,7 @@ static bool intel_sdvo_get_capabilities(struct inte=
l_sdvo *intel_sdvo, struct in
>  		      caps->device_rev_id,
>  		      caps->sdvo_version_major,
>  		      caps->sdvo_version_minor,
> -		      caps->sdvo_inputs_mask,
> +		      caps->sdvo_num_inputs,
>  		      caps->smooth_scaling,
>  		      caps->sharp_scaling,
>  		      caps->up_scaling,
> @@ -3436,15 +3436,14 @@ bool intel_sdvo_init(struct drm_i915_private *dev=
_priv,
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "%s device VID/DID: %02X:%02X.%02X, "
>  			"clock range %dMHz - %dMHz, "
> -			"input 1: %c, input 2: %c, "
> +			"num inputs: %d, "
>  			"output 1: %c, output 2: %c\n",
>  			SDVO_NAME(intel_sdvo),
>  			intel_sdvo->caps.vendor_id, intel_sdvo->caps.device_id,
>  			intel_sdvo->caps.device_rev_id,
>  			intel_sdvo->pixel_clock_min / 1000,
>  			intel_sdvo->pixel_clock_max / 1000,
> -			(intel_sdvo->caps.sdvo_inputs_mask & 0x1) ? 'Y' : 'N',
> -			(intel_sdvo->caps.sdvo_inputs_mask & 0x2) ? 'Y' : 'N',
> +			intel_sdvo->caps.sdvo_num_inputs,
>  			/* check currently supported outputs */
>  			intel_sdvo->caps.output_flags &
>  			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h b/drivers/gpu=
/drm/i915/display/intel_sdvo_regs.h
> index 74dc6c042b6e..54f099abefeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo_regs.h
> @@ -57,7 +57,7 @@ struct intel_sdvo_caps {
>  	u8 device_rev_id;
>  	u8 sdvo_version_major;
>  	u8 sdvo_version_minor;
> -	unsigned int sdvo_inputs_mask:2;
> +	unsigned int sdvo_num_inputs:2;
>  	unsigned int smooth_scaling:1;
>  	unsigned int sharp_scaling:1;
>  	unsigned int up_scaling:1;

--=20
Jani Nikula, Intel Open Source Graphics Center
