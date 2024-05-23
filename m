Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD9B8CCED9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 11:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36CC10E175;
	Thu, 23 May 2024 09:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxkw+M7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF4610E175
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716455759; x=1747991759;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=e3/oI5NWO6gDeAK8HMZMaQbfyqlCIs684NcIeoqzCCU=;
 b=mxkw+M7E3Kgg0oVETZj60ac8yPq+Ta+r8iuoXRTV/KIl5z/ObM4DxbNK
 llPCZk5O4UQe+fdRs/ENpJUw8PnSW0fFOlfcNqyb2g+7w5dK/C2IPxpAC
 8exMrY06A8hhLnIqFhufy6IVTVyQP6cl+eRzXVypA0jPostin/FTa6CNS
 zGq9Bvdi93sNNfR/CZKNub/H4TZY82gMW58fbwOgtclAZKL0rfvXn9Erl
 hywpvvAP5TI9HA50KigAzdFoAeO2taHny7dpN8VqIwiSTLbJq2T7NJny5
 IMMv5HCWe//Fc6R40ZqB+NAZKGf1RDKyfgbZb4JheszBeTZvSDoefPups Q==;
X-CSE-ConnectionGUID: 3AdCM/fiQDWJpWnGUv+rzw==
X-CSE-MsgGUID: S2dXfHcwRdia26jMvIOLXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12607726"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="12607726"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 02:15:59 -0700
X-CSE-ConnectionGUID: /29lQYhLTd+Pz5XCpBf2+A==
X-CSE-MsgGUID: SqkA7KcVTPaTdlSuZMcoTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33447320"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 02:15:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/13] drm/i915: Define SEL_FETCH_PLANE registers via
 PICK_EVEN_2RANGES()
