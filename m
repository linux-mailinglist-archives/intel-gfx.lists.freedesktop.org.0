Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA82660C97
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Jan 2023 06:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346D810E907;
	Sat,  7 Jan 2023 05:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28AF10E907
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Jan 2023 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673069812; x=1704605812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XpREKHLWwGZuu9a3Y18malQkebggofqibMd9inSuM9Q=;
 b=AckfYJ3N7W9HlpZK54YmCwYUx4FdTRC7VVC0K8N0Ndg+0GmoSHRf8oTY
 Fma0Ch2rRPfq62V8dUs9hDrzL/xbW/Rocer5sumT/9ooTZxBjygPjHp6b
 1phSBP++b4KNfLJ4C1uSs6jpdzwFssWyO4WPC1Mv0jFmSi1frmti6jQ90
 Y3JgoqtWveJ572OhqMU0+L42lRjtqDDrN54oBAeWs9BOa5TrWuCQGTqeD
 n0ek4HKz8KMNIxrW4SD7AY+XrMY921s3vdQFXY8s5O0T4308cwK2lSX1H
 q1CFWld4AL3mBKkZiwrTQ/B8L91IhnUwX8dvZ5PBTnjMmexXKWL5DQnLS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="320316738"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="320316738"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 21:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="780178983"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="780178983"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga004.jf.intel.com with ESMTP; 06 Jan 2023 21:36:49 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Jan 2023 11:06:42 +0530
Message-Id: <20230107053643.1984045-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/2] drm/i915: Add rplu sub platform
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding RPL-U as a sub platform. In RPL-U a new CDCLK step has
been added so we need to make a distinction between RPL-P
and RPL-U while CDCLK initialization.

Adding a sub-platform, enables us to make this differentiation
in the code.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 arch/x86/kernel/early-quirks.c           | 1 +
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 1 +
 drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 drivers/gpu/drm/i915/intel_step.c        | 3 +++
 include/drm/i915_pciids.h                | 7 +++++--
 7 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index a6c1867fc7aa..1ba9926c8974 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -559,6 +559,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_ADLN_IDS(&gen11_early_ops),
 	INTEL_RPLS_IDS(&gen11_early_ops),
 	INTEL_RPLP_IDS(&gen11_early_ops),
+	INTEL_RPLU_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48fd82722f12..c88e514728a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ADLP_RPLP(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
+#define IS_ADLP_RPLU(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6cc65079b18d..e9f3b99b3e00 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
+	INTEL_RPLU_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
 	INTEL_MTL_IDS(&mtl_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..88f3da63948b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -201,6 +201,10 @@ static const u16 subplatform_rpl_ids[] = {
 	INTEL_RPLP_IDS(0),
 };
 
+static const u16 subplatform_rplu_ids[] = {
+	INTEL_RPLU_IDS(0),
+};
+
 static const u16 subplatform_g10_ids[] = {
 	INTEL_DG2_G10_IDS(0),
 	INTEL_ATS_M150_IDS(0),
@@ -268,6 +272,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_rpl_ids,
 			      ARRAY_SIZE(subplatform_rpl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_RPL);
+	} else if (find_devid(devid, subplatform_rplu_ids,
+			      ARRAY_SIZE(subplatform_rplu_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_RPLU);
 	} else if (find_devid(devid, subplatform_g10_ids,
 			      ARRAY_SIZE(subplatform_g10_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G10);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d588e5fd2eea..3e3ca5eb073f 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,7 @@ enum intel_platform {
  * bit set
  */
 #define INTEL_SUBPLATFORM_N    1
+#define INTEL_SUBPLATFORM_RPLU  2
 
 /* MTL */
 #define INTEL_SUBPLATFORM_M	0
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 84a6fe736a3b..df75057eaa65 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -194,6 +194,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ADLP_RPLP(i915)) {
 		revids = adlp_rplp_revids;
 		size = ARRAY_SIZE(adlp_rplp_revids);
+	} else if (IS_ADLP_RPLU(i915)) {
+		revids = adlp_rplp_revids;
+		size = ARRAY_SIZE(adlp_rplp_revids);
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..87bb7e26dfb6 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -687,10 +687,13 @@
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
 	INTEL_VGA_DEVICE(0xA720, info), \
-	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info)
+
+/* RPL-U */
+#define INTEL_RPLU_IDS(info) \
 	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A9, info)
 
 /* DG2 */
-- 
2.25.1

