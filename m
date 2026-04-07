Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKiEIeBc1Wl/5QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:37:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376393B3C26
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B181210E4AE;
	Tue,  7 Apr 2026 19:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6zUAf3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37C410E4AE;
 Tue,  7 Apr 2026 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775590621; x=1807126621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+7/k7ZrMb6gSqAJvfWOJKWPTdG4PbwMLXTzmzZBqls=;
 b=H6zUAf3PtPYRsoynX5mwBmvR1FqvaWZEyuAGrwMbuZamZ6TUzPnFIEqb
 V3g6Z9vJhLddv+CrkvtRhCsEE/6MzRLarwsArVjjHQ2UuZOwKAhUdiA/d
 +6JYufYJdUimUC2ukaCgAYu7ENSJOupBHfHU8IOPhxa7ijUcMAVJ4Gcgg
 lvdAyo/06lkIOsnNpQwtewmG6Fm5NfEGtFg1AfqSJyIMfgucPKhOFDpnZ
 ZqFrZd4cTWtaIaBnIDag/FvXG3WAtDkBo64TafQN0x5n/fPEjM3qdOPRo
 TtFx7TRwEcOG99u0n4AlvkThscEWCdJ2wwKig/oOSUhTCsn15oqL7ibn2 w==;
X-CSE-ConnectionGUID: W+RXL3rcRPKB/N94tQx9+w==
X-CSE-MsgGUID: BZDZYLyzQjOWtavL+Ey3dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80424049"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="80424049"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:37:01 -0700
X-CSE-ConnectionGUID: ThEl4Z6sTV663c37mfBvLA==
X-CSE-MsgGUID: 9NBKntPlS++S6u9lt/kmhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="227419573"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:36:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/5] drm/i915/pci: move intel_pci_config.h under
 include/drm/intel
Date: Tue,  7 Apr 2026 22:36:30 +0300
Message-ID: <5aac6c711c3f0a09fc52f322455a4a4b35f80a82.1775590536.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775590536.git.jani.nikula@intel.com>
References: <cover.1775590536.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 376393B3C26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since the PCI registers are used from both i915 display and core, move
intel_pci_config.h to include/drm/intel/pci_config.h. Drop the intel_
prefix from the name to reduce tautology.

With this, we can drop the corresponding xe display compat header.

v2: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_display_sr.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_backlight.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c                  | 2 +-
 drivers/gpu/drm/i915/display/intel_lpe_audio.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_opregion.c               | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c                  | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c                        | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                          | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c                 | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c                       | 2 +-
 drivers/gpu/drm/i915/gvt/cfg_space.c                        | 2 +-
 drivers/gpu/drm/i915/i915_gmch.c                            | 2 +-
 drivers/gpu/drm/i915/i915_overlay.c                         | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                             | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h   | 6 ------
 .../intel_pci_config.h => include/drm/intel/pci_config.h    | 0
 16 files changed, 14 insertions(+), 20 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
 rename drivers/gpu/drm/i915/intel_pci_config.h => include/drm/intel/pci_config.h (100%)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 935419441709..1eb2f636cc65 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -4,13 +4,13 @@
  */
 
 #include <drm/drm_device.h>
+#include <drm/intel/pci_config.h>
 
 #include "i9xx_display_sr.h"
 #include "i9xx_wm_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_gmbus.h"
