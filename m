Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197206BC309
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 02:01:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7974410E905;
	Thu, 16 Mar 2023 01:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F4010E4D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 01:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678928474; x=1710464474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ai8EGe+5p+3V1mmCUPvpnPwYj0nsISGN3rPofS+JXNY=;
 b=bzNrkOPoLuTabCequHpzJoyxy3PGV4wS3Mc3sJZZZcgnfiwGcKcGznda
 IZlhXMSFo1/nwS9qf7r+nzjr8jKNgQorZUf/yl6rH60Dvt/8XUr+p4YoI
 F3lFET4bLXrtOgP6ncKLWHC1nU8K1aFJFIDiQP1vv6wZwttP/pvIoWxmT
 4jlix2YJn2Qw+LNz0KL9I0EKMAXk5xeCQ27LsbdeZ2SEwakn5aZzL75sL
 Fuh7fYJIYdnenLkRL9M0ivlHhP9TIo7TxoOmLuOQZuxzQ4IChRsNj8DzH
 SndYp+6Ubs4NM0aeZg9wNjM43U9UI/Cpw3brzIgeflSkiuuZxSUPI/q4/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400434061"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="400434061"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="743916665"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="743916665"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 18:01:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 18:00:51 -0700
Message-Id: <20230316010101.2590309-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
References: <20230316010101.2590309-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 02/12] drm/i915/mtl: Synchronize i915/BIOS on
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

