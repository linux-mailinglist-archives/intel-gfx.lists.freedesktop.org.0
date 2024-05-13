Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A158C3EC8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D3F10E5D7;
	Mon, 13 May 2024 10:21:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C351uPlk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0926810E5D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715595714; x=1747131714;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=iLKSzS0+JEjuQH4jERE4U9bBkbu37+TY+4A+10pghg8=;
 b=C351uPlkOS2Xg56ZCXHFj3/iopH7Q7XHipS8UkejqUaVvbJt6iKN280I
 D0ssA6xL75txvub+gJk8889iBVOMNV2Ut/4TyYBH2fxKGetGKIb0MW7O5
 kASGl5YEyAhFi5A/aWquMh5OZXz2MS8bjDzqXhHCoDbGhatx1oZ7xEyqa
 VLoV+B+Jd/v1ed/8CzD5tFxtWTRaOwFB6CG7z8YBFt/mv/qIilmaztsqq
 f5CxFrp8WB7D457mHOneUXqQW0CvgO1N5iU08iFzd5Rt20d8GUqBZKe4n
 MoGGMw1/mk6r+fHRJuxk3DaUrGXLq4xzn2jCYFVOFROGv1vjDLMoONbVl w==;
X-CSE-ConnectionGUID: ThrKpM1KSh+2AHy868tECw==
X-CSE-MsgGUID: ZGR20C+UQOeTGEHF82Xe2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="14470371"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="14470371"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:21:53 -0700
X-CSE-ConnectionGUID: plw4/N6BTgWSDMsf9pk5Sg==
X-CSE-MsgGUID: lIMzUU5TS+mo7/2ctGh23A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34805606"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:21:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 05/16] drm/i915/gvt: Use the proper PLANE_AUX_DIST() define
In-Reply-To: <20240510152329.24098-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-6-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:21:48 +0300
Message-ID: <87ttj2f1vn.fsf@intel.com>
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
> Stop hand rolling PLANE_AUX_DIST() and just use the real thing.
>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> CC: Zhi Wang <zhi.wang.linux@gmail.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gvt/handlers.c         | 24 ++++++++++-----------
>  drivers/gpu/drm/i915/gvt/reg.h              |  1 -
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 24 ++++++++++-----------
>  3 files changed, 24 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 6c857beb5083..6b02612ddef5 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2678,20 +2678,20 @@ static int init_skl_mmio_info(struct intel_gvt *g=
vt)
>  	MMIO_DH(PLANE_NV12_BUF_CFG(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
>  	MMIO_DH(PLANE_NV12_BUF_CFG(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 1)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 2)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 3)), D_SKL_PLUS, NULL, NULL);
> -	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 4)), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 0), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 1), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
> +	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
>=20=20
>  	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 1)), D_SKL_PLUS, NULL, NULL);
>  	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 2)), D_SKL_PLUS, NULL, NULL);
> diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/re=
g.h
> index d8216c63c39a..e8a56faafe95 100644
> --- a/drivers/gpu/drm/i915/gvt/reg.h
> +++ b/drivers/gpu/drm/i915/gvt/reg.h
> @@ -57,7 +57,6 @@
>=20=20
>  #define VGT_SPRSTRIDE(pipe)	_PIPE(pipe, _SPRA_STRIDE, _PLANE_STRIDE_2_B)
>=20=20
> -#define _REG_701C0(pipe, plane) (0x701c0 + pipe * 0x1000 + (plane - 1) *=
 0x100)
>  #define _REG_701C4(pipe, plane) (0x701c4 + pipe * 0x1000 + (plane - 1) *=
 0x100)
>=20=20
>  #define SKL_FLIP_EVENT(pipe, plane) (PRIMARY_A_FLIP_DONE + (plane) * 3 +=
 (pipe))
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index 3b79c1c84b79..cf45342a6db0 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -1006,18 +1006,18 @@ static int iterate_skl_plus_mmio(struct intel_gvt=
_mmio_table_iter *iter)
>  	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 1));
>  	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 2));
>  	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 3));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 1)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 2)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 3)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 4)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 1)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 2)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 3)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 4)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 1)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 2)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 3)));
> -	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 4)));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_A, 0));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_A, 1));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_A, 2));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_A, 3));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_B, 0));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_B, 1));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_B, 2));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_B, 3));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_C, 0));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_C, 1));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_C, 2));
> +	MMIO_D(PLANE_AUX_DIST(PIPE_C, 3));
>  	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 1)));
>  	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 2)));
>  	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 3)));

--=20
Jani Nikula, Intel
