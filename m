Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA54814611
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDAD10E9D8;
	Fri, 15 Dec 2023 10:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E808910E9D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637987; x=1734173987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=awLUoomGnhor78c0SnWhvAvCHC2xFIL+IrF0m1Fcvz0=;
 b=dyaCVYXUA9J/GsJGIMdVIU7f0CXYJHaoqt1g404eXjj3ly07ynnBPJDp
 yRW2skfSqzhNR+mEzgGiMDK2l3Pn5dpNvxbItWWtdkSxR1ilM+UiSispy
 9v/xU7XcmboeDprFkty6vYPrXASGH1dcT1Kj4eJIFxtqoYO+y5LZ3Cqge
 n8uLZaf5VZLiLa2e7e+u2dOaEo71gmOoQ8hNncNrOwnj/gxnrOfUJbDsr
 bJRDcT9BHZEjEK269XlVqA/wguzqKpI/mCOrRECQkXQ2XUhDGvl88Yu8s
 HusRbqdGK5bqSfXlp+2kUfAYUDXvCGXp6qnWOiow2wWifpZ7Xt7HQVzKm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136772"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136772"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935164"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935164"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Date: Fri, 15 Dec 2023 12:59:18 +0200
Message-ID: <20231215105929.29568-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
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

TODO: add w/a numbers and whatnot

Cc: Paz Zcharya <pazz@chromium.org>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ee237043c302..252fe5cd6ede 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
 	}
 
-	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
+	if (IS_METEORLAKE(i915)) {
+		/*
+		 * Workaround: access via BAR can hang MTL, go directly to DSM.
+		 *
+		 * Normally this would not work but on MTL the system firmware
+		 * should have relaxed the access permissions sufficiently.
+		 */
+		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
+		io_size = dsm_size;
+	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
 		io_start = 0;
 		io_size = 0;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 21a7e3191c18..ab71d74ec426 100644
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
@@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
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
+	/*
+	 * Workaround: access via BAR can hang MTL, go directly to GSM.
+	 *
+	 * Normally this would not work but on MTL the system firmware
+	 * should have relaxed the access permissions sufficiently.
+	 */
+	if (IS_METEORLAKE(i915))
+		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
+	else
+		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 
 	if (needs_wc_ggtt_mapping(i915))
 		ggtt->gsm = ioremap_wc(phys_addr, size);
-- 
2.41.0

