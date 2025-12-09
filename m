Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B922CAFB5B
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6985E10E511;
	Tue,  9 Dec 2025 11:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DmQVxdc3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB6A10E510;
 Tue,  9 Dec 2025 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765278055; x=1796814055;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TcA+gCFBHVMRV0cG8jJEdiZ9zKE7LVy4GM7UG6Pe2aE=;
 b=DmQVxdc3DO2sa7dFmelqRG2VFqrOJyPrF4GWu6T/hBlmdOWw4ZKI/Fn7
 8PviuxkNgAFd54G8UNJBVtiwkoJkkLQ4sukDme3bhtdKNvqIg6Ocn9p8W
 YpXgTdiDYO7KZ0LR669ruTyDmEUUYswHjvj3BQlGJ/J4P/Fe35EhH6iuz
 gmai1epY36l6flqEOzFcCwVL6vBdIko1TP93vQGYEdgI1PDuj2f/hyHb6
 2A8UB2x4kgPNRRXqRnU84dXHURqiQpTSqc3jEcpnLw9DZ6XKSwmvvRoXG
 QYrvetAdt/R/JCtBdzUI3ARjb/1CS8KMuBu9lOYBPP/HuYGhFUbNp42ho A==;
X-CSE-ConnectionGUID: qZV2Z+eJSh+xZUQXho5XOA==
X-CSE-MsgGUID: yPEAKDPvS9mOvDddVPxWDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67194153"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67194153"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:00:55 -0800
X-CSE-ConnectionGUID: i3UZPFO/SQmVhCesTsQI3Q==
X-CSE-MsgGUID: z3NsOcG/Q+WUGsKz9eGeTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200679055"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:00:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 18/19] drm/i915: Clean up PCI config space reg defines
In-Reply-To: <20251208182637.334-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-19-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 13:00:49 +0200
Message-ID: <648563e277208801e5ca4b700aea4329483ad3dd@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The PCI config space register defines in i915_drm.h are
> a bit of a mess; Whitespace is all over the place, register
> masks and values are defined in inconsitent ways.
>
> Clean it up a bit.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/drm/intel/i915_drm.h | 70 ++++++++++++++++++------------------
>  1 file changed, 34 insertions(+), 36 deletions(-)
>
> diff --git a/include/drm/intel/i915_drm.h b/include/drm/intel/i915_drm.h
> index 91f628367f1f..c633ce62f2bf 100644
> --- a/include/drm/intel/i915_drm.h
> +++ b/include/drm/intel/i915_drm.h
> @@ -45,38 +45,36 @@ extern struct resource intel_graphics_stolen_res;
>   * cares about the vga bit for the vga arbiter.
>   */
>  #define SNB_GMCH_CTRL		0x50
> -#define    SNB_GMCH_GGMS_SHIFT	8 /* GTT Graphics Memory Size */
> -#define    SNB_GMCH_GGMS_MASK	0x3
> -#define    SNB_GMCH_GMS_SHIFT   3 /* Graphics Mode Select */
> -#define    SNB_GMCH_GMS_MASK    0x1f
> -#define    BDW_GMCH_GGMS_SHIFT	6
> -#define    BDW_GMCH_GGMS_MASK	0x3
> -#define    BDW_GMCH_GMS_SHIFT   8
> -#define    BDW_GMCH_GMS_MASK    0xff
> +#define   SNB_GMCH_GGMS_SHIFT	8 /* GTT Graphics Memory Size */
> +#define   SNB_GMCH_GGMS_MASK	0x3
> +#define   SNB_GMCH_GMS_SHIFT	3 /* Graphics Mode Select */
> +#define   SNB_GMCH_GMS_MASK	0x1f
> +#define   BDW_GMCH_GGMS_SHIFT	6
> +#define   BDW_GMCH_GGMS_MASK	0x3
> +#define   BDW_GMCH_GMS_SHIFT	8
> +#define   BDW_GMCH_GMS_MASK	0xff
>=20=20
>  #define I830_GMCH_CTRL			0x52
> -
> -#define I830_GMCH_GMS_MASK		0x70
> -#define I830_GMCH_GMS_LOCAL		0x10
> -#define I830_GMCH_GMS_STOLEN_512	0x20
> -#define I830_GMCH_GMS_STOLEN_1024	0x30
> -#define I830_GMCH_GMS_STOLEN_8192	0x40
> -
> -#define I855_GMCH_GMS_MASK		0xF0
> -#define I855_GMCH_GMS_STOLEN_0M		0x0
> -#define I855_GMCH_GMS_STOLEN_1M		(0x1 << 4)
> -#define I855_GMCH_GMS_STOLEN_4M		(0x2 << 4)
> -#define I855_GMCH_GMS_STOLEN_8M		(0x3 << 4)
> -#define I855_GMCH_GMS_STOLEN_16M	(0x4 << 4)
> -#define I855_GMCH_GMS_STOLEN_32M	(0x5 << 4)
> -#define I915_GMCH_GMS_STOLEN_48M	(0x6 << 4)
> -#define I915_GMCH_GMS_STOLEN_64M	(0x7 << 4)
> -#define G33_GMCH_GMS_STOLEN_128M	(0x8 << 4)
> -#define G33_GMCH_GMS_STOLEN_256M	(0x9 << 4)
> -#define INTEL_GMCH_GMS_STOLEN_96M	(0xa << 4)
> -#define INTEL_GMCH_GMS_STOLEN_160M	(0xb << 4)
> -#define INTEL_GMCH_GMS_STOLEN_224M	(0xc << 4)
> -#define INTEL_GMCH_GMS_STOLEN_352M	(0xd << 4)
> +#define   I830_GMCH_GMS_MASK		(0x7 << 4)
> +#define   I830_GMCH_GMS_LOCAL		(0x1 << 4)
> +#define   I830_GMCH_GMS_STOLEN_512	(0x2 << 4)
> +#define   I830_GMCH_GMS_STOLEN_1024	(0x3 << 4)
> +#define   I830_GMCH_GMS_STOLEN_8192	(0x4 << 4)
> +#define   I855_GMCH_GMS_MASK		(0xF << 4)
> +#define   I855_GMCH_GMS_STOLEN_0M	(0x0 << 4)
> +#define   I855_GMCH_GMS_STOLEN_1M	(0x1 << 4)
> +#define   I855_GMCH_GMS_STOLEN_4M	(0x2 << 4)
> +#define   I855_GMCH_GMS_STOLEN_8M	(0x3 << 4)
> +#define   I855_GMCH_GMS_STOLEN_16M	(0x4 << 4)
> +#define   I855_GMCH_GMS_STOLEN_32M	(0x5 << 4)
> +#define   I915_GMCH_GMS_STOLEN_48M	(0x6 << 4)
> +#define   I915_GMCH_GMS_STOLEN_64M	(0x7 << 4)
> +#define   G33_GMCH_GMS_STOLEN_128M	(0x8 << 4)
> +#define   G33_GMCH_GMS_STOLEN_256M	(0x9 << 4)
> +#define   INTEL_GMCH_GMS_STOLEN_96M	(0xa << 4)
> +#define   INTEL_GMCH_GMS_STOLEN_160M	(0xb << 4)
> +#define   INTEL_GMCH_GMS_STOLEN_224M	(0xc << 4)
> +#define   INTEL_GMCH_GMS_STOLEN_352M	(0xd << 4)
>=20=20
>  /* valid for both I830_GMCH_CTRL and SNB_GMCH_CTRL */
>  #define   INTEL_GMCH_VGA_DISABLE  (1 << 1)
> @@ -88,12 +86,12 @@ extern struct resource intel_graphics_stolen_res;
>  #define I830_ESMRAMC		0x91
>  #define I845_ESMRAMC		0x9e
>  #define I85X_ESMRAMC		0x61
> -#define    TSEG_ENABLE		(1 << 0)
> -#define    I830_TSEG_SIZE_512K	(0 << 1)
> -#define    I830_TSEG_SIZE_1M	(1 << 1)
> -#define    I845_TSEG_SIZE_MASK	(3 << 1)
> -#define    I845_TSEG_SIZE_512K	(2 << 1)
> -#define    I845_TSEG_SIZE_1M	(3 << 1)
> +#define   TSEG_ENABLE		(1 << 0)
> +#define   I830_TSEG_SIZE_512K	(0 << 1)
> +#define   I830_TSEG_SIZE_1M	(1 << 1)
> +#define   I845_TSEG_SIZE_MASK	(3 << 1)
> +#define   I845_TSEG_SIZE_512K	(2 << 1)
> +#define   I845_TSEG_SIZE_1M	(3 << 1)
>=20=20
>  #define INTEL_BSM		0x5c
>  #define INTEL_GEN11_BSM_DW0	0xc0

--=20
Jani Nikula, Intel
