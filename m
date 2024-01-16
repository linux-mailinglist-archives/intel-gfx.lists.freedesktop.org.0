Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118682EA72
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9C810E426;
	Tue, 16 Jan 2024 07:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C4B10E421
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391821; x=1736927821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z4/hfn7Y3JJNW/cP2RCBw/RfzeCoy0s8fhglWzufnBs=;
 b=B5oI3n0YSVDJ5VWrrFYLn4B/Laat8X9RRehcITBXfEKy8pk1UyBdOUcK
 RxXVjxvFYkaHMpSxvolcUjKkKErhYjeSZswLEZl2mWISm+uwB/uDrebkU
 GXVeMr1HpY9LuKo6Latnw47V0wfVSEr9LZaIj20cOVlb0DICKy3JNJ3Oo
 3SxoVSUI9myZ7BUEtxccU0k/ClWwXAd/tUz6V9+oQKh3SAEL8OAKANHeO
 DyoQTpSF3zZFL6HQKjLpAmNTsVU9v0LtTuWSnZd5fJEd1lOQRoasH8DPh
 RjKllDDLD4q6z1paX++X+ZvWPk5+yRR02REtB1oWR4mkDVvwLFJobZluV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948574"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948574"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946982"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946982"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:56:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:56:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 06/16] drm/i915: Rename the DSM/GSM registers
Date: Tue, 16 Jan 2024 09:56:26 +0200
Message-ID: <20240116075636.6121-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
index 0b429f1ecd99..ce6b860b393e 100644
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
@@ -951,7 +951,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		 * Normally this would not work but on MTL the system firmware
 		 * should have relaxed the access permissions sufficiently.
 		 */
-		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
 		io_size = dsm_size;
 	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 7a716ff16070..b87933e7671d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1170,7 +1170,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	 * should have relaxed the access permissions sufficiently.
 	 */
 	if (IS_METEORLAKE(i915) && !i915_run_as_guest())
-		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
+		phys_addr = intel_uncore_read64(uncore, GEN6_GSMBASE) & GEN11_BDSM_MASK;
 	else
 		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 
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
index 75bc08081fce..0d35173a7718 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6320,9 +6320,10 @@ enum skl_power_gate {
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
2.41.0

