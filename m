Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070CFD32EB8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 15:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BF810E8B4;
	Fri, 16 Jan 2026 14:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lh4dHfk6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA53310E8B3;
 Fri, 16 Jan 2026 14:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768575291; x=1800111291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/hAaQXjJJkKz3hAFojPmHIyO2Bsti6RJCH6OAr/kxVE=;
 b=lh4dHfk6Q/xJbGraVDUqBv74hDItLVONsVy+sMYJ64J5ndpZhknqrEVn
 spVtHrit0PLhl64KEsQaHG64Byu9ETkMkP6SO1joNQ8XA0QzI2y8CqtqQ
 fqGcvjVKEIaVo6UmUj9y4j3rj+L83Hnl327f7cd24TDERV9L7QmMkW9Xu
 BMtbRkB15BPo18ws57QyHso5LCTBXZn5r0ObV2Ke3r4ONExfKnRCL5uou
 SWPY7z3A+dNxG6Frv6cscadrWWXu4JckRW59hWlCq204P8CieNvyzctVM
 ANpDebUvIghaIScpSW8O69/ZQo6z7DC5J2cKd+LOWCfUcq2IlRCWfN/Wz w==;
X-CSE-ConnectionGUID: 5pu9J6EjToiu19TrGd+cZg==
X-CSE-MsgGUID: Iye2Ix5FQ1qzhznaIJGHOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="73736311"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="73736311"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:54:51 -0800
X-CSE-ConnectionGUID: KfZqqvgVTMC5Xx18nOHXrQ==
X-CSE-MsgGUID: cEp/O35VQuyEeSgP+RrHLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="235954636"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:54:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/dsb: move i915 specific DSB buffer
 implementation to i915
Date: Fri, 16 Jan 2026 16:54:40 +0200
Message-ID: <275d3bdd5943390c02a9b6da713661395a461004.1768575249.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768575249.git.jani.nikula@intel.com>
References: <cover.1768575249.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

The DSB buffer implementation is different for both i915 and xe. Move
the i915 specific implementation from display to i915 core.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                                   | 2 +-
 .../drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c}  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c} (98%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 241b1d2e2603..7d726e8c21bf 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -77,6 +77,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 # core display adaptation
 i915-y += \
 	i915_display_pc8.o \
+	i915_dsb_buffer.o \
 	i915_hdcp_gsc.o \
 	i915_initial_plane.o \
 	i915_panic.o
@@ -274,7 +275,6 @@ i915-y += \
 	display/intel_dram.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
-	display/intel_dsb_buffer.o \
 	display/intel_fb.o \
 	display/intel_fb_bo.o \
 	display/intel_fb_pin.o \
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/i915_dsb_buffer.c
similarity index 98%
rename from drivers/gpu/drm/i915/display/intel_dsb_buffer.c
rename to drivers/gpu/drm/i915/i915_dsb_buffer.c
index 50faf3869b6c..de30d3896f4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/i915_dsb_buffer.c
@@ -3,11 +3,11 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include "display/intel_dsb_buffer.h"
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_dsb_buffer.h"
 
 struct intel_dsb_buffer {
 	u32 *cmd_buf;
-- 
2.47.3

