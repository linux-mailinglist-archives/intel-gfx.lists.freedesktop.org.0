Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24114CC811F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 15:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F7810ECE6;
	Wed, 17 Dec 2025 14:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i62O4k3e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A295F10ECE5;
 Wed, 17 Dec 2025 14:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765980382; x=1797516382;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XluhwwrcMabgDBxVgwBHlY4a2p1mZGdEsPhg7E661mQ=;
 b=i62O4k3eJddNYqzYRMBXPivp9JsBv9oGHRIDSatXijPKIlvR8Pdpr3EQ
 0gZU9Q78h+2GO1shO3TdzRhH6Hvp+UMvc2P8L0v06T4r7lrsZa5tz5b2I
 qpFMfVnYfUvuA3zhgfkz0xjwuFEpE+TH7W3yqKqG1cjzzQJtf/qnvj7lf
 n3Av6NOkGJMPG7VbTVKe3zOB831W7KLnGq46w8I6Mix+y3wV9UYUbu8yG
 MPG3QdIEn6IJdGvxzkNmuXCgGhoUnOOW6l8iqop7bXaO+yPjWwcnzICWI
 MqI7rtEuKwABSQ17xeIAFQrdIUaNjD65fbXodZPF8IuclZ6+29dFxz5KE w==;
X-CSE-ConnectionGUID: 06wgi5e5SqiqSwkilpXaGg==
X-CSE-MsgGUID: P8lm9AS4Qr+5HUp+O0tXUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67988553"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="67988553"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:06:21 -0800
X-CSE-ConnectionGUID: NOmSm+WoQGmxhTW3hsl07g==
X-CSE-MsgGUID: tYHFWS5rReyl5/rcAI0DvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="197418126"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:06:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 00/19] Make Display free from i915_reg.h
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251217062209.852324-1-uma.shankar@intel.com>
Date: Wed, 17 Dec 2025 16:06:16 +0200
Message-ID: <6b7ef824f738c6a4eb944c415b3107c4f8268528@intel.com>
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

On Wed, 17 Dec 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> Move the common register definition to a header to free up
> display files from including i915_reg.h. This will help
> avoid dupicate definitions and includes and can serve as
> a common file for xe, i915 and display module.

So I commented on a number of patches, but I think the overall
impression is that we should avoid moving stuff to
intel_gmd_common_regs.h if at all possible.

There *may* be cases that benefit from having a file like that, but I
don't think most of these cases here require it.

BR,
Jani.

>
> Uma Shankar (19):
>   drm/{i915, xe}: Extract common registers into a separate file
>   drm/{i915, xe}: Extract South chicken registers
>   drm/{i915, xe}: Extract display interrupt definitions
>   drm/{i915, xe}: Extract DSPCLK_GATE_D
>   drm/{i915, xe}: Extract pcode definitions
>   drm/{i915, xe}: Remove i915_reg.h from intel_display_device.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
>   drm/{i915, xe}: Removed i915_reg.h from intel_display.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
>   drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
>   drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
>   drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_fifo_underrun.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_display_irq.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_display_power_well.c
>   drm/{i915, xe}: Remove i915_reg.h from intel_modeset_setup.c
>   drm/{i915, xe}: Removed i915_reg.h from display
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
>  .../gpu/drm/i915/display/intel_backlight.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_casf.c     |   1 -
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  .../drm/i915/display/intel_display_device.c   |   2 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |   2 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  .../i915/display/intel_display_power_well.c   |   2 +-
>  .../gpu/drm/i915/display/intel_display_regs.h |  90 +++-
>  .../gpu/drm/i915/display/intel_display_rps.c  |   2 +-
>  .../gpu/drm/i915/display/intel_display_wa.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_dram.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_rom.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 463 +-----------------
>  include/drm/intel/intel_gmd_common_regs.h     | 419 ++++++++++++++++
>  40 files changed, 534 insertions(+), 514 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_common_regs.h

-- 
Jani Nikula, Intel
