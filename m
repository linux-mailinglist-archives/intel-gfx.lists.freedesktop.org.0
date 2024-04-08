Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EA889CB8D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA5DA112939;
	Mon,  8 Apr 2024 18:16:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cXbJHhGN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E494112937;
 Mon,  8 Apr 2024 18:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712600182; x=1744136182;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WD1Q0QCQQFVQAwJuHQRTqNBZeO1ouQRB6V5QNOC+zw8=;
 b=cXbJHhGN+v2s3799AdBuGkQjLbzmsre8fGzlCOTKye69eilF5nRyCoxl
 a3/Bmf2yeAH897+nAkJVOSwn8+T5bccNmyR+DxGa0OZghqeq9Taplp+JF
 FIeBltVIuwIDXHC1BPgRti/UJ3BN9qRTbkWVIKLKHZMYCxzq2+mNRifvm
 ug+DJyTJHo3yIBF5Y+Y+Y2LgqSqlF5XlCSRJYC2AYZDqrBnY/1reSOuBI
 BNGRVSmllC69Ak8aDiMrtGGQrdcmZCJ6oqaTbWidgNUC0JtHLxTyDa5R5
 7YTgAkyfEx8Pl+yay1xP8pMP+AVxLKqY4DnIWBp6MT6f5gVYTChg0gwsz w==;
X-CSE-ConnectionGUID: 3Heo+u+nRVC5+fWKa3GRNA==
X-CSE-MsgGUID: 0GaFw1kzQ7Kj5dZ4dhXUzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="8018772"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; 
   d="scan'208";a="8018772"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="827792370"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="827792370"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Apr 2024 11:16:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Apr 2024 21:15:59 +0300
Date: Mon, 8 Apr 2024 21:15:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 0/8] drm/i915: drm_i915_private and xe_device cleanups
Message-ID: <ZhQ0X5SQ-3AuMCuS@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
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

On Mon, Apr 08, 2024 at 09:08:35PM +0300, Jani Nikula wrote:
> Continue cleaning up the members from drm_i915_private and xe_device to
> struct intel_display.
> 
> Jani Nikula (8):
>   drm/i915/gt: drop display clock info from gt debugfs
>   drm/i915: move skl_preferred_vco_freq to display substruct
>   drm/i915: move max_dotclk_freq to display substruct
>   drm/i915: move vblank_enabled to display substruct
>   drm/i915: move display_irqs_enabled to display substruct
>   drm/i915: move de_irq_mask to display substruct
>   drm/i915: move pipestat_irq_mask to display substruct
>   drm/xe/display: remove unused xe->enabled_irq_mask

Looks reasonable.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 23 ++++----
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
>  .../gpu/drm/i915/display/intel_display_core.h | 12 ++++
>  .../gpu/drm/i915/display/intel_display_irq.c  | 57 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  4 --
>  drivers/gpu/drm/i915/i915_drv.h               | 13 +----
>  drivers/gpu/drm/i915/i915_irq.c               |  8 +--
>  drivers/gpu/drm/xe/display/xe_display.c       |  1 -
>  drivers/gpu/drm/xe/xe_device_types.h          | 15 +----
>  19 files changed, 73 insertions(+), 88 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
