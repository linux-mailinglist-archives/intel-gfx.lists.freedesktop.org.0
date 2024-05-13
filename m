Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805618C3F0D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014BF10E62E;
	Mon, 13 May 2024 10:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+76MA9z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F2610E62E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596731; x=1747132731;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YWFqXIVRkylauvITUt9aaeOEzVJdlnryfpGBw8PCDAk=;
 b=M+76MA9zm1mWXJSehetShiifaHpGYjCvHPExAWGKTuxf6w1vUZ4+hfou
 mWZJv/VNuBEoK7Y/vMg5O6dmZlItlw3VQDwUtSsNdvMg1KI0+l9AEJiS+
 BWTa+d1Py0qWIVPGl5dXjSFKbUsWHAU+T5Oa2iosi4tkNkgr4yB1/5wkk
 frYd3O2e3eabrOZVVWGwFGEOzdDgIna3n2Kx0WUoSnP8PfzZD0XzzmQGK
 gTVVGRPcjtWaj/6YUePdh1c1KH5kuvFfHHq9OiKaY/NPiriOB4t9axfQ1
 b5SIFR7G080q8myER7+VhNqzUyY8hNlv07OQ13C9q4P3cvinoSZZG4grG g==;
X-CSE-ConnectionGUID: aZBSHdRnTcKI9zdKuw9OCw==
X-CSE-MsgGUID: RNjCMpsGTeK3BH4RrEOoAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="36902967"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="36902967"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:51 -0700
X-CSE-ConnectionGUID: 0Dn9+46RQ6iT2FiUN4uwjg==
X-CSE-MsgGUID: sxX7HiJnQ5q9ynUj7Zl6Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30256701"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/16] drm/i915: Use REG_BIT for PLANE_WM bits
In-Reply-To: <20240510152329.24098-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-12-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:38:46 +0300
Message-ID: <87frumf13d.fsf@intel.com>
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
> A couple of PLANE_WM bits were still using the hand
> rolled (1<<N) form. Replace with REG_BIT().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 0ad14727e334..8ef9bd50d021 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -300,8 +300,8 @@
>  	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + (index) * 4, _PLANE_=
CSC_POSTOFF_HI_2(pipe) + (index) * 4)
>=20=20
>  #define _PLANE_WM_1_A_0				0x70240
> -#define   PLANE_WM_EN				(1 << 31)
> -#define   PLANE_WM_IGNORE_LINES			(1 << 30)
> +#define   PLANE_WM_EN				REG_BIT(31)
> +#define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
>  #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
>  #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
>  #define _PLANE_WM_1_B_0				0x71240

--=20
Jani Nikula, Intel
