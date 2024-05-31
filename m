Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF2B8D68B9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 20:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A7D10E185;
	Fri, 31 May 2024 18:07:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxV3bdlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883D610E185
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 18:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717178874; x=1748714874;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7xBE+SvvfFf//ERf1HgZ4tjUMMo9PDVZOF1+/Ikp74Q=;
 b=CxV3bdlDi5EtVgNCunlVy2ts4jQcPaQNwL7RAgumGTjCOlW7LkxG0RQO
 iWO8rjI+oSXAhEFHwMh5eW5UI+o+K90s5YPu2JMg4PrcixLiX6UVa5QMd
 f+wCxfgPbH+G98VgDsv1RsLfH8pKvknW4x9u0cszQRGwAeiOogw4NTYbM
 YVvxqJ5cmIM3peURwpbvWXKYFlQ3tkELtaBZNrb4vwu7gs/IUuWMVxJ54
 ixRWNqpNThp7INdVQIjoGzCj7+rCWDhfxDULezxP5VhfifXrzspuMvtcd
 vPitn4NvrGRLAy+OpnLD4itYRtbtr3STbOhTowEYljWw6OHKuW1FDfziv Q==;
X-CSE-ConnectionGUID: oGC7OMpATiKsNK7iyoDIIw==
X-CSE-MsgGUID: sZObQQzbSaCAw6HMveGqJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="39132654"
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="39132654"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 11:07:53 -0700
X-CSE-ConnectionGUID: +FscU0FNSo+145fZHCIw3A==
X-CSE-MsgGUID: Mgf5vgz9SbKMPqDacHRp7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="36851784"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 11:07:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/7] drm/i915: Define the PIPE_CRC_EXP registers
In-Reply-To: <20240531115342.2763-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-7-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 21:07:48 +0300
Message-ID: <878qzpetxn.fsf@intel.com>
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

On Fri, 31 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> I need a scratch register which fill the following requirements:
> - can be accessed via DSB
> - all the bits can be read/written
> - no serious side effects
>
> So far the only thing I could think of is the "expected CRC"
> register. Add the definition so I can use it.
>
> While I only need the hsw+ variant currently, let's define the
> older variants as well for completeness.

I'm having a hard time finding the spec for the old ones.

The hsw+ is fine.

Acked-by: Jani Nikula <jani.nikula@intel.com>



>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_pipe_crc_regs.h    | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers=
/gpu/drm/i915/display/intel_pipe_crc_regs.h
> index 4f4bf51e1940..383910a785f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
> @@ -56,6 +56,24 @@
>  #define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I=
9XX, 7)
>  /* gen2 doesn't have source selection bits */
>  #define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
> +#define   PIPE_CRC_EXP_RED_MASK		REG_BIT(22, 0) /* pre-ivb */
> +#define   PIPE_CRC_EXP_1_MASK_IVB	REG_BIT(22, 0) /* ivb */
> +
> +#define _PIPE_CRC_EXP_GREEN_A		0x60054
> +#define PIPE_CRC_EXP_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, =
_PIPE_CRC_EXP_GREEN_A)
> +#define   PIPE_CRC_EXP_GREEN_MASK	REG_BIT(22, 0) /* pre-ivb */
> +
> +#define _PIPE_CRC_EXP_BLUE_A		0x60058
> +#define PIPE_CRC_EXP_BLUE(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _=
PIPE_CRC_EXP_BLUE_A)
> +#define   PIPE_CRC_EXP_BLUE_MASK	REG_BIT(22, 0) /* pre-ivb */
> +
> +#define _PIPE_CRC_EXP_RES1_A_I915	0x6005c /* i915+ */
> +#define PIPE_CRC_EXP_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pi=
pe, _PIPE_CRC_EXP_RES1_A_I915)
> +#define   PIPE_CRC_EXP_RES1_MASK	REG_BIT(22, 0) /* pre-ivb */
> +
> +#define _PIPE_CRC_EXP_RES2_A_G4X	0x60080 /* g4x+ */
> +#define PIPE_CRC_EXP_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pip=
e, _PIPE_CRC_EXP_RES2_A_G4X)
> +#define   PIPE_CRC_EXP_RES2_MASK	REG_BIT(22, 0) /* pre-ivb */
>=20=20
>  #define _PIPE_CRC_RES_RED_A		0x60060
>  #define PIPE_CRC_RES_RED(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _P=
IPE_CRC_RES_RED_A)
> @@ -72,6 +90,30 @@
>  #define _PIPE_CRC_RES_RES2_A_G4X	0x60080 /* g4x+ */
>  #define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pip=
e, _PIPE_CRC_RES_RES2_A_G4X)
>=20=20
> +/* ivb */
> +#define _PIPE_CRC_EXP_2_A_IVB		0x60054
> +#define _PIPE_CRC_EXP_2_B_IVB		0x61054
> +#define PIPE_CRC_EXP_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB=
, _PIPE_CRC_EXP_2_B_IVB)
> +#define   PIPE_CRC_EXP_2_MASK_IVB	REG_BIT(22, 0) /* ivb */
> +
> +/* ivb */
> +#define _PIPE_CRC_EXP_3_A_IVB		0x60058
> +#define _PIPE_CRC_EXP_3_B_IVB		0x61058
> +#define PIPE_CRC_EXP_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_3_A_IVB=
, _PIPE_CRC_EXP_3_B_IVB)
> +#define   PIPE_CRC_EXP_3_MASK_IVB	REG_BIT(22, 0) /* ivb */
> +
> +/* ivb */
> +#define _PIPE_CRC_EXP_4_A_IVB		0x6005c
> +#define _PIPE_CRC_EXP_4_B_IVB		0x6105c
> +#define PIPE_CRC_EXP_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB=
, _PIPE_CRC_EXP_2_B_IVB)
> +#define   PIPE_CRC_EXP_4_MASK_IVB	REG_BIT(22, 0) /* ivb */
> +
> +/* ivb */
> +#define _PIPE_CRC_EXP_5_A_IVB		0x60060
> +#define _PIPE_CRC_EXP_5_B_IVB		0x61060
> +#define PIPE_CRC_EXP_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_EXP_2_A_IVB=
, _PIPE_CRC_EXP_2_B_IVB)
> +#define   PIPE_CRC_EXP_5_MASK_IVB	REG_BIT(22, 0) /* ivb */
> +
>  /* ivb */
>  #define _PIPE_CRC_RES_1_A_IVB		0x60064
>  #define _PIPE_CRC_RES_1_B_IVB		0x61064
> @@ -97,6 +139,11 @@
>  #define _PIPE_CRC_RES_5_B_IVB		0x61074
>  #define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB=
, _PIPE_CRC_RES_5_B_IVB)
>=20=20
> +/* hsw+ */
> +#define _PIPE_CRC_EXP_A_HSW		0x60054
> +#define _PIPE_CRC_EXP_B_HSW		0x61054
> +#define PIPE_CRC_EXP_HSW(pipe)			_MMIO_PIPE(pipe, _PIPE_CRC_EXP_A_HSW, _=
PIPE_CRC_EXP_B_HSW)
> +
>  /* hsw+ */
>  #define _PIPE_CRC_RES_A_HSW		0x60064
>  #define _PIPE_CRC_RES_B_HSW		0x61064

--=20
Jani Nikula, Intel
