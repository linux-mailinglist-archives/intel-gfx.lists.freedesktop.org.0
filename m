Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C048C3EF3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D99010E624;
	Mon, 13 May 2024 10:32:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/lMjH/u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D5E10E624
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596367; x=1747132367;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Wh/nvtYMZrEBhxYz5gYMFPifaggbFYT+1naHYFyMofw=;
 b=d/lMjH/u1yyatESeI2653hNeO8UOzBKfWt5EK1aygBv2vf3i6ZJvO2ar
 xgQzcYPrzriPZV3taqxk8YUfEpr+xb+SDUjBUBLURUm3ZQzZ48F5KUTID
 wFEf9NN/vT70L0MvCmYFb9Dhs4Aq5lQiUku1t7JDnU3sJhJroxvGJKQct
 MxW3QyWXGPZvDX47Fr1Ot6uN/DseIaLylXXGFThiQ2eA6hQoQv+xydmz1
 eMaKy9tFyUkSlSmI4MOCr66nUfjsPfxRoTdKZU9LIHu4/OYZk7F9XHAql
 HPmHN5MnVXaTkJgi+wXj3wfBImAyO1XMSzA0KGdxnvqs8/NVl11d5l2jH Q==;
X-CSE-ConnectionGUID: FE4Y4VXSTs69HtOd+06sIw==
X-CSE-MsgGUID: rzS1hivLScipMZ/8aaHHqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="14471158"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="14471158"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:32:47 -0700
X-CSE-ConnectionGUID: aV5z2EIMQ6+9d9zbS95zYQ==
X-CSE-MsgGUID: aGBE2lVXRpuAHAjsXtnNAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="34808944"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:32:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/16] drm/i915: Drop useless PLANE_FOO_3 register defines
In-Reply-To: <20240510152329.24098-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-10-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:32:42 +0300
Message-ID: <87ikzif1dh.fsf@intel.com>
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
> We only need register defines for the first two planes
> on the first two pipes. Nuke everything else.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/skl_universal_plane_regs.h  | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 2222d0c760e8..0558d97614e1 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -234,49 +234,38 @@
>=20=20
>  #define _PLANE_CTL_1_B				0x71180
>  #define _PLANE_CTL_2_B				0x71280
> -#define _PLANE_CTL_3_B				0x71380
>  #define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
>  #define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> -#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
>  #define PLANE_CTL(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
>=20=20
>  #define _PLANE_STRIDE_1_B			0x71188
>  #define _PLANE_STRIDE_2_B			0x71288
> -#define _PLANE_STRIDE_3_B			0x71388
>  #define _PLANE_STRIDE_1(pipe)	\
>  	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
>  #define _PLANE_STRIDE_2(pipe)	\
>  	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
> -#define _PLANE_STRIDE_3(pipe)	\
> -	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
>  #define PLANE_STRIDE(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
>=20=20
>  #define _PLANE_POS_1_B				0x7118c
>  #define _PLANE_POS_2_B				0x7128c
> -#define _PLANE_POS_3_B				0x7138c
>  #define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
>  #define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
> -#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
>  #define PLANE_POS(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
>=20=20
>  #define _PLANE_SIZE_1_B				0x71190
>  #define _PLANE_SIZE_2_B				0x71290
> -#define _PLANE_SIZE_3_B				0x71390
>  #define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
>  #define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
> -#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
>  #define PLANE_SIZE(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
>=20=20
>  #define _PLANE_SURF_1_B				0x7119c
>  #define _PLANE_SURF_2_B				0x7129c
> -#define _PLANE_SURF_3_B				0x7139c
>  #define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
>  #define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
> -#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
>  #define PLANE_SURF(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
>=20=20
> @@ -351,7 +340,6 @@
>=20=20
>  #define _PLANE_COLOR_CTL_1_B			0x711CC
>  #define _PLANE_COLOR_CTL_2_B			0x712CC
> -#define _PLANE_COLOR_CTL_3_B			0x713CC
>  #define _PLANE_COLOR_CTL_1(pipe)	\
>  	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
>  #define _PLANE_COLOR_CTL_2(pipe)	\

--=20
Jani Nikula, Intel
