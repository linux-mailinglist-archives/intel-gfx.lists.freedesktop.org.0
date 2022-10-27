Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1357960FA7D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CEE10E65C;
	Thu, 27 Oct 2022 14:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855D010E652
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881388; x=1698417388;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7YAs5PhW0G7oUUlur2e0PsV8vZfw98hyXf5PrUtYBhg=;
 b=BMTeRmHVmjxiTwdw4nS+UT1SJC88MTQMFQ8lixG+emkba0G5WphbgW+f
 ZCwdlVUVYGqHpkovlWxSTC27b8VKc9CtuWfuNdxPWq9NjBFBwQrk4MAul
 ZIRAd0sFAAe0jBOaeWO+PjZ1X7uAh9325RrqvqgNT6m10K/1WP0OpnbtB
 8x5aeqOwmC0cpWXlhBrt9ViC8KNIAmteK4FYcNEnimmcndQlStAR8KDqP
 /ribvWTABHu57jE079Rn90+TKOvp8Ou6ZG3mEgrpMPObSqnjhVTG7T/GZ
 yTQU6rdUk6KOwEAittdhfUAvoCb7aGpZlHBE+7nFIKL2go0AmsQizWhQj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="309934397"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="309934397"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:32:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="663635998"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="663635998"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:32:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-2-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:32:42 +0300
Message-ID: <87sfj9cp6d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/sdvo: Filter out invalid
 outputs more sensibly
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We try to filter out the corresponding xxx1 output
> if the xxx0 output is not present. But the way that is
> being done is pretty awkward. Make it less so.
>
> Cc: stable@vger.kernel.org
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++++++++++++++++++-----
>  1 file changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index cf8e80936d8e..c6200a91a777 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2925,16 +2925,33 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdv=
o, int device)
>  	return false;
>  }
>=20=20
> -static bool
> -intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
> +static u16 intel_sdvo_filter_output_flags(u16 flags)
>  {
> +	flags &=3D SDVO_OUTPUT_MASK;
> +
>  	/* SDVO requires XXX1 function may not exist unless it has XXX0 functio=
n.*/
> +	if (!(flags & SDVO_OUTPUT_TMDS0))
> +		flags &=3D ~SDVO_OUTPUT_TMDS1;
> +
> +	if (!(flags & SDVO_OUTPUT_RGB0))
> +		flags &=3D ~SDVO_OUTPUT_RGB1;
> +
> +	if (!(flags & SDVO_OUTPUT_LVDS0))
> +		flags &=3D ~SDVO_OUTPUT_LVDS1;
> +
> +	return flags;
> +}
> +
> +static bool
> +intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
> +{
> +	flags =3D intel_sdvo_filter_output_flags(flags);
>=20=20
>  	if (flags & SDVO_OUTPUT_TMDS0)
>  		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
>  			return false;
>=20=20
> -	if ((flags & SDVO_TMDS_MASK) =3D=3D SDVO_TMDS_MASK)
> +	if (flags & SDVO_OUTPUT_TMDS1)
>  		if (!intel_sdvo_dvi_init(intel_sdvo, 1))
>  			return false;
>=20=20
> @@ -2955,7 +2972,7 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sd=
vo, u16 flags)
>  		if (!intel_sdvo_analog_init(intel_sdvo, 0))
>  			return false;
>=20=20
> -	if ((flags & SDVO_RGB_MASK) =3D=3D SDVO_RGB_MASK)
> +	if (flags & SDVO_OUTPUT_RGB1)
>  		if (!intel_sdvo_analog_init(intel_sdvo, 1))
>  			return false;
>=20=20
> @@ -2963,11 +2980,11 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_=
sdvo, u16 flags)
>  		if (!intel_sdvo_lvds_init(intel_sdvo, 0))
>  			return false;
>=20=20
> -	if ((flags & SDVO_LVDS_MASK) =3D=3D SDVO_LVDS_MASK)
> +	if (flags & SDVO_OUTPUT_LVDS1)
>  		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
>  			return false;
>=20=20
> -	if ((flags & SDVO_OUTPUT_MASK) =3D=3D 0) {
> +	if (flags =3D=3D 0) {
>  		unsigned char bytes[2];
>=20=20
>  		intel_sdvo->controlled_output =3D 0;

--=20
Jani Nikula, Intel Open Source Graphics Center
