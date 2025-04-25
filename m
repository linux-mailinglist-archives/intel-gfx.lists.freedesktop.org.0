Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F52A9C040
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 09:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D4B10E8AD;
	Fri, 25 Apr 2025 07:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GgNQH1vC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D96210E8A9;
 Fri, 25 Apr 2025 07:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745567961; x=1777103961;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=h4iOBZ59fktIHjN9U/oodWigLneksyn9qeVhjdbT7/I=;
 b=GgNQH1vCnvrIMAxeA1TkRCTSFo2T0eC+2Ojby+X9razlCvbYs70jF0hb
 Gq+wiuZC+Pn4NOPUb5VTVg+bLBSq4ydqF2m9Mt7nXtK8nt15FVwS5uYTP
 dngglru551pMgnh+S1rg44QqBYGpyPoFCW9ivz1+Gjed8myCQE8ZVarYp
 awX3YtnEOBwDujugEDLDJNZL6cgYe10xLykN+uct6XSTxp1H+Gg0IGjNi
 tFivq5/kAULpZxq0Ed2G2E6WIwb6RI+/QfPWzbNm4Uw1e+h6TB+bofkDv
 ocuWGKotBf2FQJIWtlbIjIA5P3wLkgiql5QWFynvwYS/lQQ4h1ZpVvX5Q Q==;
X-CSE-ConnectionGUID: +7lhD+IkRTCGWrDdlnQXuA==
X-CSE-MsgGUID: Q4IKnWJWRJmeMdIvJo8OLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="50889549"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="50889549"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 00:59:20 -0700
X-CSE-ConnectionGUID: mLApreHQRv2F+ccffiznuA==
X-CSE-MsgGUID: iogPStJpTTGNOTRU+QdKJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132724960"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 00:59:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Harry Austen <hpausten@protonmail.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, Harry
 Austen <hpausten@protonmail.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH v2] drm/xe: Allow building as kernel built-in
In-Reply-To: <20250425073534.101976-1-hpausten@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250425073534.101976-1-hpausten@protonmail.com>
Date: Fri, 25 Apr 2025 10:59:12 +0300
Message-ID: <87y0voy8mn.fsf@intel.com>
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
> ---
> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>
>  drivers/gpu/drm/xe/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> index 9bce047901b22..bc63c396d7fef 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_XE
>  	tristate "Intel Xe Graphics"
> -	depends on DRM && PCI && MMU && (m || (y && KUNIT=3Dy))
> +	depends on DRM && PCI && MMU && (m || (y && KUNIT!=3Dm))

I can't make heads or tails about that. I think expressing the kunit
dependency on a separate line like this is both much more common and
clear:

	depends on KUNIT || KUNIT=3Dn

>  	select INTERVAL_TREE
>  	# we need shmfs for the swappable backing store, and in particular
>  	# the shmem_readpage() which depends upon tmpfs
> @@ -51,7 +51,7 @@ config DRM_XE
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
