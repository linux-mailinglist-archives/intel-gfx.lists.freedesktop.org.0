Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E48106D2
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE52510E6DE;
	Wed, 13 Dec 2023 00:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B01D10E6AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428174; x=1733964174;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=v9rif8CNtK7gQLkSPc47hlrGQHKDgcB4qC+PxnAaEGU=;
 b=gjD6bKnTlJYlpf2J5gNqGRjZBzH8VSrHaJe++O2ArTLQQVRki6gqJ24E
 v2ohdwLtyaVNhmSknDdolbzX3qQl7arHBgrd83HiEMPUpbhRRYXqfPtnd
 HTR7JwGnohOoB5Q+cxOaEBza+rtfAFE4OAlRKxkfX4ZqFMBwmgS2fwHnQ
 pVJ8EvPjukF92u5x0elxCyikoXMdeWEL6jAwiYzxZCm7TQppAYErDP1Jp
 Psp/ILHwebjzJg/3rqvwFfyGJLl+9J7obFIK4qbaHEtDYQ2oDqsFf/q7R
 RPrAfedyx2z9i/m1d2OxbUDRaJaESBImhxVXOwrZ5inRHzNQ5CnVkwaZw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309654"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309654"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:42:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011778"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:42:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:42:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory
 access
Date: Wed, 13 Dec 2023 02:42:29 +0200
Message-ID: <20231213004237.20375-5-ville.syrjala@linux.intel.com>
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

On MTL accessing stolen memory via the BARs is somehow borked,
and it can hang the machine. As a workaround let's bypass the
BARs and just go straight to DSMBASE/GSMBASE instead.

Note that on every other platform this itself would hang the
machine, but on MTL the system firmware is expected to relax
the access permission guarding stolen memory to enable this
workaround, and thus direct CPU accesses should be fine.

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

