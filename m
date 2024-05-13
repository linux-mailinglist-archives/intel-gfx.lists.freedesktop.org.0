Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE9A8C3ECD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAED810E60A;
	Mon, 13 May 2024 10:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFQbsfcC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4873910E60A
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715595840; x=1747131840;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=K24ytPLcgrB3BwkVWGPc+7/4fuYKSx99SofhnUKIhpE=;
 b=JFQbsfcCAfGKw+bg0JGMxZKp3oOdX3GwvxlDDnIgCDOdOhMBRK0JyeUB
 1Z1zmlDF3qTOt/MUjlzPejybOwsgBOZubpcz7ARwSYMsVPpsZHbEqs5KW
 qEYhjwzqDD7TVSIFagoRE5Egfvp7opYRXdjQeir/qCEwSHDvXCsV2SqY6
 lS/FyvnUnrTxCguFZj/ZkDt/jv2KAU7Tgh9v+QaImW13CdAeX/1PKl/NH
 yaOvk2jYsgvkhSF4uyH3Y5eKWWXpLVDY7GFnXXvankWFoKFbwKLpJt711
 WOP0eqezGavZdqn48a0sX7lVv/SFb21Ts1U2kr8Na1C1yjWqBCpYyTvrF Q==;
X-CSE-ConnectionGUID: CarqQjR7Q/2eUsdkYPd3Ig==
X-CSE-MsgGUID: nR5WUgJZQCip6BwKZjpmEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29037373"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29037373"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:24:00 -0700
X-CSE-ConnectionGUID: Z5xp5d+fQH2xui6/pXGxcQ==
X-CSE-MsgGUID: 0qVGsbH1RFWXy2NCosMFDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30135399"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:23:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 06/16] drm/i915/gvt: Use the proper PLANE_AUX_OFFSET()
 define
In-Reply-To: <20240510152329.24098-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-7-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:23:54 +0300
Message-ID: <87r0e6f1s5.fsf@intel.com>
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

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop hand rolling PLANE_AUX_OFFSET() and just use the real thing.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gvt/handlers.c         | 24 ++++++++++-----------
>  drivers/gpu/drm/i915/gvt/reg.h              |  2 --
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 24 ++++++++++-----------
>  3 files changed, 24 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 6b02612ddef5..6f633035618e 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2693,20 +2693,20 @@ static int init_skl_mmio_info(struct intel_gvt *g=
vt)
>  	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
>  	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_A, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_A, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_A, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_A, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_B, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_B, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_B, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_B, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_B, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_B, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_B, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_B, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_C, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_C, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_OFFSET(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
>  	MMIO_DFH(BDW_SCRATCH1, D_SKL_PLUS, F_CMD_ACCESS, NULL, NULL);
>=20=20
> diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/re=
g.h
> index e8a56faafe95..90d8eb1761a3 100644
> --- a/drivers/gpu/drm/i915/gvt/reg.h
> +++ b/drivers/gpu/drm/i915/gvt/reg.h
> @@ -57,8 +57,6 @@
>=20=20
>  #define VGT_SPRSTRIDE(pipe)	_PIPE(pipe, _SPRA_STRIDE, _PLANE_STRIDE_2_B)
>=20=20
> -#define _REG_701C4(pipe, plane) (0x701c4 + pipe * 0x1000 + (plane - 1) *=
 0x100)
> -
>  #define SKL_FLIP_EVENT(pipe, plane) (PRIMARY_A_FLIP_DONE + (plane) * 3 +=
 (pipe))
>=20=20
>  #define REG50080_FLIP_TYPE_MASK	0x3
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index cf45342a6db0..ad3bf60855bc 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -1018,18 +1018,18 @@ static int iterate_skl_plus_mmio(struct intel_gvt=
_mmio_table_iter *iter)
>  	MMIO_D(PLANE_AUX_DIST(PIPE_C, 1));
>  	MMIO_D(PLANE_AUX_DIST(PIPE_C, 2));
>  	MMIO_D(PLANE_AUX_DIST(PIPE_C, 3));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 1)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 2)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 3)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 4)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 1)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 2)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 3)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 4)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 1)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 2)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 3)));
> -	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 4)));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_A, 0));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_A, 1));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_A, 2));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_A, 3));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_B, 0));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_B, 1));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_B, 2));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_B, 3));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 0));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 1));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 2));
> +	MMIO_D(PLANE_AUX_OFFSET(PIPE_C, 3));
>  	MMIO_D(_MMIO(_PLANE_CTL_3_A));
>  	MMIO_D(_MMIO(_PLANE_CTL_3_B));
>  	MMIO_D(_MMIO(0x72380));

--=20
Jani Nikula, Intel