In-Reply-To: <20240516135622.3498-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-7-ville.syrjala@linux.intel.com>
Date: Thu, 23 May 2024 12:15:53 +0300
Message-ID: <87ikz4q46u.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of that huge _PICK() let's use PICK_EVEN_2RANGES()
> for the SEL_FETCH_PLANE registers. A bit more tedious to have
> to define 8 raw register offsets for everything, but perhaps
> a bit easier to understand since we use a standard mechanism
> now instead of hand rolling the arithmetic.
>
> Also bloat-o-meter says:
> add/remove: 0/0 grow/shrink: 0/3 up/down: 0/-326 (-326)
> Function                                     old     new   delta
> icl_plane_update_arm                         510     446     -64
> icl_plane_disable_sel_fetch_arm.isra         158      54    -104
> icl_plane_update_noarm                      1898    1740    -158
> Total: Before=3D2574502, After=3D2574176, chg -0.01%
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I just don't understand the old one.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 45 ------------
>  .../i915/display/skl_universal_plane_regs.h   | 68 +++++++++++++++++++
>  2 files changed, 68 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/=
drm/i915/display/intel_psr_regs.h
> index f0bd0a726d7a..289c371c98d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -251,51 +251,6 @@
>  #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
>  #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TP=
T_A, _PIPE_SRCSZ_ERLY_TPT_B)
>=20=20
> -#define _SEL_FETCH_PLANE_BASE_1_A		0x70890
> -#define _SEL_FETCH_PLANE_BASE_2_A		0x708B0
> -#define _SEL_FETCH_PLANE_BASE_3_A		0x708D0
> -#define _SEL_FETCH_PLANE_BASE_4_A		0x708F0
> -#define _SEL_FETCH_PLANE_BASE_5_A		0x70920
> -#define _SEL_FETCH_PLANE_BASE_6_A		0x70940
> -#define _SEL_FETCH_PLANE_BASE_7_A		0x70960
> -#define _SEL_FETCH_PLANE_BASE_CUR_A		0x70880
> -#define _SEL_FETCH_PLANE_BASE_1_B		0x71890
> -
> -#define _SEL_FETCH_PLANE_BASE_A(plane) _PICK(plane, \
> -					     _SEL_FETCH_PLANE_BASE_1_A, \
> -					     _SEL_FETCH_PLANE_BASE_2_A, \
> -					     _SEL_FETCH_PLANE_BASE_3_A, \
> -					     _SEL_FETCH_PLANE_BASE_4_A, \
> -					     _SEL_FETCH_PLANE_BASE_5_A, \
> -					     _SEL_FETCH_PLANE_BASE_6_A, \
> -					     _SEL_FETCH_PLANE_BASE_7_A, \
> -					     _SEL_FETCH_PLANE_BASE_CUR_A)
> -#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_=
1_A, _SEL_FETCH_PLANE_BASE_1_B)
> -#define _SEL_FETCH_PLANE_BASE(pipe, plane) (_SEL_FETCH_PLANE_BASE_1(pipe=
) - \
> -					    _SEL_FETCH_PLANE_BASE_1_A + \
> -					    _SEL_FETCH_PLANE_BASE_A(plane))
> -
> -#define _SEL_FETCH_PLANE_CTL_1_A		0x70890
> -#define SEL_FETCH_PLANE_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
> -					       _SEL_FETCH_PLANE_CTL_1_A - \
> -					       _SEL_FETCH_PLANE_BASE_1_A)
> -#define SEL_FETCH_PLANE_CTL_ENABLE		REG_BIT(31)
> -
> -#define _SEL_FETCH_PLANE_POS_1_A		0x70894
> -#define SEL_FETCH_PLANE_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
> -					       _SEL_FETCH_PLANE_POS_1_A - \
> -					       _SEL_FETCH_PLANE_BASE_1_A)
> -
> -#define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
> -#define SEL_FETCH_PLANE_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pi=
pe, plane) + \
> -						_SEL_FETCH_PLANE_SIZE_1_A - \
> -						_SEL_FETCH_PLANE_BASE_1_A)
> -
> -#define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
> -#define SEL_FETCH_PLANE_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(=
pipe, plane) + \
> -						  _SEL_FETCH_PLANE_OFFSET_1_A - \
> -						  _SEL_FETCH_PLANE_BASE_1_A)
> -
>  #define _ALPM_CTL_A	0x60950
>  #define ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_=
A)
>  #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index cb3bdd71b6b2..a6528e0d719e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -17,6 +17,17 @@
>  #define _MMIO_SKL_PLANE_DW(pipe, plane, dw, reg_1_a, reg_1_b, reg_2_a, r=
eg_2_b) \
>  	_MMIO(_SKL_PLANE_DW((pipe), (plane), (dw), (reg_1_a), (reg_1_b), (reg_2=
_a), (reg_2_b)))
>=20=20
> +#define _SEL_FETCH(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b, reg_=
5_a, reg_5_b, reg_6_a, reg_6_b) \
> +	_PICK_EVEN_2RANGES((plane), PLANE_5, \
> +			   _PIPE((pipe), (reg_1_a), (reg_1_b)), \
> +			   _PIPE((pipe), (reg_2_a), (reg_2_b)), \
> +			   _PIPE((pipe), (reg_5_a), (reg_5_b)), \
> +			   _PIPE((pipe), (reg_6_a), (reg_6_b)))
> +#define _MMIO_SEL_FETCH(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b,=
 reg_5_a, reg_5_b, reg_6_a, reg_6_b) \
