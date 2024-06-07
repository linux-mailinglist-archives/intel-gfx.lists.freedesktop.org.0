Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C473900295
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03A610EC02;
	Fri,  7 Jun 2024 11:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJoxLFNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C1910EC02
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717760886; x=1749296886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RGDiA1hEJQNtx+BQgYCNY7gSHWQsWogiPZbnxn74dZ4=;
 b=kJoxLFNT73NFFVKyr/NRG51oS+UzjEG4S/+Nk+BTJbVuN5Q/n/SyGCjs
 Ah6c/PURzi/L2dwBo1snJY2POJ3lppMsWsrRNDc6b7CFaEoRU9OLfOZhC
 yKeom6QPNkjtaAuN3NYh1EH29l0GrsVkWkbLZeWs1czSNZLonJs4qPZSs
 ar62V9Ek6jkqweB/2NA2KmN5YVWK/Pnr/UDZcKeYJlMlrSMkFETObb+8p
 ABWH7+ZSpA7R1YLQFEiev8uxyZfevEUTqIrAiQRi38gUXQaKQ1QBGDAHs
 QZHQEgg+G73UdgUMTVoCIjE1TPxpM0FW3hVUsJhbigV0NylqbIHoqyxbq g==;
X-CSE-ConnectionGUID: v0+UgaiJTNGJAqmZbgSZhQ==
X-CSE-MsgGUID: iF9MqRM/RG+XNcLP4MsauA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="39877821"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="39877821"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:48:05 -0700
X-CSE-ConnectionGUID: koR1SMkHRpuo3qIlrGsF3Q==
X-CSE-MsgGUID: VVleL06VREK5u/9I3x9ogA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="38296863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Jun 2024 04:48:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Jun 2024 14:48:02 +0300
Date: Fri, 7 Jun 2024 14:48:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 00/14] drm/i915: mem/fsb/rawclk freq cleanups
Message-ID: <ZmLzcsoMkt3cB48m@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
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

On Thu, Jun 06, 2024 at 02:15:52PM +0300, Jani Nikula wrote:
> v2 of https://lore.kernel.org/r/cover.1716906179.git.jani.nikula@intel.com
> 
> Jani Nikula (14):
>   drm/i915/wm: rename intel_get_cxsr_latency -> pnv_get_cxsr_latency
>   drm/i915/wm: clarify logging on not finding CxSR latency config
>   drm/i915/dram: separate fsb freq detection from mem freq
>   drm/i915/dram: split out pnv DDR3 detection
>   drm/i915/dram: rearrange mem freq init
>   drm/i915/gt: remove mem freq from gt debugfs
>   drm/i915: convert fsb_freq and mem_freq to kHz
>   drm/i915: extend the fsb_freq initialization to more platforms
>   drm/i915: use i9xx_fsb_freq() for GT clock frequency
>   drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq initialization
>   drm/i915: move rawclk from runtime to display runtime info
>   drm/xe/display: drop unused rawclk_freq and RUNTIME_INFO()
>   drm/i915: move comments about FSB straps to proper place

Above are
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>   drm/i915: move rawclk init to intel_cdclk_init()

We need rawclk_freq quite early for the power well stuff on
VLV/CHV. But CI already said as much.

> 
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  27 +--
>  .../gpu/drm/i915/display/intel_backlight.c    |  10 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  80 ++-----
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   1 -
>  .../drm/i915/display/intel_display_device.c   |   2 +
>  .../drm/i915/display/intel_display_device.h   |   2 +
>  .../i915/display/intel_display_power_well.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   3 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 -
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  11 +-
>  drivers/gpu/drm/i915/intel_device_info.c      |   5 -
>  drivers/gpu/drm/i915/intel_device_info.h      |   2 -
>  drivers/gpu/drm/i915/soc/intel_dram.c         | 212 +++++++++++-------
>  drivers/gpu/drm/i915/soc/intel_dram.h         |   1 +
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   1 -
>  drivers/gpu/drm/xe/xe_device_types.h          |   6 -
>  18 files changed, 176 insertions(+), 198 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
