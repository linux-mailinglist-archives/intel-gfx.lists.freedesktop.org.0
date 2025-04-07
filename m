Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49BBA7E204
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3525810E4AF;
	Mon,  7 Apr 2025 14:39:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kA6DXbT2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864DB10E4B0;
 Mon,  7 Apr 2025 14:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036751; x=1775572751;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wRNekFQF1edCZQZN5Qqb199L0jyB6ih2LvpQTD0eXgw=;
 b=kA6DXbT2ELrQsK4G6MJY4BRHgpCkBY1OpnmnoH+XtGOabnelIQzbyMkb
 pUfPnaatYc9x0yQsbg4l4xyuIIKwZGqLvVV+UBaQGKdEPkUnttosLEC85
 MAWfM5U1F/B6eRD4olw5DzESheNxzcjl4WVhvymuKVK+uZyOBOPrh2IG8
 fAJPYbV58V0+Bgb5HkMsxAmaGc24zYD9caXxyM2d/Gb5EnFcyUTxz7qLf
 NRsruKE6Ca5diw56qyX6XL2Hze5ydUBty4q/1RVd+52FKC3OBxEJCyp1L
 2dAYC/EvJ8j+Sk3quwWbczQCSgOxjcTjRVmr7gLQ97/+tUwPInXLPQ3Cr w==;
X-CSE-ConnectionGUID: aR6Cl2xeRjKmnmHU4KNMCg==
X-CSE-MsgGUID: 1hVR3vrbS42/hqm5BlzfrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572404"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208,223";a="44572404"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:11 -0700
X-CSE-ConnectionGUID: /HL6R17eTEmsBdJSptVAjg==
X-CSE-MsgGUID: KBk+zW3/Qt+0HyY0C1F4Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; 
 d="scan'208,223";a="158963621"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:09 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 00/11] drm/xe/display: Program double buffered LUT registers
Date: Mon,  7 Apr 2025 19:53:48 +0530
Message-Id: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From PTL, LUT registers are made double buffered. This helps us
to program them in the active region without any concern of tearing.
This particulary helps in case of displays with high refresh rates
where vblank periods are shorter. Add MMIO and DSB path to program them.

Chaitanya Kumar Borah (7):
  drm/i915/dsb: add intel_dsb_gosub_finish()
  drm/i915/dsb: Add support for GOSUB interrupt
  drm/i915: s/dsb_color_vblank/dsb_color
  drm/i915: use GOSUB to program doubled buffered LUT registers
  drm/i915: Program DB LUT registers before vblank
  drm/i915/color: Do not pre-load LUTs with DB registers
  drm/i915: Disable updating of LUT values during vblank

Ville Syrjälä (4):
  drm/i915/dsb: Extract intel_dsb_ins_align()
  drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
  drm/i915/dsb: Extract intel_dsb_{head,tail}()
  drm/i915/dsb: Implement intel_dsb_gosub()

 drivers/gpu/drm/i915/display/intel_atomic.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  51 +++++---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  36 +++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 115 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |   2 +
 9 files changed, 176 insertions(+), 43 deletions(-)

-- 
2.25.1

