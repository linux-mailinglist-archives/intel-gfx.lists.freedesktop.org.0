Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342E8106D4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F251110E6DF;
	Wed, 13 Dec 2023 00:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C6F10E6DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428180; x=1733964180;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YBr4/dvB16iCBp/RKQN93BDoI6/QyOPQ/whRkptl2rk=;
 b=Y39VTuKBl/0YYPJm+qKC7tfFKeuSTIG+G0909m0UqruiHrFdeH3lpD/W
 M5ayRaXGoVOipIHH7I8Im2AdbD9UWYqC7UKbnJFvMUSyMUnLs4PCPH6e/
 waZZ2tSgcts3+/IHYhva/sWIYXmSFMAYIVTiBYL8IfD7p0skHlc/lm2+R
 QMJ7X+fd7LO2c9r6cznjgjhXa60MUIikRjNwNyO0Vw7Kcs0IRRVgkm7y4
 cLnNU97bNfipyE1+gZSiMHdP8/umnOS3NYZZG1h5Qfb8hgOwIHOPBhMwg
 hot/qlLlygTpHdQCK/Yu/OwMunr8HqdJbrcTJA0+41RsXq/42FudP+Rpn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309678"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309678"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011793"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:42:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:42:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915: Rename the DSM/GSM registers
Date: Wed, 13 Dec 2023 02:42:31 +0200
Message-ID: <20231213004237.20375-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c        | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h             | 7 ++++---
 4 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 252fe5cd6ede..6185a5f73a48 100644
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
@@ -948,7 +948,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		 * Normally this would not work but on MTL the system firmware
 		 * should have relaxed the access permissions sufficiently.
 		 */
-		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
 		io_size = dsm_size;
 	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index ab71d74ec426..05c5525e7e2d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1167,7 +1167,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	 * should have relaxed the access permissions sufficiently.
 	 */
 	if (IS_METEORLAKE(i915))
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
index 27dc903f0553..b54d62952a53 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6314,9 +6314,10 @@ enum skl_power_gate {
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

