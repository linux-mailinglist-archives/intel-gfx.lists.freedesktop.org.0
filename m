Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBBA83BEB4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 11:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB7010F87C;
	Thu, 25 Jan 2024 10:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB5510F87C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 10:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706178487; x=1737714487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KiDYGhoLOIGdoxxGWqZ1mX0FDwzq0lRLwGCPqlAr3u4=;
 b=jvEYw9u78XRwHTSkgbV1InRN4plfWdwrNbjj6U2xGgu6Ps3tFathZ8Lz
 vCN1kwDTGSmvSfcQUGIpotMkbupCdUotdtJSZ7slhFWWXycajDQIVnC0G
 7cbLZB3Y5MVs96TZ+UitgRn8uhJ6W8oPXA03qbQq5ZayVUGq4s6pRNzzk
 sU8R8qOFT0RfXOGjwwEXSM7gTphBqu+GsofYx0Lg7+JQnhhtVNnNpX5Qk
 XWnxpD9oaxlnPbvpxX7Yg+TyCpx+TDXQQerpyCBps/sSeNMZATtzJpVYi
 +O7wppucFWpmEWay0ATh2nFs1wnvlUUv24Nd1HgDSvh+mVwwTEdwV2ftM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9236054"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9236054"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 02:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820753787"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="820753787"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Jan 2024 02:28:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Jan 2024 12:28:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v4 06/16] drm/i915: Rename the DSM/GSM registers
Date: Thu, 25 Jan 2024 12:28:04 +0200
Message-ID: <20240125102804.22576-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116075636.6121-7-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-7-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

0x108100 and 0x1080c0 have been around since snb. Rename the
defines appropriately.

v2: Rebase

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
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
index b5f5e0bc6608..1ad55aafe679 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6323,9 +6323,10 @@ enum skl_power_gate {
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

