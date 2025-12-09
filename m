Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA47DCAFAE8
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755F610E4FB;
	Tue,  9 Dec 2025 10:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pyj5Vxiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E400110E4FB;
 Tue,  9 Dec 2025 10:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277378; x=1796813378;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JHglNqfE2hfVOAND3K0F6d2AyyvBm6O+Tf65RSXShRQ=;
 b=Pyj5Vxiu/+bxhwWnHr9J5D6lAAEgrA6rCpf0t051XAwm7e73VKQCor8t
 rlcNNIKi09m7+5IDmEd/MRL8duNdAS1vY1/ZdWmIYr//eyTXSdesVn5jh
 6L2DdTTDvd5QPeqeYHdo/VEl4cyZms9VxSPuuRT4bfmHbMOZtSnSUoNPm
 2mwiKCCCpCG8AndYrL38zWITL1Jv2V5r5+iPixQauoA+Yh9pY2vesWrMN
 DWYzBzACUvJkQ4aH3OpWzXxnb7PwIPSDcXyUQFX4X8ycxdjsoPzs+NrSY
 or/frBu/F4yZLo9cRDgALGpaybXI3Lct9dZmojtkK7du/HAzwZ5BmBtnb Q==;
X-CSE-ConnectionGUID: UVCv5u9MTxibMk6xG/8luQ==
X-CSE-MsgGUID: LauMTw21RyuYUxWFy6rnkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="77847125"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="77847125"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:49:37 -0800
X-CSE-ConnectionGUID: w2i+Ia2lSRuamR439CKn1Q==
X-CSE-MsgGUID: BiJyEqlpRI69NRtmsNw4tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="195798090"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:49:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/19] drm/i915/de: Add intel_de_write8()
In-Reply-To: <20251208182637.334-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-12-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:49:33 +0200
Message-ID: <967625ce5e8dad522bf4fa1defe9fec34a240de3@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a write counterpart to intel_de_read8(). Will be used for
> MMIO access to VGA registers on pre-g4x.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h               | 8 ++++++++
>  drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 8 ++++++++
>  drivers/gpu/drm/xe/xe_mmio.c                          | 9 +++++++++
>  drivers/gpu/drm/xe/xe_mmio.h                          | 1 +
>  4 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index 5c1b37d30045..f30f3f8ebee1 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -42,6 +42,14 @@ intel_de_read8(struct intel_display *display, i915_reg=
_t reg)
>  	return intel_uncore_read8(__to_uncore(display), reg);
>  }
>=20=20
> +static inline void
> +intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
> +{
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
> +
> +	intel_uncore_write8(__to_uncore(display), reg, val);
> +}
> +
>  static inline u64
>  intel_de_read64_2x32(struct intel_display *display,
>  		     i915_reg_t lower_reg, i915_reg_t upper_reg)
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/driv=
ers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index d93ddacdf743..02b096bd7a4c 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -40,6 +40,14 @@ static inline u8 intel_uncore_read8(struct intel_uncor=
e *uncore,
>  	return xe_mmio_read8(__compat_uncore_to_mmio(uncore), reg);
>  }
>=20=20
> +static inline void intel_uncore_write8(struct intel_uncore *uncore,
> +				       i915_reg_t i915_reg, u8 val)
> +{
> +	struct xe_reg reg =3D XE_REG(i915_mmio_reg_offset(i915_reg));
> +
> +	xe_mmio_write8(__compat_uncore_to_mmio(uncore), reg, val);
> +}
> +
>  static inline u16 intel_uncore_read16(struct intel_uncore *uncore,
>  				      i915_reg_t i915_reg)
>  {
> diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
> index 350dca1f0925..6bdaedc1da73 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.c
> +++ b/drivers/gpu/drm/xe/xe_mmio.c
> @@ -158,6 +158,15 @@ u8 xe_mmio_read8(struct xe_mmio *mmio, struct xe_reg=
 reg)
>  	return val;
>  }
>=20=20
> +void xe_mmio_write8(struct xe_mmio *mmio, struct xe_reg reg, u8 val)
> +{
> +	u32 addr =3D xe_mmio_adjusted_addr(mmio, reg.addr);
> +
> +	trace_xe_reg_rw(mmio, true, addr, val, sizeof(val));
> +
> +	writeb(val, mmio->regs + addr);
> +}
> +
>  u16 xe_mmio_read16(struct xe_mmio *mmio, struct xe_reg reg)
>  {
>  	u32 addr =3D xe_mmio_adjusted_addr(mmio, reg.addr);
> diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
> index 15362789ab99..cd355a43af3d 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.h
> +++ b/drivers/gpu/drm/xe/xe_mmio.h
> @@ -17,6 +17,7 @@ int xe_mmio_probe_tiles(struct xe_device *xe);
>  void xe_mmio_init(struct xe_mmio *mmio, struct xe_tile *tile, void __iom=
em *ptr, u32 size);
>=20=20
>  u8 xe_mmio_read8(struct xe_mmio *mmio, struct xe_reg reg);
> +void xe_mmio_write8(struct xe_mmio *mmio, struct xe_reg reg, u8 val);
>  u16 xe_mmio_read16(struct xe_mmio *mmio, struct xe_reg reg);
>  void xe_mmio_write32(struct xe_mmio *mmio, struct xe_reg reg, u32 val);
>  u32 xe_mmio_read32(struct xe_mmio *mmio, struct xe_reg reg);

--=20
Jani Nikula, Intel
