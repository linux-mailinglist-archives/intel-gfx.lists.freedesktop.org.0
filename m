Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2637D52BB53
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D560510ED7B;
	Wed, 18 May 2022 13:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B1610ED7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879269; x=1684415269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W2Q2Vyy8Grwv5EuRltdYu6dOxiFA8e5FuA+XwcZhweg=;
 b=mnki5T24sXPXY+Lae14L2+doIZhBSV+HgiC97jMhmDc1+UN8pzIqOTr9
 I2hprf/ekZIMCUSTbSBAc9pATW9Z05kH6Xn4wuijdv7e5jS3/scADtluZ
 4fZaCodF5Qsi9Q0KAdAZHWLsjwaHRoUgiLb+X+PZLJjWjWKTJ+mkfoY+b
 CWE9cEEBfA6+a8Vcptq8KZg5K1LsxzTov6iKlsMk8xy4oBSGEtewRWOgx
 UKGOddPIqILH6/LvL3LZvRGqS52Bvd8Tne7bWRVcMDhyDdWDB7I+oSjOR
 yQtaaIuYOHa0n1QKPy07oPvOujwv8VmndG6fvw7+i4iHWhAa61+fQ4Jfm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071686"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071686"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314269"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:30 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:11 +0530
Message-Id: <20220518130716.10936-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/dg1: OpRegion PCON DG1 MBD config
 support
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DGFX cards support both Add in Card(AIC) and Mother Board Down(MBD)
configs. MBD config requires HOST BIOS GPIO toggling support
in order to enable/disable VRAM SR using ACPI OpRegion.

i915 requires to check OpRegion PCON MBD Config bits to
discover whether Gfx Card is MBD config before enabling
VRSR.

BSpec: 53440
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  6 ++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index a728f4c2f532..3dcd54517b89 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -53,6 +53,8 @@
 #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
 #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
+#define PCON_DG1_MBD_CONFIG				BIT(9)
+#define PCON_DG1_MBD_CONFIG_FIELD_VALID			BIT(10)
 #define PCON_DGFX_BIOS_SUPPORTS_VRSR			BIT(11)
 #define PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID	BIT(12)
 
@@ -1242,6 +1244,37 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->lid_state = NULL;
 }
 
+static bool intel_opregion_dg1_mbd_config(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!IS_DG1(i915))
+		return false;
+
+	if (opregion->header->pcon & PCON_DG1_MBD_CONFIG_FIELD_VALID)
+		return opregion->header->pcon & PCON_DG1_MBD_CONFIG;
+	else
+		return false;
+}
+
+/**
+ * intel_opregion_vram_sr_required().
+ * @i915 i915 device priv data.
+ * It returns a boolean whether opregion vram_sr support
+ * is required.
+ */
+bool
+intel_opregion_vram_sr_required(struct drm_i915_private *i915)
+{
+	if (!IS_DGFX(i915))
+		return false;
+
+	if (IS_DG1(i915))
+		return intel_opregion_dg1_mbd_config(i915);
+
+	return false;
+}
+
 /*
  * intel_opregion_bios_supports_vram_sr() get HOST BIOS VRAM Self
  * Refresh capability support.
@@ -1269,6 +1302,9 @@ void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
 {
 	struct intel_opregion *opregion = &i915->opregion;
 
+	if (!intel_opregion_vram_sr_required(i915))
+		return;
+
 	if (drm_WARN(&i915->drm, !opregion->asle, "ASLE MAILBOX3 is not available\n"))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 0aa1c4a8a482..a74686aa3cc3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -77,6 +77,7 @@ int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 struct edid *intel_opregion_get_edid(struct intel_connector *connector);
 bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915);
 void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable);
+bool intel_opregion_vram_sr_required(struct drm_i915_private *i915);
 
 #else /* CONFIG_ACPI*/
 
@@ -138,6 +139,11 @@ static void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
 {
 }
 
+static bool intel_opregion_vram_sr_required(struct drm_i915_private *i915)
+{
+	return false;
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.26.2

