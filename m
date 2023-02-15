Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DA3697F32
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 16:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDACE10E133;
	Wed, 15 Feb 2023 15:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C926010E133
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 15:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676474038; x=1708010038;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NshjTsQds/MqwFHl9dux6/jp5qWrpheCLLUzPZBI41Y=;
 b=D1AqSNopGD8F8a1ShrIx92sVhzfNEG0WLACB0bSrCLWdwOwrX8mdgwAV
 qDFuEy2EAfi3eoeTbDhg7N26P+DfsdmY2FiJfFzleqVoDkkD58XoQHHwp
 /Kvvv1J6nccToQB4tHUpWerSv6TvuIbdJ+nafhM4D8Jo4rCasYW2YEO6Q
 Z6Ic2s5ckxt5CuFyod2MRFm0p3KIt6RNKPvftsmyF2iO1iGL0VaJHoImW
 lpcTncQO43LTyLgq5fe0CsNr3F9/9IUDx0JIf9ENjHgOIcQUYYpf/dXCP
 zaA6YXf9ZsjLvR8vTMYmpSZjHPyetLnOTf/qpifK3sm3zUY02tYfd9hhy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311078297"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311078297"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 07:13:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="812479006"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="812479006"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 07:13:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230215150129.13288-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
 <20230215150129.13288-1-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 17:13:13 +0200
Message-ID: <87a61fq7w6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Reduce ELD hex dumps a bit
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

On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Do the ELD hexdumps only up to the last differing byte.
> The rest is typically all zeroes anyway so not much point
> in dumping it.
>
> Couldn't find anything for memcmp_diff_len() so
> rolled my own.
>
> v2: Use semantics and function name suggested by Jani
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3479125fbda6..664322a58236 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5348,6 +5348,20 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>  }
>=20=20
> +/* Returns the length up to and including the last differing byte */
> +static size_t
> +memcmp_diff_len(const u8 *a, const u8 *b, size_t len)
> +{
> +	int i;
> +
> +	for (i =3D len - 1; i >=3D 0; i--) {
> +		if (a[i] !=3D b[i])
> +			return i + 1;
> +	}
> +
> +	return 0;
> +}
> +
>  static void
>  pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
>  			    bool fastset, const char *name,
> @@ -5357,6 +5371,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private=
 *dev_priv,
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>=20=20
> +		/* only dump up to the last difference */
> +		len =3D memcmp_diff_len(a, b, len);
> +
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "fastset mismatch in %s buffer\n", name);
>  		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
> @@ -5364,6 +5381,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private=
 *dev_priv,
>  		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
>  			       16, 0, b, len, false);
>  	} else {
> +		/* only dump up to the last difference */
> +		len =3D memcmp_diff_len(a, b, len);
> +
>  		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
>  		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
>  			       16, 0, a, len, false);

--=20
Jani Nikula, Intel Open Source Graphics Center
