Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E148A9BE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 09:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EF511374A;
	Tue, 11 Jan 2022 08:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58FA11374A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641890578; x=1673426578;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tsyULj5vA5xbQREs5UXmb9C/CIAr3VXcuGrTH+kIpgQ=;
 b=Iru8T4of79dTBnRbZqWauUXf7e/XKlwMC2oJQxT0GBI9fGIjj1eDdZ9Z
 ppf6fh8sNLobpA4ytWs0wm+ZpSiCz9ksw+SHKzgcjEzRd6NWWlsVJ2hXz
 LwplAix7lqwFpfAicRomXQMLuiaaasmFhA0F2zIr4OWbSOVtEcq0b4fcc
 vPwEXP+MFsv/F6Bvj0WuDrXFU07lGIHu1l7ILTh9ClqE6Y+ZFH5J27X4B
 VCPzwy+DASiFK3Nn+VRdI/eVXdL5xFvNFhUvp7jnH0c51O4wywUuz6oHk
 6zZEyeJw4LUz5feVucGWJUww8szkoDt5jVvm6ItueYryOtRM3eKMFbV4/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="304174707"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="304174707"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:42:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="515020744"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:42:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220111051600.3429104-7-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-7-matthew.d.roper@intel.com>
Date: Tue, 11 Jan 2022 10:42:47 +0200
Message-ID: <87sftu8xyw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 06/11] drm/i915: Introduce i915_reg_defs.h
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

On Mon, 10 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> We'd like to start splitting i915_reg.h into various domain-specific
> register files and cleaning them up.  Let's move the basic macros and
> type definitions to their own header file that can be including in each
> of the new split headers.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

