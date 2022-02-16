Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC104B8554
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 11:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4761110EA46;
	Wed, 16 Feb 2022 10:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B22010EA46
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645006522; x=1676542522;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Qg4T+wQkDJGsRKWPQQsv90U8c1ADeQw4fDaq+Xd18G0=;
 b=OckPl2nFCs/kbYiTp9VtaWyr8VXORAM++zSzb63ISex1wSJkfouuDbBO
 BZgVz9djo/s5vme83YShAlpfsBAnIHiUYJ8+/zFja2rLTBf/b07Qc5mDP
 3bjcAspHjzQD3hqXqkPo7O9eKwAzkeaTMpsJMiu/vIEHQqjKszxFxwIw8
 RK24QUHpSP1TgnB+cHK7z9qrQxK7HDpDvqyUR0PsmSVO2/fP1Q3Y/2LZ0
 RmqUzb9yNHmJMcwhl2G/myD1eeVqmQHiBkfpg39bAn4WAhv6+xl0Uch8W
 rCW+zZ1Cd24+OAnct/ME2DE7+t4ifM6H3Rx7KLKYpyjrwKbO2qmYTwD4C w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250516095"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250516095"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 02:12:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="636419675"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 02:12:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-8-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 12:12:15 +0200
Message-ID: <87r1833ytc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Clean up SSKPD/MLTR defines
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Give names to the SSKPD/MLTR fields, and use the
> REG_GENMASK* and REG_FIELD_GET*.
>
> Also drop the bogus non-mirrored SSKP register define.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 27 ++++++++++++---------------
>  drivers/gpu/drm/i915/intel_pm.c | 24 ++++++++++++------------
>  2 files changed, 24 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 87c92314ee26..278c9cbc6f3c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1896,10 +1896,17 @@
>  #define   MAD_DIMM_A_SIZE_SHIFT		0
>  #define   MAD_DIMM_A_SIZE_MASK		(0xff << MAD_DIMM_A_SIZE_SHIFT)
>=20=20
> -/* snb MCH registers for priority tuning */
>  #define MCH_SSKPD			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
> -#define   MCH_SSKPD_WM0_MASK		0x3f
> -#define   MCH_SSKPD_WM0_VAL		0xc
> +#define   SSKPD_NEW_WM0_MASK_HSW	REG_GENMASK64(63, 56)
> +#define   SSKPD_WM4_MASK_HSW		REG_GENMASK64(40, 32)
> +#define   SSKPD_WM3_MASK_HSW		REG_GENMASK64(28, 20)
> +#define   SSKPD_WM2_MASK_HSW		REG_GENMASK64(19, 12)
> +#define   SSKPD_WM1_MASK_HSW		REG_GENMASK64(11, 4)
> +#define   SSKPD_OLD_WM0_MASK_HSW	REG_GENMASK64(3, 0)
> +#define   SSKPD_WM3_MASK_SNB		REG_GENMASK(29, 24)
> +#define   SSKPD_WM2_MASK_SNB		REG_GENMASK(21, 16)
> +#define   SSKPD_WM1_MASK_SNB		REG_GENMASK(13, 8)
> +#define   SSKPD_WM0_MASK_SNB		REG_GENMASK(5, 0)
>=20=20
>  /* Clocking configuration register */
>  #define CLKCFG			_MMIO(MCHBAR_MIRROR_BASE + 0xc00)
> @@ -4321,19 +4328,9 @@
>=20=20
>  /* Memory latency timer register */
>  #define MLTR_ILK		_MMIO(0x11222)
> -#define  MLTR_WM1_SHIFT		0
> -#define  MLTR_WM2_SHIFT		8
>  /* the unit of memory self-refresh latency time is 0.5us */
> -#define  ILK_SRLT_MASK		0x3f
> -
> -
> -/* the address where we get all kinds of latency value */
> -#define SSKPD			_MMIO(0x5d10)
> -#define SSKPD_WM_MASK		0x3f
> -#define SSKPD_WM0_SHIFT		0
> -#define SSKPD_WM1_SHIFT		8
> -#define SSKPD_WM2_SHIFT		16
> -#define SSKPD_WM3_SHIFT		24
> +#define  MLTR_WM2_MASK		REG_GENMASK(13, 8)
> +#define  MLTR_WM1_MASK		REG_GENMASK(5, 0)
>=20=20
>  /*
>   * The two pipe frame counter registers are not synchronized, so
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 34e46a9b8300..605944551e1b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2946,27 +2946,27 @@ static void intel_read_wm_latency(struct drm_i915=
_private *dev_priv,
>  	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>  		u64 sskpd =3D intel_uncore_read64(uncore, MCH_SSKPD);
>=20=20
> -		wm[0] =3D (sskpd >> 56) & 0xFF;
> +		wm[0] =3D REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
>  		if (wm[0] =3D=3D 0)
> -			wm[0] =3D sskpd & 0xF;
> -		wm[1] =3D (sskpd >> 4) & 0xFF;
> -		wm[2] =3D (sskpd >> 12) & 0xFF;
> -		wm[3] =3D (sskpd >> 20) & 0x1FF;
> -		wm[4] =3D (sskpd >> 32) & 0x1FF;
> +			wm[0] =3D REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
> +		wm[1] =3D REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
> +		wm[2] =3D REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
> +		wm[3] =3D REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
> +		wm[4] =3D REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
>  	} else if (DISPLAY_VER(dev_priv) >=3D 6) {
>  		u32 sskpd =3D intel_uncore_read(uncore, MCH_SSKPD);
>=20=20
> -		wm[0] =3D (sskpd >> SSKPD_WM0_SHIFT) & SSKPD_WM_MASK;
> -		wm[1] =3D (sskpd >> SSKPD_WM1_SHIFT) & SSKPD_WM_MASK;
> -		wm[2] =3D (sskpd >> SSKPD_WM2_SHIFT) & SSKPD_WM_MASK;
> -		wm[3] =3D (sskpd >> SSKPD_WM3_SHIFT) & SSKPD_WM_MASK;
> +		wm[0] =3D REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
> +		wm[1] =3D REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> +		wm[2] =3D REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
> +		wm[3] =3D REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
>  	} else if (DISPLAY_VER(dev_priv) >=3D 5) {
>  		u32 mltr =3D intel_uncore_read(uncore, MLTR_ILK);
>=20=20
>  		/* ILK primary LP0 latency is 700 ns */
>  		wm[0] =3D 7;
> -		wm[1] =3D (mltr >> MLTR_WM1_SHIFT) & ILK_SRLT_MASK;
> -		wm[2] =3D (mltr >> MLTR_WM2_SHIFT) & ILK_SRLT_MASK;
> +		wm[1] =3D REG_FIELD_GET(MLTR_WM1_MASK, mltr);
> +		wm[2] =3D REG_FIELD_GET(MLTR_WM2_MASK, mltr);
>  	} else {
>  		MISSING_CASE(INTEL_DEVID(dev_priv));
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
