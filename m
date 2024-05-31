Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2FF8D60C2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E9810E33F;
	Fri, 31 May 2024 11:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxw/wel9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D5B10E332;
 Fri, 31 May 2024 11:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155332; x=1748691332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Kvfx5b0hHhcNEJKNFqQQfbzAOHW2mU49UwiO3tb66/Q=;
 b=nxw/wel96o4Myu4OHtFvNbQME0AmsYNmgGFNgruwwzxAaROzIBWUnouN
 jgbAcK+ysVOLwkc9PS/+hLJAcIVkbO2bIC0+mhTg2Mkg6KZQhvDgIX3Bh
 ced81hexV1wiNFqJmhUzPn552LaG/meWgDyu4B86MuuGrbVuYxsvN6iQz
 wpAkw/ODfEhzZ2hURJTxGQV+3MzIbylb8LYSNiK3J/UY+H9LjhvD8wwyf
 co2De3K4KQ/vQR6ySYjsl+TyU9ZNDK6HIZm+FHdeQys/JQlJ8+fcv6e/8
 oh75LGWvcXbSG0q1qIpVUB4KVV2lvnmxS418M/2i4Y7dB907xsNIbtY0u g==;
X-CSE-ConnectionGUID: 705a9V8LRUKWtovZezf3NQ==
X-CSE-MsgGUID: X9sh143bQBGxhVNlp304Wg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863629"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863629"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:35:31 -0700
X-CSE-ConnectionGUID: cXlukcgmQJK0MoP93dZcjw==
X-CSE-MsgGUID: lrhmtNO7Tk66fgFO4HDpjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36131346"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:35:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:35:27 +0300
Date: Fri, 31 May 2024 14:35:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 03/10] drm/i915/display: include i915_gpu_error.h where
 needed
Message-ID: <Zlm1__e57Bt11mAM@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Wed, May 29, 2024 at 08:48:07PM +0300, Jani Nikula wrote:
> Include what you use. With this, we can drop the include from xe compat
> i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 63fccdda56c0..b5ebb0f5b269 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -26,6 +26,7 @@
>  #include <linux/firmware.h>
>  
>  #include "i915_drv.h"
> +#include "i915_gpu_error.h"

Someone should probably convert intel_dmc_print_error_state()
to use the drm_printer interface instead, assuming that is the
only thing that needs this header in intel_dmc.c.

-- 
Ville Syrjälä
Intel
