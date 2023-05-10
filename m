Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5BC6FDE4D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 15:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DB610E077;
	Wed, 10 May 2023 13:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C3110E077
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 13:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683724550; x=1715260550;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1YG+Ky0aXCvJQyFbvqQXTrmacKzJVXHAMI8FIC2tfVY=;
 b=IjdyDnOL2rkb1UOOm53lVXu0KOUYRLsln8jx9h75+G9uAXJxGSGUz67l
 bbJZfMqPpYCOO/dsoKlK32di935lSBNh01pUe6B/GHQkCFI64Xe64sVqG
 pScwf9bPQM/Qa7WXIKkJlkzW3LnofEw7nOH1ljW06EmjmWTScYwrawsUK
 W+qSPO75nMbiqDUYYgG3sDX7u01AnboBC03om/Gzv3Q4mtSEvwo3hQmxi
 pSwjaDaWPyNDeMXNe3O7TluGDMWoDsQf/zXywJRF3tSfkcXJPJmCfkSTV
 SKFdus6pvhi5T10h1YaTBY2PaKOJRC23QP2CUeq+Y/USaHDLsZXUrsgEA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="347670440"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="347670440"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 06:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764281990"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="764281990"
Received: from azaki-mobl.amr.corp.intel.com (HELO localhost) ([10.252.63.3])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2023 06:15:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
Date: Wed, 10 May 2023 16:15:46 +0300
Message-ID: <87sfc4minx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/fourcc: define Intel Meteorlake
 related ccs modifiers
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

On Tue, 09 May 2023, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> Add Tile4 type ccs modifiers with aux buffer needed for MTL

Please send this Cc: dri-devel too.

BR,
Jani.

>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 43 +++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index de703c6be969..cbe214adf1e4 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -657,6 +657,49 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
>  
> +/*
> + * Intel color control surfaces (CCS) for display ver 14 render compression.
> + *
> + * The main surface is tile4 and at plane index 0, the CCS is linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface cache
> + * line pair. The main surface pitch is required to be a multiple of four
> + * tile4 widths.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS fourcc_mod_code(INTEL, 13)
> +
> +/*
> + * Intel color control surfaces (CCS) for display ver 14 media compression
> + *
> + * The main surface is tile4 and at plane index 0, the CCS is linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface cache
> + * line pair. The main surface pitch is required to be a multiple of four
> + * tile4 widths. For semi-planar formats like NV12, CCS planes follow the
> + * Y and UV planes i.e., planes 0 and 1 are used for Y and UV surfaces,
> + * planes 2 and 3 for the respective CCS.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_MC_CCS fourcc_mod_code(INTEL, 14)
> +
> +/*
> + * Intel Color Control Surface with Clear Color (CCS) for display ver 14 render
> + * compression.
> + *
> + * The main surface is tile4 and is at plane index 0 whereas CCS is linear
> + * and at index 1. The clear color is stored at index 2, and the pitch should
> + * be ignored. The clear color structure is 256 bits. The first 128 bits
> + * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
> + * by 32 bits. The raw clear color is consumed by the 3d engine and generates
> + * the converted clear color of size 64 bits. The first 32 bits store the Lower
> + * Converted Clear Color value and the next 32 bits store the Higher Converted
> + * Clear Color value when applicable. The Converted Clear Color values are
> + * consumed by the DE. The last 64 bits are used to store Color Discard Enable
> + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
> + * corresponds to an area of 4x1 tiles in the main surface. The main surface
> + * pitch is required to be a multiple of 4 tile widths.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *

-- 
Jani Nikula, Intel Open Source Graphics Center
