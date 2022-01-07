Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8379D4874EE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 10:50:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B535911A682;
	Fri,  7 Jan 2022 09:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FDB11B18C
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 09:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641549008; x=1673085008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uvu577Wd3Ejs7q89Zx4K6mqn/kqsanUfrAmxoRn/cJw=;
 b=Dqs992tmpOpLAzDP/6zHzQ9HZa5sdeJOqZt65NQnZMveNGSPwEwbkE86
 lRuMvuEROt6QkFluRPLYMGH+SxOswcCB1dhIE5vXxbf3BqqHQxhxmxsm6
 u/sr45d+jn1OZtk7zrXOImYrcmvCcpoLHs20/RsMWrSWDSMsP+/IDmbXX
 nvOScREFabL6KGjVcPtXsQ7K7Th2lQy/+DfjXRbQfnVOKcAOKKTnA1KVG
 b8EM3c4K2mV7NKpkuBVh+4m+1AAkj0J/rC4/rT5PLSZONAYdYk1bYLslC
 HuDkcnJx2vJ0wcNp9LbNko9jZ/VADghq4/4qJRSdEgjinsMlkUAvLpW8P Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="306210618"
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="306210618"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:50:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,269,1635231600"; d="scan'208";a="527321464"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 01:50:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 11:49:50 +0200
Message-Id: <20220107094951.96181-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220107094951.96181-1-jani.nikula@intel.com>
References: <20220107094951.96181-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: move VGA registers to intel_vga.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only users of the VGA register macros are in intel_vga.c. Hide the
macros there.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 41 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          | 41 ------------------------
 2 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index fa779f7ea415..5801cd41eb72 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -12,6 +12,47 @@
 #include "intel_de.h"
 #include "intel_vga.h"
 
+/* VGA registers */
+#define VGA_ST01_MDA				0x3ba
+#define VGA_ST01_CGA				0x3da
+
+#define VGA_MSR_WRITE				0x3c2
+#define VGA_MSR_READ				0x3cc
+#define   VGA_MSR_MEM_EN			(1 << 1)
+#define   VGA_MSR_CGA_MODE			(1 << 0)
+
+#define VGA_SR_INDEX				0x3c4
+#define   SR01					1
+#define VGA_SR_DATA				0x3c5
+
+#define VGA_AR_INDEX				0x3c0
+#define   VGA_AR_VID_EN (1 << 5)
+#define VGA_AR_DATA_WRITE			0x3c0
+#define VGA_AR_DATA_READ			0x3c1
+
+#define VGA_GR_INDEX				0x3ce
+#define VGA_GR_DATA				0x3cf
+/* GR05 */
+#define   VGA_GR_MEM_READ_MODE_SHIFT		3
+#define   VGA_GR_MEM_READ_MODE_PLANE		1
+/* GR06 */
+#define   VGA_GR_MEM_MODE_MASK			0xc
+#define   VGA_GR_MEM_MODE_SHIFT			2
+#define   VGA_GR_MEM_A0000_AFFFF		0
+#define   VGA_GR_MEM_A0000_BFFFF		1
+#define   VGA_GR_MEM_B0000_B7FFF		2
+#define   VGA_GR_MEM_B0000_BFFFF		3
+
+#define VGA_DACMASK				0x3c6
+#define VGA_DACRX				0x3c7
+#define VGA_DACWX				0x3c8
+#define VGA_DACDATA				0x3c9
+
+#define VGA_CR_INDEX_MDA			0x3b4
+#define VGA_CR_DATA_MDA				0x3b5
+#define VGA_CR_INDEX_CGA			0x3d4
+#define VGA_CR_DATA_CGA				0x3d5
+
 static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
 {
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index baa0b9e6acb2..7517a2688896 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -460,48 +460,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
 #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
 
-/* VGA stuff */
-
-#define VGA_ST01_MDA 0x3ba
-#define VGA_ST01_CGA 0x3da
-
 #define _VGA_MSR_WRITE _MMIO(0x3c2)
-#define VGA_MSR_WRITE 0x3c2
-#define VGA_MSR_READ 0x3cc
-#define   VGA_MSR_MEM_EN (1 << 1)
-#define   VGA_MSR_CGA_MODE (1 << 0)
-
-#define VGA_SR_INDEX 0x3c4
-#define SR01			1
-#define VGA_SR_DATA 0x3c5
-
-#define VGA_AR_INDEX 0x3c0
-#define   VGA_AR_VID_EN (1 << 5)
-#define VGA_AR_DATA_WRITE 0x3c0
-#define VGA_AR_DATA_READ 0x3c1
-
-#define VGA_GR_INDEX 0x3ce
-#define VGA_GR_DATA 0x3cf
-/* GR05 */
-#define   VGA_GR_MEM_READ_MODE_SHIFT 3
-#define     VGA_GR_MEM_READ_MODE_PLANE 1
-/* GR06 */
-#define   VGA_GR_MEM_MODE_MASK 0xc
-#define   VGA_GR_MEM_MODE_SHIFT 2
-#define   VGA_GR_MEM_A0000_AFFFF 0
-#define   VGA_GR_MEM_A0000_BFFFF 1
-#define   VGA_GR_MEM_B0000_B7FFF 2
-#define   VGA_GR_MEM_B0000_BFFFF 3
-
-#define VGA_DACMASK 0x3c6
-#define VGA_DACRX 0x3c7
-#define VGA_DACWX 0x3c8
-#define VGA_DACDATA 0x3c9
-
-#define VGA_CR_INDEX_MDA 0x3b4
-#define VGA_CR_DATA_MDA 0x3b5
-#define VGA_CR_INDEX_CGA 0x3d4
-#define VGA_CR_DATA_CGA 0x3d5
 
 #define MI_PREDICATE_SRC0	_MMIO(0x2400)
 #define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
-- 
2.30.2

