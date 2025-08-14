Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD26AB2626A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 12:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9B510E83F;
	Thu, 14 Aug 2025 10:21:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SgMjvJtS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D7A10E2B4;
 Thu, 14 Aug 2025 10:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755166919; x=1786702919;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=MsYGf2FIxZ6AMKyyklbfTDOacremXNQirDOR3qRiLmE=;
 b=SgMjvJtSGg4fAAdbakJGh9WO94v9gv48DwGjGy6PP2hEbqvchW6hfj10
 fdLLBIZ99JBpkJERMOc0l2AsWQVLOAN3mBf0Jgj6W6LoSe2dwDs8R65+M
 ZZC30De9qvx7Xgu7V7HIJUjYEzYSbmZhdlVQMn6wbSa8YERr0iqPGddsA
 WtyEnyswPuXlE+NRWloRFlynO6yV6ht86X9jWuBnpdt8tG2gQ6TqYYz9x
 iS0Qws9IyuJ2mn8aivnczFS/xxV56Pr9ly2jrG8qI55hhawC6Bh4rmM+L
 ZxdqQxTOjr/2pwnyKFntIeUjflGKLTU+oIL1GG3ogHepkbBLMUXznWgHr w==;
X-CSE-ConnectionGUID: zBWDvI9ERr+CXNzHmlRg6Q==
X-CSE-MsgGUID: ykFXfGnUS9mROuYoIMjT+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="75049454"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="75049454"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 03:21:58 -0700
X-CSE-ConnectionGUID: fheilJP3Tjmz3X2MCd0S8g==
X-CSE-MsgGUID: v5xGIeDJRMKvUWA8t9p6sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="172060610"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 03:21:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/15] drm/i915: drop __to_intel_display() transitional
 macro
In-Reply-To: <175511869481.1765.3430579261602699296@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1754499174.git.jani.nikula@intel.com>
 <175511869481.1765.3430579261602699296@intel.com>
Date: Thu, 14 Aug 2025 13:21:53 +0300
Message-ID: <04c1732726c88286433324dbe5f248a136f6cad9@intel.com>
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

On Wed, 13 Aug 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-08-06 13:55:01-03:00)
>>Switch to passing struct intel_display to all the macros that use
>>__to_intel_display(), and once that's done, remove __to_intel_display().
>>
>>We'll still need to get rid of struct intel_display usage like this
>>outside of display, but explicit is better than implicit, and this
>>prevents new accidental struct drm_i915_private usages from cropping up.
>>
>>Jani Nikula (15):
>>  drm/i915/display: pass display to HAS_PCH_*() macros
>>  drm/i915/fb: pass display to HAS_GMCH() and DISPLAY_VER()
>>  drm/i915/clockgating: pass display to for_each_pipe()
>>  drm/i915/clockgating: pass display to HAS_PCH_*() macros
>>  drm/i915/clockgating: pass display to DSPCNTR and DSPSURF register
>>    macros
>>  drm/i915/irq: pass display to macros that expect display
>>  drm/i915/dram: pass display to macros that expect display
>>  drm/i915/gmch: pass display to DISPLAY_VER()
>>  drm/i915/gem: pass display to HAS_DISPLAY()
>>  drm/i915/switcheroo: pass display to HAS_DISPLAY()
>>  drm/i915/drv: pass display to HAS_DISPLAY()
>>  drm/i915/uncore: pass display to HAS_FPGA_DBG_UNCLAIMED()
>>  drm/i915/gvt: convert mmio table to struct intel_display
>>  drm/i915/reg: separate VLV_DSPCLK_GATE_D from DSPCLK_GATE_D
>
> This one was a bit harder to review, but looks good as well.
>
> The series is:
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks a bunch, series merged to drm-intel-next.

BR,
Jani.


>
>>  drm/i915/display: drop __to_intel_display() usage
>>
>> .../i915/display/intel_display_conversion.c   |   2 +-
>> .../i915/display/intel_display_conversion.h   |  12 -
>> .../drm/i915/display/intel_display_device.h   |   7 +-
>> .../gpu/drm/i915/display/intel_display_irq.c  |   9 +-
>> .../i915/display/intel_display_power_well.c   |   2 +-
>> drivers/gpu/drm/i915/display/intel_fb_pin.c   |   4 +-
>> drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
>> drivers/gpu/drm/i915/display/intel_overlay.c  |   5 +-
>> drivers/gpu/drm/i915/display/intel_pch.h      |   4 +-
>> drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
>> .../i915/gem/selftests/i915_gem_client_blt.c  |   3 +-
>> drivers/gpu/drm/i915/i915_driver.c            |  14 +-
>> drivers/gpu/drm/i915/i915_irq.c               |  13 +-
>> drivers/gpu/drm/i915/i915_reg.h               |   3 +-
>> drivers/gpu/drm/i915/i915_switcheroo.c        |   6 +-
>> drivers/gpu/drm/i915/intel_clock_gating.c     |  35 ++-
>> drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 266 +++++++++---------
>> drivers/gpu/drm/i915/intel_uncore.c           |   3 +-
>> drivers/gpu/drm/i915/selftests/intel_uncore.c |   8 +-
>> drivers/gpu/drm/i915/soc/intel_dram.c         |   5 +-
>> drivers/gpu/drm/i915/soc/intel_gmch.c         |   3 +-
>> 21 files changed, 206 insertions(+), 204 deletions(-)
>>
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
