Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B785AA0AE9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 13:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31BC710E41B;
	Tue, 29 Apr 2025 11:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AwGEBHZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D7410E41B;
 Tue, 29 Apr 2025 11:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745927817; x=1777463817;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nWH+xT2ovDwUcvgunaecQlN8B7WTLKW1oC/M0WWGFnY=;
 b=AwGEBHZNI9lRCO32a9VNacPea8UqpSEXNVihgeVP8GgjJClBcZ9vxFGv
 UFDw2zU9AqonXRAjVxNAn5vX8KLWUyitLU/KdE8r/6Z3qGks4p9CYbwwH
 GdET3uQhnGu/p2nolStP3Ag5nP6fjW7585nCJx6s+Lt7czc0DiweEosGW
 Hw9lJL9G4k4g/GOFk18PmvJX3rWIXfjXbst5f4V0fvkvURetzFeHH9mNm
 pFi35eRn2Quy+l7ppmI7iINrt25EC1gA3xHZOrv/ugizfGwS8FtMg1y2k
 0MoL7Za/cp15PVm3W54UFJxu4/bNBe+Mw1ClaHmdeXugR+BbsLO5A0/ew Q==;
X-CSE-ConnectionGUID: PRU1EOvqRfSXnr+masJYcQ==
X-CSE-MsgGUID: g0TrTtx4SU+Yi/69gtKhUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="72921151"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="72921151"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:56:57 -0700
X-CSE-ConnectionGUID: lWmI91a3TnKrKmhQK9fY+Q==
X-CSE-MsgGUID: mH0psiiZSmW8zbUhsIJoTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="164892670"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:56:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Harry Austen <hpausten@protonmail.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, Harry
 Austen <hpausten@protonmail.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH v3] drm/xe: Allow building as kernel built-in
In-Reply-To: <20250425115148.12815-1-hpausten@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250425115148.12815-1-hpausten@protonmail.com>
Date: Tue, 29 Apr 2025 14:56:51 +0300
Message-ID: <874iy7w58c.fsf@intel.com>
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

On Fri, 25 Apr 2025, Harry Austen <hpausten@protonmail.com> wrote:
> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
> too.
>
> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
> isn't, since that results in duplicate symbol errors.
>
> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=3Dm")
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Harry Austen <hpausten@protonmail.com>

I didn't test this, but it makes sense to me.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>
>  drivers/gpu/drm/xe/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> index 9bce047901b22..214f40264fa12 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -1,7 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_XE
>  	tristate "Intel Xe Graphics"
> -	depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
> +	depends on DRM && PCI && MMU
> +	depends on KUNIT || KUNIT=3Dn
>  	select INTERVAL_TREE
>  	# we need shmfs for the swappable backing store, and in particular
>  	# the shmem_readpage() which depends upon tmpfs
> @@ -51,7 +52,7 @@ config DRM_XE
>=20=20
>  config DRM_XE_DISPLAY
>  	bool "Enable display support"
> -	depends on DRM_XE && DRM_XE=3Dm && HAS_IOPORT
> +	depends on DRM_XE && (DRM_XE=3Dm || DRM_I915!=3Dy) && HAS_IOPORT
>  	select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>  	select I2C
>  	select I2C_ALGOBIT

--=20
Jani Nikula, Intel
