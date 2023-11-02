Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC827DF3D3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3514B10E8AB;
	Thu,  2 Nov 2023 13:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C1410E8AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698931882; x=1730467882;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+GFd2JgrUKB2NOUZ6M9pgMXDcmlxFSL0tzR8RIBP8Gw=;
 b=jRa9zkdm4ABDw7XFjpRiW+CelAcg/r8gjS7gSSwS7ARALfGhrpq/Unj8
 Z86ZcNxUv/0NUBE1eYK5JUiOkPWvt3mkGr1gze95zBXYq2zkEEdfN8vv0
 NmIguv/GGigWKgfsMbmH2c2t9sHm6zsGJ70sMXVLuyftwLri5GknlrxGj
 /M0RSywbTxaf80UYNuG3lKnrIFtYEe6HcXI+Eqf4UekxNFYheUJZ0Y0bu
 3MmcSeRonQsK/8GtUdPcj0sXST3geY7/fcXwOLowopdmunXwtFrZde6mX
 NksVS3OWSbx3MzirYKvRcDqr8fwm4ohvGrtMVdUUVXXvMK8R2EJOx398X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1635457"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="1635457"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:31:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="827135586"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="827135586"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:31:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101114212.9345-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-4-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 15:31:16 +0200
Message-ID: <87bkcc2sez.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Extract mchbar_reg()
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

On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop repeating the same logic to determine the correct
> config space register for MCHBAR.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_gmch.c | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915=
/soc/intel_gmch.c
> index f32e9f78770a..40874ebfb64c 100644
> --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
> @@ -33,18 +33,22 @@ int intel_gmch_bridge_setup(struct drm_i915_private *=
i915)
>  					i915->gmch.pdev);
>  }
>=20=20
> +static int mchbar_reg(struct drm_i915_private *i915)
> +{
> +	return GRAPHICS_VER(i915) >=3D 4 ? MCHBAR_I965 : MCHBAR_I915;
> +}
> +
>  /* Allocate space for the MCH regs if needed, return nonzero on error */
>  static int
>  intel_alloc_mchbar_resource(struct drm_i915_private *i915)
>  {
> -	int reg =3D GRAPHICS_VER(i915) >=3D 4 ? MCHBAR_I965 : MCHBAR_I915;
>  	u32 temp_lo, temp_hi =3D 0;
>  	u64 mchbar_addr;
>  	int ret;
>=20=20
>  	if (GRAPHICS_VER(i915) >=3D 4)
> -		pci_read_config_dword(i915->gmch.pdev, reg + 4, &temp_hi);
> -	pci_read_config_dword(i915->gmch.pdev, reg, &temp_lo);
> +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4, &temp_hi);

How about having mchbar_hi_reg() and mchbar_lo_reg(), and drop the magic
+ 4 here and there?

Either way,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp_lo);
>  	mchbar_addr =3D ((u64)temp_hi << 32) | temp_lo;
>=20=20
>  	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
> @@ -68,10 +72,10 @@ intel_alloc_mchbar_resource(struct drm_i915_private *=
i915)
>  	}
>=20=20
>  	if (GRAPHICS_VER(i915) >=3D 4)
> -		pci_write_config_dword(i915->gmch.pdev, reg + 4,
> +		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4,
>  				       upper_32_bits(i915->gmch.mch_res.start));
>=20=20
> -	pci_write_config_dword(i915->gmch.pdev, reg,
> +	pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
>  			       lower_32_bits(i915->gmch.mch_res.start));
>  	return 0;
>  }
> @@ -79,7 +83,6 @@ intel_alloc_mchbar_resource(struct drm_i915_private *i9=
15)
>  /* Setup MCHBAR if possible, return true if we should disable it again */
>  void intel_gmch_bar_setup(struct drm_i915_private *i915)
>  {
> -	int mchbar_reg =3D GRAPHICS_VER(i915) >=3D 4 ? MCHBAR_I965 : MCHBAR_I91=
5;
>  	u32 temp;
>  	bool enabled;
>=20=20
> @@ -92,7 +95,7 @@ void intel_gmch_bar_setup(struct drm_i915_private *i915)
>  		pci_read_config_dword(i915->gmch.pdev, DEVEN, &temp);
>  		enabled =3D !!(temp & DEVEN_MCHBAR_EN);
>  	} else {
> -		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
> +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
>  		enabled =3D temp & 1;
>  	}
>=20=20
> @@ -110,15 +113,13 @@ void intel_gmch_bar_setup(struct drm_i915_private *=
i915)
>  		pci_write_config_dword(i915->gmch.pdev, DEVEN,
>  				       temp | DEVEN_MCHBAR_EN);
>  	} else {
> -		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
> -		pci_write_config_dword(i915->gmch.pdev, mchbar_reg, temp | 1);
> +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
> +		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915), temp | 1);
>  	}
>  }
>=20=20
>  void intel_gmch_bar_teardown(struct drm_i915_private *i915)
>  {
> -	int mchbar_reg =3D GRAPHICS_VER(i915) >=3D 4 ? MCHBAR_I965 : MCHBAR_I91=
5;
> -
>  	if (i915->gmch.mchbar_need_disable) {
>  		if (IS_I915G(i915) || IS_I915GM(i915)) {
>  			u32 deven_val;
> @@ -131,10 +132,10 @@ void intel_gmch_bar_teardown(struct drm_i915_privat=
e *i915)
>  		} else {
>  			u32 mchbar_val;
>=20=20
> -			pci_read_config_dword(i915->gmch.pdev, mchbar_reg,
> +			pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915),
>  					      &mchbar_val);
>  			mchbar_val &=3D ~1;
> -			pci_write_config_dword(i915->gmch.pdev, mchbar_reg,
> +			pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
>  					       mchbar_val);
>  		}
>  	}

--=20
Jani Nikula, Intel
