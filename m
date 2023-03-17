Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 320C46BF61D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 00:17:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D8710E447;
	Fri, 17 Mar 2023 23:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C483410E426
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 23:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679095006; x=1710631006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UZQ9SmgeyVFS4Pg73zEqZJeVI45yjQGC/Q1KsevXccA=;
 b=QTntdKovWH3DQVMrt3g7cM4bbjJbcmC1/MF+yBI7w4cUu0rQC2SVuEA0
 OSs7K7s70Udkwgu6N0av/zHlRoWMr13doGHbofdEZkEUCTQCSnG3+uS4F
 22V7sbjgC+n0Dv6BP0dqKhPhDLC2tuYG7ut1A1+Lo5qdD4x9CTqws2MuT
 mBQbmi+xR6Q2Q/uuQTD2cxvCgaztOleVezb7UgP2IVSh0EPS13h7JPk9c
 pHSu+uqZ4e+5jJk0bGVFspugYdImIr4Tw4FQ7zovkIi1h6dn0l/1v2cZp
 OjMiqbD81sWJmwS4OJUHggA3blOoi+x8kmqkJEPjKLDDRDHAh930s6HjP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="335877101"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="335877101"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="712914876"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="712914876"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 16:16:32 -0700
Message-Id: <20230317231641.2815418-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 02/11] drm/i915/mtl: Synchronize i915/BIOS on
 C6 enabling
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

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

If BIOS enables/disables C6, i915 should do the same. Also, retain
this value across driver reloads. This is needed only for MTL as
of now due to an existing bug in OA which needs C6 disabled for
it to function. BIOS behavior is also different across platforms
in terms of how C6 is enabled.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 26 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_rc6.h       |  2 ++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h |  2 ++
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f4150f61f39c..f760586f9f46 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -420,6 +420,21 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
 	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
 }
 
+bool intel_check_bios_c6_setup(struct intel_rc6 *rc6)
+{
+	if (!rc6->bios_state_captured) {
+		struct intel_uncore *uncore = rc6_to_uncore(rc6);
+		intel_wakeref_t wakeref;
+
+		with_intel_runtime_pm(uncore->rpm, wakeref)
+			rc6->bios_rc_state = intel_uncore_read(uncore, GEN6_RC_STATE);
+
+		rc6->bios_state_captured = true;
+	}
+
+	return rc6->bios_rc_state & RC_SW_TARGET_STATE_MASK;
+}
+
 static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 {
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
@@ -503,10 +518,10 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA) {
+	if (IS_METEORLAKE(gt->i915) &&
+	    !intel_check_bios_c6_setup(rc6)) {
 		drm_notice(&i915->drm,
-			   "Media RC6 disabled on A step\n");
+			   "C6 disabled by BIOS\n");
 		return false;
 	}
 
@@ -707,9 +722,14 @@ void intel_rc6_disable(struct intel_rc6 *rc6)
 void intel_rc6_fini(struct intel_rc6 *rc6)
 {
 	struct drm_i915_gem_object *pctx;
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 
 	intel_rc6_disable(rc6);
 
+	/* We want the BIOS C6 state preserved across loads for MTL */
+	if (IS_METEORLAKE(rc6_to_i915(rc6)) && rc6->bios_state_captured)
+		set(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
+
 	pctx = fetch_and_zero(&rc6->pctx);
 	if (pctx)
 		i915_gem_object_put(pctx);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index 456fa668a276..e137c2c397c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -27,4 +27,6 @@ u64 intel_rc6_residency_us(struct intel_rc6 *rc6, enum intel_rc6_res_type id);
 void intel_rc6_print_residency(struct seq_file *m, const char *title,
 			       enum intel_rc6_res_type id);
 
+bool intel_check_bios_c6_setup(struct intel_rc6 *rc6);
+
 #endif /* INTEL_RC6_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index fa23c4dce00b..cd4587098162 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -29,6 +29,7 @@ struct intel_rc6 {
 	u64 cur_residency[INTEL_RC6_RES_MAX];
 
 	u32 ctl_enable;
+	u32 bios_rc_state;
 
 	struct drm_i915_gem_object *pctx;
 
@@ -36,6 +37,7 @@ struct intel_rc6 {
 	bool enabled : 1;
 	bool manual : 1;
 	bool wakeref : 1;
+	bool bios_state_captured : 1;
 };
 
 #endif /* INTEL_RC6_TYPES_H */
-- 
2.36.1