One nitpick near the end, can be fixed while applying, otherwise,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h      | 88 +------------------------
>  drivers/gpu/drm/i915/i915_reg_defs.h | 98 ++++++++++++++++++++++++++++
>  2 files changed, 99 insertions(+), 87 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_reg_defs.h
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 25f6bde36add..b7e03b6e886d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -25,8 +25,7 @@
>  #ifndef _I915_REG_H_
>  #define _I915_REG_H_
>=20=20
> -#include <linux/bitfield.h>
> -#include <linux/bits.h>
> +#include "i915_reg_defs.h"
>=20=20
>  /**
>   * DOC: The i915 register macro definition style guide
> @@ -116,91 +115,6 @@
>   *  #define GEN8_BAR                    _MMIO(0xb888)
>   */
>=20=20
> -/**
> - * REG_BIT() - Prepare a u32 bit value
> - * @__n: 0-based bit number
> - *
> - * Local wrapper for BIT() to force u32, with compile time checks.
> - *
> - * @return: Value with bit @__n set.
> - */
> -#define REG_BIT(__n)							\
> -	((u32)(BIT(__n) +						\
> -	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
> -				 ((__n) < 0 || (__n) > 31))))
> -
> -/**
> - * REG_GENMASK() - Prepare a continuous u32 bitmask
> - * @__high: 0-based high bit
> - * @__low: 0-based low bit
> - *
> - * Local wrapper for GENMASK() to force u32, with compile time checks.
> - *
> - * @return: Continuous bitmask from @__high to @__low, inclusive.
> - */
> -#define REG_GENMASK(__high, __low)					\
> -	((u32)(GENMASK(__high, __low) +					\
> -	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
> -				 __is_constexpr(__low) &&		\
> -				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
> -
> -/*
> - * Local integer constant expression version of is_power_of_2().
> - */
> -#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) =3D=3D 0))
> -
> -/**
> - * REG_FIELD_PREP() - Prepare a u32 bitfield value
> - * @__mask: shifted mask defining the field's length and position
> - * @__val: value to put in the field
> - *
> - * Local copy of FIELD_PREP() to generate an integer constant expression=
, force
> - * u32 and for consistency with REG_FIELD_GET(), REG_BIT() and REG_GENMA=
SK().
> - *
> - * @return: @__val masked and shifted into the field defined by @__mask.
> - */
> -#define REG_FIELD_PREP(__mask, __val)						\
> -	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
> -	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
> -	       BUILD_BUG_ON_ZERO((__mask) =3D=3D 0 || (__mask) > U32_MAX) +		\
> -	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__=
mask)))) + \
> -	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (=
~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> -
> -/**
> - * REG_FIELD_GET() - Extract a u32 bitfield value
> - * @__mask: shifted mask defining the field's length and position
> - * @__val: value to extract the bitfield value from
> - *
> - * Local wrapper for FIELD_GET() to force u32 and for consistency with
> - * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
> - *
> - * @return: Masked and shifted value of the field defined by @__mask in =
@__val.
> - */
> -#define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
> -
> -typedef struct {
> -	u32 reg;
> -} i915_reg_t;
> -
> -#define _MMIO(r) ((const i915_reg_t){ .reg =3D (r) })
> -
> -#define INVALID_MMIO_REG _MMIO(0)
> -
> -static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
> -{
> -	return reg.reg;
> -}
> -
> -static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
> -{
> -	return i915_mmio_reg_offset(a) =3D=3D i915_mmio_reg_offset(b);
> -}
> -
> -static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> -{
> -	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
> -}
> -
>  #define VLV_DISPLAY_BASE		0x180000
>  #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
>  #define BXT_MIPI_BASE			0x60000
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/=
i915_reg_defs.h
> new file mode 100644
> index 000000000000..5f64aa086ace
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -0,0 +1,98 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_REG_DEFS__
> +#define __I915_REG_DEFS__
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +
> +/**
> + * REG_BIT() - Prepare a u32 bit value
> + * @__n: 0-based bit number
> + *
> + * Local wrapper for BIT() to force u32, with compile time checks.
> + *
> + * @return: Value with bit @__n set.
> + */
> +#define REG_BIT(__n)							\
> +	((u32)(BIT(__n) +						\
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
> +				 ((__n) < 0 || (__n) > 31))))
> +
> +/**
> + * REG_GENMASK() - Prepare a continuous u32 bitmask
> + * @__high: 0-based high bit
> + * @__low: 0-based low bit
> + *
> + * Local wrapper for GENMASK() to force u32, with compile time checks.
> + *
> + * @return: Continuous bitmask from @__high to @__low, inclusive.
> + */
> +#define REG_GENMASK(__high, __low)					\
> +	((u32)(GENMASK(__high, __low) +					\
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
> +				 __is_constexpr(__low) &&		\
> +				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
> +
> +/*
> + * Local integer constant expression version of is_power_of_2().
> + */
> +#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) =3D=3D 0))
> +
> +/**
> + * REG_FIELD_PREP() - Prepare a u32 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to put in the field
> + *
> + * Local copy of FIELD_PREP() to generate an integer constant expression=
, force
> + * u32 and for consistency with REG_FIELD_GET(), REG_BIT() and REG_GENMA=
SK().
> + *
> + * @return: @__val masked and shifted into the field defined by @__mask.
> + */
> +#define REG_FIELD_PREP(__mask, __val)						\
> +	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
> +	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
> +	       BUILD_BUG_ON_ZERO((__mask) =3D=3D 0 || (__mask) > U32_MAX) +		\
> +	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__=
mask)))) + \
> +	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (=
~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> +
> +/**
> + * REG_FIELD_GET() - Extract a u32 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to extract the bitfield value from
> + *
> + * Local wrapper for FIELD_GET() to force u32 and for consistency with
> + * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
> + *
> + * @return: Masked and shifted value of the field defined by @__mask in =
@__val.
> + */
> +#define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
> +
> +typedef struct {
> +	u32 reg;
> +} i915_reg_t;
> +
> +#define _MMIO(r) ((const i915_reg_t){ .reg =3D (r) })
> +
> +#define INVALID_MMIO_REG _MMIO(0)
> +
> +static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
> +{
> +	return reg.reg;
> +}
> +
> +static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
> +{
> +	return i915_mmio_reg_offset(a) =3D=3D i915_mmio_reg_offset(b);
> +}
> +
> +static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> +{
> +	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
> +}
> +
> +

The double newline is going to give a checkpatch complaint.

> +#endif /* __I915_REG_DEFS__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
