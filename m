Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20CE847C70
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0525710F01F;
	Fri,  2 Feb 2024 22:44:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5BdqM+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1753210F01F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913840; x=1738449840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H4PaBb52nDj3FUlgEfXtHzRz9YIS+xJUnJD2lFusONA=;
 b=D5BdqM+v6D9JFcjHgu0jmu4T6smnOUYACPpkQpAhH8nlzH0WwW6SLXZW
 iYcJuLjnO6kmliuEXWOeezdd8GX3QUINsRTrti3cKk3M8KFAbVyUvitcE
 TxebRg4/HVfeFKOPqkQND2XlSCrKmT3uqMDA8Js1iExiyyfOdhdiiFytk
 +aQ/qsI1tN1SqdPpeqofhxBf61i/Bvql8f0EYg1G58QPc5N1pUN3FGrC6
 qWnhHelbFMN/rGScHGj82KOr6RETjP2F8/ZBBqjaojIaENNHw126245i0
 YFs9W1aY5iUC86hmeYtjM3c3Yk2rehn90hU/yvA45tIeXkPA7lkc+uM4A Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153737"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153737"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332015"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332015"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:43:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:43:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 04/16] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Date: Sat,  3 Feb 2024 00:43:28 +0200
Message-ID: <20240202224340.30647-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On MTL accessing stolen memory via the BARs is somehow borked,
and it can hang the machine. As a workaround let's bypass the
BARs and just go straight to DSMBASE/GSMBASE instead.

Note that on every other platform this itself would hang the
machine, but on MTL the system firmware is expected to relax
the access permission guarding stolen memory to enable this
workaround, and thus direct CPU accesses should be fine.

The raw stolen memory areas won't be passed to VMs so we'll
need to risk using the BAR there for the initial setup. Once
command submission is up we should switch to MI_UPDATE_GTT
which at least shouldn't hang the whole machine.

v2: Don't use direct GSM/DSM access on guests
    Add w/a number
v3: Check register 0x138914 to see if pcode did its job
    Add some debug prints

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c |  6 +++++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c       | 10 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h            |  3 +++
 drivers/gpu/drm/i915/i915_utils.c          | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_utils.h          |  2 ++
 5 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ee237043c302..9ddcae9b3997 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -941,7 +941,11 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
 	}
 
-	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
+	if (i915_direct_stolen_access(i915)) {
+		drm_dbg(&i915->drm, "Using direct DSM access\n");
+		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		io_size = dsm_size;
+	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
 		io_size = 0;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 21a7e3191c18..bce5d8025340 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -24,6 +24,7 @@
 #include "intel_ring.h"
 #include "i915_drv.h"
 #include "i915_pci.h"
+#include "i915_reg.h"
 #include "i915_request.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
@@ -1152,13 +1153,20 @@ static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
 static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 {
 	struct drm_i915_private *i915 = ggtt->vm.i915;
+	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	phys_addr_t phys_addr;
 	u32 pte_flags;
 	int ret;
 
 	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
-	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
+
+	if (i915_direct_stolen_access(i915)) {
+		drm_dbg(&i915->drm, "Using direct GSM access\n");
+		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
+	} else {
+		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
+	}
 
 	if (needs_wc_ggtt_mapping(i915))
 		ggtt->gsm = ioremap_wc(phys_addr, size);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b9e018256c7..c1bf70d62ead 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5414,6 +5414,9 @@
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
 
+#define MTL_PCODE_STOLEN_ACCESS			_MMIO(0x138914)
+#define   STOLEN_ACCESS_ALLOWED			0x1
+
 /* IVYBRIDGE DPF */
 #define GEN7_L3CDERRST1(slice)		_MMIO(0xB008 + (slice) * 0x200) /* L3CD Error Status 1 */
 #define   GEN7_L3CDERRST1_ROW_MASK	(0x7ff << 14)
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index 29fd02bf5ea8..6f9e7b354b54 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -8,6 +8,7 @@
 #include <drm/drm_drv.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_utils.h"
 
 #define FDO_BUG_MSG "Please file a bug on drm/i915; see " FDO_BUG_URL " for details."
@@ -125,3 +126,19 @@ bool i915_vtd_active(struct drm_i915_private *i915)
 	/* Running as a guest, we assume the host is enforcing VT'd */
 	return i915_run_as_guest();
 }
+
+bool i915_direct_stolen_access(struct drm_i915_private *i915)
+{
+	/*
+	 * Wa_22018444074
+	 *
+	 * Access via BAR can hang MTL, go directly to GSM/DSM,
+	 * except for VM guests which won't have access to it.
+	 *
+	 * Normally this would not work but on MTL the system firmware
+	 * should have relaxed the access permissions sufficiently.
+	 * 0x138914==0x1 indicates that the firmware has done its job.
+	 */
+	return IS_METEORLAKE(i915) && !i915_run_as_guest() &&
+		intel_uncore_read(&i915->uncore, MTL_PCODE_STOLEN_ACCESS) == STOLEN_ACCESS_ALLOWED;
+}
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index f98577967b7f..b45ef0560611 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -391,4 +391,6 @@ static inline bool i915_run_as_guest(void)
 
 bool i915_vtd_active(struct drm_i915_private *i915);
 
+bool i915_direct_stolen_access(struct drm_i915_private *i915);
+
 #endif /* !__I915_UTILS_H */
-- 
2.43.0