-#include "intel_pci_config.h"
 
 static void i9xx_display_save_swf(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 34e95f05936e..b128896cb1c2 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
+#include <drm/intel/pci_config.h>
 
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
@@ -23,7 +24,6 @@
 #include "intel_dp_aux_backlight.h"
 #include "intel_dsi_dcs_backlight.h"
 #include "intel_panel.h"
-#include "intel_pci_config.h"
 #include "intel_pps.h"
 #include "intel_quirks.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 82955cf16c4c..8feba2e0333b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -28,6 +28,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/pci_config.h>
 
 #include "hsw_ips.h"
 #include "intel_atomic.h"
@@ -43,7 +44,6 @@
 #include "intel_dram.h"
 #include "intel_mchbar.h"
 #include "intel_parent.h"
-#include "intel_pci_config.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_step.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 117b60656ca1..775493306a83 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -70,11 +70,11 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_lpe_audio.h>
+#include <drm/intel/pci_config.h>
 
 #include "intel_audio_regs.h"
 #include "intel_de.h"
 #include "intel_lpe_audio.h"
-#include "intel_pci_config.h"
 
 #define HAS_LPE_AUDIO(display) ((display)->audio.lpe.platdev)
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e25be56e678b..9f88b7cac9f7 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -34,13 +34,13 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
+#include <drm/intel/pci_config.h>
 
 #include "intel_acpi.h"
 #include "intel_backlight.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_opregion.h"
-#include "intel_pci_config.h"
 
 #define OPREGION_HEADER_OFFSET 0
 #define OPREGION_ACPI_OFFSET   0x100
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 5838fb33104d..1cfdcf5c1118 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -11,6 +11,7 @@
 #include <drm/intel/display_parent_interface.h>
 #include <drm/intel/i915_drm.h>
 #include <drm/intel/mchbar_regs.h>
+#include <drm/intel/pci_config.h>
 
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
@@ -24,7 +25,6 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
-#include "intel_pci_config.h"
 
 struct intel_stolen_node {
 	struct drm_i915_private *i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 08c4e735481b..64ca5bbc53c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -12,6 +12,7 @@
 #include <drm/drm_print.h>
 #include <drm/intel/i915_drm.h>
 #include <drm/intel/intel-gtt.h>
+#include <drm/intel/pci_config.h>
 
 #include "gem/i915_gem_lmem.h"
 
@@ -20,7 +21,6 @@
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_regs.h"
-#include "intel_pci_config.h"
 #include "intel_ring.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d76121e117e1..5c7f862f7100 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -6,6 +6,7 @@
 #include <drm/drm_managed.h>
 #include <drm/intel/intel-gtt.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
+#include <drm/intel/pci_config.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
@@ -28,7 +29,6 @@
 #include "intel_gt_requests.h"
 #include "intel_migrate.h"
 #include "intel_mocs.h"
-#include "intel_pci_config.h"
 #include "intel_rc6.h"
 #include "intel_renderstate.h"
 #include "intel_rps.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index a30060fd4429..b8a39567a334 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -4,12 +4,12 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/pci_config.h>
 
 #include "i915_drv.h"
 #include "i915_pci.h"
 #include "i915_reg.h"
 #include "intel_memory_region.h"
-#include "intel_pci_config.h"
 #include "intel_region_lmem.h"
 #include "intel_region_ttm.h"
 #include "gem/i915_gem_lmem.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 4d0ea953eb6e..37272871b0f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -8,6 +8,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/intel/mchbar_regs.h>
+#include <drm/intel/pci_config.h>
 
 #include "display/intel_display_reset.h"
 #include "display/intel_overlay.h"
@@ -29,7 +30,6 @@
 #include "intel_gt_pm.h"
 #include "intel_gt_print.h"
 #include "intel_gt_requests.h"
-#include "intel_pci_config.h"
 #include "intel_reset.h"
 
 #define RESET_MAX_RETRIES 3
diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
index 1937e04d3791..e00c1478a24e 100644
--- a/drivers/gpu/drm/i915/gvt/cfg_space.c
+++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
@@ -32,10 +32,10 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/pci_config.h>
 
 #include "gvt.h"
 #include "i915_drv.h"
-#include "intel_pci_config.h"
 
 enum {
 	INTEL_GVT_PCI_BAR_GTTMMIO = 0,
diff --git a/drivers/gpu/drm/i915/i915_gmch.c b/drivers/gpu/drm/i915/i915_gmch.c
index 2d55831b3c58..b0ef6ef577a3 100644
--- a/drivers/gpu/drm/i915/i915_gmch.c
+++ b/drivers/gpu/drm/i915/i915_gmch.c
@@ -5,10 +5,10 @@
 
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/pci_config.h>
 
 #include "i915_drv.h"
 #include "i915_gmch.h"
-#include "intel_pci_config.h"
 
 static void i915_gmch_bridge_release(struct drm_device *dev, void *bridge)
 {
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index c2d712bd2b0d..2d7aff51e39b 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -7,6 +7,7 @@
 
 #include <drm/intel/display_parent_interface.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
+#include <drm/intel/pci_config.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_object_frontbuffer.h"
@@ -18,7 +19,6 @@
 #include "i915_drv.h"
 #include "i915_overlay.h"
 #include "i915_reg.h"
-#include "intel_pci_config.h"
 
 #include "display/intel_frontbuffer.h"
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d966a00520f1..82415af47d54 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -24,6 +24,7 @@
 
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
+#include <drm/intel/pci_config.h>
 #include <drm/intel/pciids.h>
 
 #include "display/intel_display_driver.h"
@@ -35,7 +36,6 @@
 #include "i915_drv.h"
 #include "i915_pci.h"
 #include "i915_reg.h"
-#include "intel_pci_config.h"
 
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for device info");
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
deleted file mode 100644
index 8c15867fd613..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/include/drm/intel/pci_config.h
similarity index 100%
rename from drivers/gpu/drm/i915/intel_pci_config.h
rename to include/drm/intel/pci_config.h
-- 
2.47.3

