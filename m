Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E365C7578D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 17:52:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836DC10E781;
	Thu, 20 Nov 2025 16:52:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSzxHeLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C087410E76E;
 Thu, 20 Nov 2025 16:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763657534; x=1795193534;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mOjLvqt2L18vOJJ1CfnlAgnqzdNkC7or8XdZEKhI3LY=;
 b=RSzxHeLH8GHFqo1H1qYBpVUVOoZ+s4t9RdR1qfVfybzrk0DuKJdwpLHJ
 LCXkb3rlYG0kZufy/ifHVWdI1mnTyFaXz7P/QjI6lMZ3Vi/jXr5XeruPA
 WvnUsXFlcrcr31PCR30TWpExWBPUFmdRAahbumsOg5iNLJ4rT4CWBiSqB
 VY0cxJZVnvKQRsUQY9cygobDadfPi/RDYwfuDYb+zrI3j65FYj45ckOy+
 kl3TA7Uv3ftGLp2R73V2VJlyant58DqzS7O6+YYJMzY9TIQKG1Bd4IEtq
 Z8UPYJBPsUt+HG108eNg3kwiRNWZWi4VnyVOqxSGN6S1BWtuGYHTqderO g==;
X-CSE-ConnectionGUID: hExGB6iAQRWE+E0pQDikIA==
X-CSE-MsgGUID: 64hxk14ZTWavrKdKCJPMwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65824416"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65824416"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:52:13 -0800
X-CSE-ConnectionGUID: z94JKRXARe6YIvr5c2WNOg==
X-CSE-MsgGUID: qzre9ounQkm3EnRqbxrQCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="222366188"
Received: from inaky-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.245.244.92])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:52:12 -0800
Date: Thu, 20 Nov 2025 18:52:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/13] drm/i915: dissolve soc/
Message-ID: <aR9HOF9fKqTwdrEP@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Nov 19, 2025 at 08:52:39PM +0200, Jani Nikula wrote:
> Split soc/ to i915 and display specific parts, and relocate code
> accordingly.
> 
> In v2, cover all of soc/.
> 
> BR,
> Jani.
> 
> Jani Nikula (13):
>   drm/i915/edram: extract i915_edram.[ch] for edram detection
>   drm/i915: split out i915_freq.[ch]
>   drm/i915: move intel_dram.[ch] from soc/ to display/
>   drm/xe: remove MISSING_CASE() from compat i915_utils.h
>   drm/i915/dram: convert to struct intel_display
>   drm/i915: move dram_info to struct intel_display
>   drm/i915: move intel_rom.[ch] from soc/ to display/
>   drm/xe: remove remaining platform checks from compat i915_drv.h
>   drm/i915/gmch: split out i915_gmch.[ch] from soc
>   drm/i915/gmch: switch to use pci_bus_{read,write}_config_word()
>   drm/i915/gmch: convert intel_gmch.c to struct intel_display
>   drm/i915: merge soc/intel_gmch.[ch] to display/intel_vga.c
>   drm/xe/vga: use the same intel_gmch_vga_set_decode() as i915

Looks all right to me. Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |  11 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   5 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |   5 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   7 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>  .../drm/i915/display/intel_display_power.c    |   5 +-
>  .../drm/i915/{soc => display}/intel_dram.c    | 249 ++++++++----------
>  .../drm/i915/{soc => display}/intel_dram.h    |  12 +-
>  .../gpu/drm/i915/{soc => display}/intel_rom.c |   0
>  .../gpu/drm/i915/{soc => display}/intel_rom.h |   0
>  drivers/gpu/drm/i915/display/intel_vga.c      |  44 +++-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   6 +-
>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   4 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  18 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   3 -
>  drivers/gpu/drm/i915/i915_edram.c             |  44 ++++
>  drivers/gpu/drm/i915/i915_edram.h             |  11 +
>  drivers/gpu/drm/i915/i915_freq.c              | 111 ++++++++
>  drivers/gpu/drm/i915/i915_freq.h              |  13 +
>  .../i915/{soc/intel_gmch.c => i915_gmch.c}    |  61 +----
>  drivers/gpu/drm/i915/i915_gmch.h              |  13 +
>  drivers/gpu/drm/i915/soc/intel_gmch.h         |  20 --
>  drivers/gpu/drm/xe/Makefile                   |  13 +-
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  15 --
>  .../drm/xe/compat-i915-headers/i915_utils.h   |   6 -
>  .../xe/compat-i915-headers/soc/intel_dram.h   |   6 -
>  .../xe/compat-i915-headers/soc/intel_gmch.h   |   6 -
>  .../xe/compat-i915-headers/soc/intel_rom.h    |   6 -
>  drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
>  drivers/gpu/drm/xe/display/xe_display_misc.c  |  16 --
>  drivers/gpu/drm/xe/xe_device_types.h          |   8 -
>  33 files changed, 394 insertions(+), 341 deletions(-)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_dram.c (70%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_dram.h (68%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_rom.c (100%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_rom.h (100%)
>  create mode 100644 drivers/gpu/drm/i915/i915_edram.c
>  create mode 100644 drivers/gpu/drm/i915/i915_edram.h
>  create mode 100644 drivers/gpu/drm/i915/i915_freq.c
>  create mode 100644 drivers/gpu/drm/i915/i915_freq.h
>  rename drivers/gpu/drm/i915/{soc/intel_gmch.c => i915_gmch.c} (68%)
>  create mode 100644 drivers/gpu/drm/i915/i915_gmch.h
>  delete mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
>  delete mode 100644 drivers/gpu/drm/xe/display/xe_display_misc.c
> 
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
