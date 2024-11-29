Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811E49DE852
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244DB10E4B6;
	Fri, 29 Nov 2024 14:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X8PY4rLK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D0BE10E4B6;
 Fri, 29 Nov 2024 14:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732889861; x=1764425861;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=DktufulOD0ZJ9wrGmJXZZ1v7uSVbPKkgZ52HzAy1nVU=;
 b=X8PY4rLKK1946BxTobpv2+B5kHc7ljk2Tck+uJpqaRIjq/AFpvPIa8lL
 Nzd92HsmxWEpJTAR8Q6zOB4SCmogRHE3TnJLK/UxnzbaaD2DRaXSOB8fa
 ogwwziL+IoTTD5NzaxWBScOEnhEJ/CVLbUOLDxQBTXJ5BFhTVu2qSzHik
 5s83uAnJVcR54xGfk3tAAdz4B2c35uwYWknjAj6lJOr5FXudfCKCLCazD
 YFcAlavb9Lo6JPbU64ybSxpKnmb0JF5UzEwc2h2BSvHVL5trh2jwo2lqP
 /Q14oyzK3IgJpAsGVLq0myLOAzLJWzPvcJ38QNP608Az9SSwWdLuo2VGS A==;
X-CSE-ConnectionGUID: +x3N0uxFQvSbo3q/+vJ/Lw==
X-CSE-MsgGUID: 3c2ZvvKTQYKG2wPGf9U58Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="44501277"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44501277"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:17:41 -0800
X-CSE-ConnectionGUID: 0uyNWt25R323O5O42sezCw==
X-CSE-MsgGUID: H6PgrnqkRGKrbhRgEz+KHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="123464107"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:17:39 -0800
Date: Fri, 29 Nov 2024 16:18:18 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/6] drm/i915/display: power conversion to struct
 intel_display
Message-ID: <Z0nNKuZpvT0sEeiF@ideak-desk.fi.intel.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 28, 2024 at 05:38:18PM +0200, Jani Nikula wrote:
> This is v2 of [1] with patch 1 dropped, and some minor checkpatch issues
> fixed.
> 
> [1] https://lore.kernel.org/r/cover.1732727056.git.jani.nikula@intel.com

The patchset looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> 
> Jani Nikula (6):
>   drm/i915/display: convert for_each_power_well() to struct
>     intel_display
>   drm/i915/display: convert for_each_power_domain_well() to struct
>     intel_display
>   drm/i915/display: convert power wells to struct intel_display
>   drm/i915/display: convert power domain code internally to struct
>     intel_display
>   drm/i915/display: convert high level power interfaces to struct
>     intel_display
>   drm/i915/display: convert power map to struct intel_display
> 
>  .../drm/i915/display/intel_display_debugfs.c  |   3 +-
>  .../drm/i915/display/intel_display_driver.c   |   8 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |   3 +-
>  .../drm/i915/display/intel_display_power.c    | 948 +++++++++---------
>  .../drm/i915/display/intel_display_power.h    |  31 +-
>  .../i915/display/intel_display_power_map.c    |  56 +-
>  .../i915/display/intel_display_power_well.c   | 548 +++++-----
>  .../i915/display/intel_display_power_well.h   |  35 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   7 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  32 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |  28 +-
>  15 files changed, 870 insertions(+), 843 deletions(-)
> 
> -- 
> 2.39.5
> 
