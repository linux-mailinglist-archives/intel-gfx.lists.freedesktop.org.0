Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C63847C72
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F4F10EEFD;
	Fri,  2 Feb 2024 22:44:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7cMAaiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926D810ED9B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913847; x=1738449847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=thucZGWjR2GlzetuHKla5oluqpZX5udBq8JWqaqSoqI=;
 b=D7cMAaiyPU2TmDDb+3GXcEYJYHVO+H//yjKU96nVvhPNDtw7nUWgg+Hf
 KVH7/UCveVhjELtPAwVVxK2Z0r04/7DQLZgIkFhdHpW06Jlz/6s9Juwdz
 koOEpa14003a55+sDGz63YxiRuvl/rgZo8BlJMKAzcuqnUwC6db9GXeyh
 mtqKYOI5IJeWS+cvGCl76PE+N5nmObekz45BTPHkiA0+kZ5Rhn4OOkM55
 Z76SLY42T259ZNhcZZa9FngFR4CpijYrMoyR9yqI3w9WtH5n7fQDYMfoh
 rVbW3hP/lmmmuT04ruS11UQimOe6xVRj0mwBUIht21USQbU73oqN7sQ07 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153750"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153750"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332029"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332029"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 06/16] drm/i915: Rename the DSM/GSM registers
Date: Sat,  3 Feb 2024 00:43:30 +0200
Message-ID: <20240202224340.30647-7-ville.syrjala@linux.intel.com>
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

0x108100 and 0x1080c0 have been around since snb. Rename the
defines appropriately.

v2: Rebase

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c        | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h             | 7 ++++---
 4 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 9ddcae9b3997..ad6dd7f3259b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -935,7 +935,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		GEM_BUG_ON((dsm_base + dsm_size) > lmem_size);
 	} else {
 		/* Use DSM base address instead for stolen memory */
-		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		dsm_base = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
 		if (WARN_ON(lmem_size < dsm_base))
 			return ERR_PTR(-ENODEV);
 		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
@@ -943,7 +943,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 
 	if (i915_direct_stolen_access(i915)) {
 		drm_dbg(&i915->drm, "Using direct DSM access\n");
-		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
 		io_size = dsm_size;
 	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index bce5d8025340..ec1cbe229f0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1163,7 +1163,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 
 	if (i915_direct_stolen_access(i915)) {
 		drm_dbg(&i915->drm, "Using direct GSM access\n");
-		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
+		phys_addr = intel_uncore_read64(uncore, GEN6_GSMBASE) & GEN11_BDSM_MASK;
 	} else {
 		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index af357089da6e..51bb27e10a4f 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -240,7 +240,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		lmem_size -= tile_stolen;
 	} else {
 		/* Stolen starts from GSMBASE without CCS */
-		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
+		lmem_size = intel_uncore_read64(&i915->uncore, GEN6_GSMBASE);
 	}
 
 	i915_resize_lmem_bar(i915, lmem_size);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c1bf70d62ead..e00557e1a57f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6325,9 +6325,10 @@ enum skl_power_gate {
 #define   GMS_MASK			REG_GENMASK(15, 8)
 #define   GGMS_MASK			REG_GENMASK(7, 6)
 
-#define GEN12_GSMBASE			_MMIO(0x108100)
-#define GEN12_DSMBASE			_MMIO(0x1080C0)
-#define   GEN12_BDSM_MASK		REG_GENMASK64(63, 20)
+#define GEN6_GSMBASE			_MMIO(0x108100)
+#define GEN6_DSMBASE			_MMIO(0x1080C0)
+#define   GEN6_BDSM_MASK		REG_GENMASK64(31, 20)
+#define   GEN11_BDSM_MASK		REG_GENMASK64(63, 20)
 
 #define XEHP_CLOCK_GATE_DIS		_MMIO(0x101014)
 #define   SGSI_SIDECLK_DIS		REG_BIT(17)
-- 
2.43.0

