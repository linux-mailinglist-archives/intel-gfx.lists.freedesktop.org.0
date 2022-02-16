Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8B04B8508
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A66410E9E0;
	Wed, 16 Feb 2022 09:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46FD10E9DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645005509; x=1676541509;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9icH289zsN/UZGvPOuwhrbR6bu1EWNQ80x2tN3Nsq5s=;
 b=QdPHTNzh7e0meucfm977rFrv6Y8rPvJgRSkHbr2eqbJYErlm0fS/GgAb
 sKhHhkvlY2WopOkPNsO29lR2/cKkDq1DQ9ewKxPaIgDYgb/jyYvlIlTQ+
 0FwdhdJclt1UYkqEp1h2CcilYxdIXkqplXvwm0iz2RA8MxSlNJHgXFHHj
 pKRz1tibTpKCdmryhw6H/6wX/XfcclCrdncf91IXLlXGtncDIy54hbeKD
 7YLK7DAT/a0AzKF7pJHtKxC0JxxL9OFOikpwqLtzsS3vjTHtjGf9F5nwi
 FDD6HqcSI+NrgEGyG+MDNyL3/FKVtL1kMHuqn7179+HqJvWBIpyVQT1xi Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="249398596"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="249398596"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:57:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498635622"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:57:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211182045.23555-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-7-ville.syrjala@linux.intel.com>
 <20220211182045.23555-1-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:57:12 +0200
Message-ID: <87v8xf3zif.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Add REG_GENMASK64() and
 REG_FIELD_GET64()
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
> We treat SSKPD as a 64 bit register. Add the support macros
> to define/extract bits in such registers.
>
> v2: Fix 32bit builds
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg_defs.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/=
i915_reg_defs.h
> index 34d37bbf08cd..d78d78fce431 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -37,6 +37,21 @@
>  				 __is_constexpr(__low) &&		\
>  				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
>=20=20
> +/**
> + * REG_GENMASK64() - Prepare a continuous u64 bitmask
> + * @__high: 0-based high bit
> + * @__low: 0-based low bit
> + *
> + * Local wrapper for GENMASK_ULL() to force u64, with compile time check=
s.
> + *
> + * @return: Continuous bitmask from @__high to @__low, inclusive.
> + */
> +#define REG_GENMASK64(__high, __low)					\
> +	((u64)(GENMASK_ULL(__high, __low) +				\
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
> +				 __is_constexpr(__low) &&		\
> +				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
> +
>  /*
>   * Local integer constant expression version of is_power_of_2().
>   */
> @@ -71,6 +86,18 @@
>   */
>  #define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
>=20=20
> +/**
> + * REG_FIELD_GET64() - Extract a u64 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to extract the bitfield value from
> + *
> + * Local wrapper for FIELD_GET() to force u64 and for consistency with
> + * REG_GENMASK64().
> + *
> + * @return: Masked and shifted value of the field defined by @__mask in =
@__val.
> + */
> +#define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
> +
>  typedef struct {
>  	u32 reg;
>  } i915_reg_t;

--=20
Jani Nikula, Intel Open Source Graphics Center
