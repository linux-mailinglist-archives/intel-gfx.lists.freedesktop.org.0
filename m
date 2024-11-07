Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE7D9C0DBF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C023010E8A1;
	Thu,  7 Nov 2024 18:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YSTaDRLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C6210E8A1;
 Thu,  7 Nov 2024 18:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004183; x=1762540183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KccBUcCjbdm6/leEX0NdaVb+C+hU8/dYMaiGNA3QEtI=;
 b=YSTaDRLDpM8AF922UCk34WYYoyAphuDgPZdVwocSFT1/L1j7r8mUIIje
 ZG9+1qIgp3GGAak0lhd9YU25sp5Gm2zDbYL985GBsmw0tpksIvQlfDKJE
 kkWBLyFGs0ZCA55joU+3JVigcey7ANyG4U7yBvVc44hMyfY6ge4bp+zu8
 zagCXfR4CaTy0fVTmwKFLrg/01nEzPBNVaOM4lyogjRww3al4jVNllbxg
 wFBfZjBH4VRaXmjL7j6akuhsDR2EPTyiS+yfOCJeehPiC3LWBQ2M2LcCT
 PvAnfDHH11hT6K9SOKSWcdVyz8nl4ihwSp/8mikHqtGiUqWpEW3EtiYz7 w==;
X-CSE-ConnectionGUID: BraGIMs0QQaNel2100Po0A==
X-CSE-MsgGUID: cMlXXZegQ7i8hRyoFSafmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494835"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494835"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:42 -0800
X-CSE-ConnectionGUID: /9YMOmLlR1ed9R9/OB7MWQ==
X-CSE-MsgGUID: +KnQZoX4QOqruekwaHQd4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329557"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:41 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 00/18] drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
Date: Thu,  7 Nov 2024 15:27:05 -0300
Message-ID: <20241107182921.102193-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Using the DMC wakelock is the official recommendation for Xe3_LPD. This
series apply fixes to the current DMC wakelock implementation and
enables it by default for Xe3_LPD. The series has been tested with a PTL
machine.

Gustavo Sousa (18):
  drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead of reg.reg
  drm/xe: Mimic i915 behavior for non-sleeping MMIO wait
  drm/i915/dmc_wl: Use non-sleeping variant of MMIO wait
  drm/i915/dmc_wl: Check for non-zero refcount in release work
  drm/i915/dmc_wl: Get wakelock when disabling dynamic DC states
  drm/i915/dmc_wl: Use sentinel item for range tables
  drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
  drm/i915/dmc_wl: Rename lnl_wl_range to powered_off_ranges
  drm/i915/dmc_wl: Track registers touched by the DMC
  drm/i915/dmc_wl: Allow simpler syntax for single reg in range tables
  drm/i915/dmc_wl: Deal with existing references when disabling
  drm/i915/dmc_wl: Couple enable/disable with dynamic DC states
  drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
  drm/i915/dmc_wl: Init only after we have runtime device info
  drm/i915/dmc_wl: Use HAS_DMC() in HAS_DMC_WAKELOCK()
  drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support
  drm/i915/dmc_wl: Do nothing until initialized
  drm/i915/xe3lpd: Use DMC wakelock by default

 drivers/gpu/drm/i915/display/intel_de.h       |  10 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_display_params.c   |   6 +-
 .../drm/i915/display/intel_display_params.h   |   2 +-
 .../i915/display/intel_display_power_well.c   |  19 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 311 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  24 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |  11 +-
 10 files changed, 317 insertions(+), 73 deletions(-)

-- 
2.47.0

