Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50527CD85A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 11:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FAB10E12A;
	Wed, 18 Oct 2023 09:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F10F10E3C7;
 Wed, 18 Oct 2023 09:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697621909; x=1729157909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2ccUgyhgZlFPwuyb6c7YjouKROVLbPEz6EELbdrZDz8=;
 b=bHAu6q69lqiAKj1CfwnEuqaEJVbV74AkB/biv3AGxAro1YZfgMAR6iEj
 PNRvlfNd3EpUP/YqSEIPkpSLzirDbqH/mG2t1z6ni4VBM4s95FLL+uZAu
 Q4tkHPIQ2qTxXS6IzZDg81h1WkcyV12ZfoiezyjJTXuSiroi8Tmn6WRMI
 1f0idxmZrzXv+By5bAil7k07PQEMmA0HA5AsopP5BV/FAX3Fthqgngdhk
 hWANa61VagVwcYhNp7hQESXMnRvujY8039uZ92CtmbOxGvggpz1CmygIM
 PKAX/k4g6uEo0kszEL9lp/p+F7HnZoLoSVVHWfmacJNeOqzHgwflnOJVm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="7529265"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; 
   d="scan'208";a="7529265"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 02:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="872958098"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="872958098"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 02:38:25 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 11:38:15 +0200
Message-ID: <20231018093815.1349-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Flush WC GGTT only on required
 platforms
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, stable@vger.kernel.org,
 Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

gen8_ggtt_invalidate() is only needed for limited set of platforms
where GGTT is mapped as WC. This was added as way to fix WC based GGTT in
commit 0f9b91c754b7 ("drm/i915: flush system agent TLBs on SNB") and
there are no reference in HW docs that forces us to use this on non-WC
backed GGTT.

This can also cause unwanted side-effects on XE_HP platforms where
GFX_FLSH_CNTL_GEN6 is not valid anymore.

v2: Add a func to detect wc ggtt detection (Ville)
v3: Improve commit log and add reference commit (Daniel)

Fixes: d2eae8e98d59 ("drm/i915/dg2: Drop force_probe requirement")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: <stable@vger.kernel.org> # v6.2+
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 35 +++++++++++++++++++---------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 1c93e84278a0..15fc8e4703f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -195,6 +195,21 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
 	spin_unlock_irq(&uncore->lock);
 }
 
+static bool needs_wc_ggtt_mapping(struct drm_i915_private *i915)
+{
+	/*
+	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
+	 * will be dropped. For WC mappings in general we have 64 byte burst
+	 * writes when the WC buffer is flushed, so we can't use it, but have to
+	 * resort to an uncached mapping. The WC issue is easily caught by the
+	 * readback check when writing GTT PTE entries.
+	 */
+	if (!IS_GEN9_LP(i915) && GRAPHICS_VER(i915) < 11)
+		return true;
+
+	return false;
+}
+
 static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
 {
 	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
@@ -202,8 +217,12 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
 	/*
 	 * Note that as an uncached mmio write, this will flush the
 	 * WCB of the writes into the GGTT before it triggers the invalidate.
+	 *
+	 * Only perform this when GGTT is mapped as WC, see ggtt_probe_common().
 	 */
-	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
+	if (needs_wc_ggtt_mapping(ggtt->vm.i915))
+		intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6,
+				      GFX_FLSH_CNTL_EN);
 }
 
 static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
@@ -1140,17 +1159,11 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
 	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 
-	/*
-	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
-	 * will be dropped. For WC mappings in general we have 64 byte burst
-	 * writes when the WC buffer is flushed, so we can't use it, but have to
-	 * resort to an uncached mapping. The WC issue is easily caught by the
-	 * readback check when writing GTT PTE entries.
-	 */
-	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
-		ggtt->gsm = ioremap(phys_addr, size);
-	else
+	if (needs_wc_ggtt_mapping(i915))
 		ggtt->gsm = ioremap_wc(phys_addr, size);
+	else
+		ggtt->gsm = ioremap(phys_addr, size);
+
 	if (!ggtt->gsm) {
 		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
 		return -ENOMEM;
-- 
2.41.0

