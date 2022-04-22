Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF47550BDC7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 18:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4D910E55C;
	Fri, 22 Apr 2022 16:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F16710E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 16:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650646783; x=1682182783;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DjUKBWzt2vrE4F6pVrgd2hSIRjJlzwc8zDo/+ko9MTs=;
 b=hWgF+x3j1fGQeOu4Fgb9y4Ij/RzLd2mASnF02mnN+njCtRZXjhqEW3XQ
 uFNXMvI6fN5r9wIqPGVPm7lPWBleyv/0raIuvgvjkwhSd0I7SUyJI8UPW
 TWugdTmwYaK8KjfmA1HlJPOxIFK1Vp12bQOOfC4kKtVeriyGOklZbXQDj
 Jw2fwueQ3wMUWVGjrKI4RAQxyk9RpOFvtCO3TnTZLszSzbpUxdQ7fRbjz
 em47wfzsnM1HwVG4+OXjKGQAVB0/R7bzocDcjuyq1ze2tlUcnSD8/7Fik
 Hbcbr1SZ1nu0bZ7qHcp3bfSgOdC3Viks6a+Kci1y3etVfoYdcmOiukHHQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="351175811"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="351175811"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 09:55:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="577993564"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 09:55:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Apr 2022 09:55:35 -0700
Message-Id: <20220422165535.3952178-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915: Add first set of DG2 PCI IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The IDs added here are the subset reserved for 'motherboard down'
designs of DG2.  We have all the necessary support upstream to enable
these now (although they'll continue to require force_probe until the
usual requirements are met).

The remaining DG2 IDs for add-in cards will come in a future patch once
some additional required functionality has fully landed.

Bspec: 44477
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Dave Airlie <airlied@gmail.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---

These IDs already exist in drm-tip via the topic/core-for-CI branch, so
I've based this patch on drm-intel-next (where we intend to land it)
instead of drm-tip.

 drivers/gpu/drm/i915/i915_pci.c          |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 21 +++++++++++++++++++++
 include/drm/i915_pciids.h                | 22 ++++++++++++++++++++++
 3 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f59e526b03fc..c88e454a74bb 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1056,7 +1056,6 @@ static const struct intel_device_info xehpsdv_info = {
 		BIT(VECS0) | BIT(VECS1) | \
 		BIT(VCS0) | BIT(VCS2)
 
-__maybe_unused
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
@@ -1152,6 +1151,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
+	INTEL_DG2_IDS(&dg2_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 74c3ffb66b8d..cefa9ed784ff 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -186,6 +186,18 @@ static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLP_IDS(0),
 };
 
+static const u16 subplatform_g10_ids[] = {
+	INTEL_DG2_G10_IDS(0),
+};
+
+static const u16 subplatform_g11_ids[] = {
+	INTEL_DG2_G11_IDS(0),
+};
+
+static const u16 subplatform_g12_ids[] = {
+	INTEL_DG2_G12_IDS(0),
+};
+
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
 {
 	for (; num; num--, p++) {
@@ -231,6 +243,15 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpl_ids,
 			      ARRAY_SIZE(subplatform_rpl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL);
+	} else if (find_devid(devid, subplatform_g10_ids,
+			      ARRAY_SIZE(subplatform_g10_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G10);
+	} else if (find_devid(devid, subplatform_g11_ids,
+			      ARRAY_SIZE(subplatform_g11_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G11);
+	} else if (find_devid(devid, subplatform_g12_ids,
+			      ARRAY_SIZE(subplatform_g12_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_G12);
 	}
 
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index a7b5eea7ffaa..283dadfbb4db 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -692,4 +692,26 @@
 	INTEL_VGA_DEVICE(0xA7A8, info), \
 	INTEL_VGA_DEVICE(0xA7A9, info)
 
+/* DG2 */
+#define INTEL_DG2_G10_IDS(info) \
+	INTEL_VGA_DEVICE(0x5690, info), \
+	INTEL_VGA_DEVICE(0x5691, info), \
+	INTEL_VGA_DEVICE(0x5692, info)
+
+#define INTEL_DG2_G11_IDS(info) \
+	INTEL_VGA_DEVICE(0x5693, info), \
+	INTEL_VGA_DEVICE(0x5694, info), \
+	INTEL_VGA_DEVICE(0x5695, info), \
+	INTEL_VGA_DEVICE(0x56B0, info)
+
+#define INTEL_DG2_G12_IDS(info) \
+	INTEL_VGA_DEVICE(0x5696, info), \
+	INTEL_VGA_DEVICE(0x5697, info), \
+	INTEL_VGA_DEVICE(0x56B2, info)
+
+#define INTEL_DG2_IDS(info) \
+	INTEL_DG2_G10_IDS(info), \
+	INTEL_DG2_G11_IDS(info), \
+	INTEL_DG2_G12_IDS(info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.35.1