> +	_MMIO(_SEL_FETCH((pipe), (plane), \
> +			 (reg_1_a), (reg_1_b), (reg_2_a), (reg_2_b), \
> +			 (reg_5_a), (reg_5_b), (reg_6_a), (reg_6_b)))
> +
>  #define _PLANE_CTL_1_A				0x70180
>  #define _PLANE_CTL_2_A				0x70280
>  #define _PLANE_CTL_1_B				0x71180
> @@ -367,4 +378,61 @@
>  #define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
>  #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (=
start))
>=20=20
> +#define _SEL_FETCH_PLANE_CTL_1_A		0x70890 /* mtl+ */
> +#define _SEL_FETCH_PLANE_CTL_2_A		0x708b0
> +#define _SEL_FETCH_PLANE_CTL_5_A		0x70920
> +#define _SEL_FETCH_PLANE_CTL_6_A		0x70940
> +#define _SEL_FETCH_PLANE_CTL_1_B		0x71890
> +#define _SEL_FETCH_PLANE_CTL_2_B		0x718b0
> +#define _SEL_FETCH_PLANE_CTL_5_B		0x71920
> +#define _SEL_FETCH_PLANE_CTL_6_B		0x71940
> +#define SEL_FETCH_PLANE_CTL(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane)=
,\
> +								_SEL_FETCH_PLANE_CTL_1_A, _SEL_FETCH_PLANE_CTL_1_B, \
> +								_SEL_FETCH_PLANE_CTL_2_A, _SEL_FETCH_PLANE_CTL_2_B, \
> +								_SEL_FETCH_PLANE_CTL_5_A, _SEL_FETCH_PLANE_CTL_5_B, \
> +								_SEL_FETCH_PLANE_CTL_6_A, _SEL_FETCH_PLANE_CTL_6_B)
> +#define   SEL_FETCH_PLANE_CTL_ENABLE		REG_BIT(31)
> +
> +#define _SEL_FETCH_PLANE_POS_1_A		0x70894 /* mtl+ */
> +#define _SEL_FETCH_PLANE_POS_2_A		0x708b4
> +#define _SEL_FETCH_PLANE_POS_5_A		0x70924
> +#define _SEL_FETCH_PLANE_POS_6_A		0x70944
> +#define _SEL_FETCH_PLANE_POS_1_B		0x71894
> +#define _SEL_FETCH_PLANE_POS_2_B		0x718b4
> +#define _SEL_FETCH_PLANE_POS_5_B		0x71924
> +#define _SEL_FETCH_PLANE_POS_6_B		0x71944
> +#define SEL_FETCH_PLANE_POS(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane)=
,\
> +								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
> +								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
> +								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
> +								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
> +
> +#define _SEL_FETCH_PLANE_SIZE_1_A		0x70898 /* mtl+ */
> +#define _SEL_FETCH_PLANE_SIZE_2_A		0x708b8
> +#define _SEL_FETCH_PLANE_SIZE_5_A		0x70928
> +#define _SEL_FETCH_PLANE_SIZE_6_A		0x70948
> +#define _SEL_FETCH_PLANE_SIZE_1_B		0x71898
> +#define _SEL_FETCH_PLANE_SIZE_2_B		0x718b8
> +#define _SEL_FETCH_PLANE_SIZE_5_B		0x71928
> +#define _SEL_FETCH_PLANE_SIZE_6_B		0x71948
> +#define SEL_FETCH_PLANE_SIZE(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane=
),\
> +								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
> +								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
> +								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
> +								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
> +
> +#define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089c /* mtl+ */
> +#define _SEL_FETCH_PLANE_OFFSET_2_A		0x708bc
> +#define _SEL_FETCH_PLANE_OFFSET_5_A		0x7092c
> +#define _SEL_FETCH_PLANE_OFFSET_6_A		0x7094c
> +#define _SEL_FETCH_PLANE_OFFSET_1_B		0x7189c
> +#define _SEL_FETCH_PLANE_OFFSET_2_B		0x718bc
> +#define _SEL_FETCH_PLANE_OFFSET_5_B		0x7192c
> +#define _SEL_FETCH_PLANE_OFFSET_6_B		0x7194c
> +#define SEL_FETCH_PLANE_OFFSET(pipe, plane)	_MMIO_SEL_FETCH((pipe), (pla=
ne),\
> +								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
> +								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
> +								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
> +								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
> +
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */

--=20
Jani Nikula, Intel
