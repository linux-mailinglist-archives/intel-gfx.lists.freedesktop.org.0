Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6C1896E83
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEE2112677;
	Wed,  3 Apr 2024 11:54:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvEhl5L6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CDE11267E;
 Wed,  3 Apr 2024 11:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712145243; x=1743681243;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A54HZw1QdGMUfdsOd2UN4Osnfk04vJ3/pSeStR3avqI=;
 b=PvEhl5L6zPvYCHiVCtPA4wvqmzp7/rg03W771B9iWcIhjWc5LC37ZZzK
 vxMjTmM91Uw4CVUCvingxexfC6xy2en6rMJkTTn8WE0QsNUs+vSWYFwgn
 WBAPRiEbKcGHIXXN3+AIHQyVGSvTO2bMitW4kqwuFkeaPPU5vXebx1pUB
 bQw+IFei54Ez6eSBW1CPGnr1hnyiYkyZH42sKoRpzSLDMl7qFbztJMp+z
 az7nPXSTCdGaFy4/6bo2ZuoKmLBmJQV68FDr5tke5NjBhG2YDsmwEGKNk
 zsMhQa6e2sLDg2mCYZYuGgGAqX8lpwA7bQ2H+5TSirbacQOeYkj5uObId w==;
X-CSE-ConnectionGUID: YU47BK9xRS2kt0/B2GTNeg==
X-CSE-MsgGUID: aGOg6f5GRW+0KOMQoh4/Nw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7294361"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7294361"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:54:03 -0700
X-CSE-ConnectionGUID: QZjhc13MQwSlWvfUzxbaFA==
X-CSE-MsgGUID: tA5LxwfdQo2mwvmuoubFNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="55869016"
Received: from melsaid-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.235])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:54:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Balasubramani Vivekanandan
 <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH v2 16/25] drm/xe/xe2hpd: Define a new DRAM type
 INTEL_DRAM_GDDR
In-Reply-To: <20240403112253.1432390-17-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-17-balasubramani.vivekanandan@intel.com>
Date: Wed, 03 Apr 2024 14:53:57 +0300
Message-ID: <874jciek6i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 03 Apr 2024, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> Defined a new DRAM type to be used in the following patches.
> The following patch first makes use of this new type in the i915
> display. So without this define, build would fail when the shared
> display code is built for Xe.

Just make it part of that patch I think.

>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_device_types.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 1df3dcc17d75..e7aa2dd3df8d 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -480,6 +480,7 @@ struct xe_device {
>  			INTEL_DRAM_LPDDR4,
>  			INTEL_DRAM_DDR5,
>  			INTEL_DRAM_LPDDR5,
> +			INTEL_DRAM_GDDR,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;

-- 
Jani Nikula, Intel
