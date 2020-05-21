Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A07E1DC3D5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E5D6E8D5;
	Thu, 21 May 2020 00:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D8B6E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:09 +0000 (UTC)
IronPort-SDR: I8YMRzLjOmkPFWpLkV8Qc3pzyYk1htDuMUX3C4f4SGmjgGiR2FKH3KyCOBYbnPZ93UncrOc8hI
 kUiSyOhW3pGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:09 -0700
IronPort-SDR: N8K5m8lTUGOPWsEiqEPcM9sFv9mv7QqKPRVwA7smdldt99xNGGRqDbTEx3kiyjBhS0TOK+gyzG
 +/S2szdT8a1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720889"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:38 -0700
Message-Id: <20200521003803.18936-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/37] drm/i915/dg1: Add DG1 PCI IDs
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

Bspec: 44463

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 3 ++-
 include/drm/i915_pciids.h       | 4 ++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e5a851a2dfe7..f1a3a59093c9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -879,7 +879,7 @@ static const struct intel_device_info rkl_info = {
 	.has_master_unit_irq = 1, \
 	.has_snoop_pcie = 1
 
-static const struct intel_device_info intel_dg1_info = {
+static const struct intel_device_info dg1_info = {
 	GEN12_DGFX_FEATURES,
 	PLATFORM(INTEL_DG1),
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
@@ -964,6 +964,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_EHL_IDS(&ehl_info),
 	INTEL_TGL_12_IDS(&tgl_info),
 	INTEL_RKL_IDS(&rkl_info),
+	INTEL_DG1_IDS(&dg1_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index bc989de2aac2..f44fe822880d 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -614,4 +614,8 @@
 	INTEL_VGA_DEVICE(0x4C90, info), \
 	INTEL_VGA_DEVICE(0x4C9A, info)
 
+/* DG1 */
+#define INTEL_DG1_IDS(info) \
+	INTEL_VGA_DEVICE(0x4905, info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
