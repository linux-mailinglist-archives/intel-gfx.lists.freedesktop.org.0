Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E146BDA1E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D735110E36C;
	Thu, 16 Mar 2023 20:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D9910E362
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998391; x=1710534391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i7emm7Fabdo0rz1fkF37JuoWd8Fxib/4fny5phA2wYg=;
 b=UV7GN9dcvrKwW6NzMXYrqJs5mCouVUGOnx21ahG+daM6z++gIL5DVvO7
 LLlMpN1SRbxDnZSmc/j00BNGVSwuVX+oJ67QN0qv0/+D2zdU9pVFLx0ti
 H4NT1oS5SobgHJuRwaP94Qmlz05Xoaw0qHuIWBFVDQ6Spnjz/4cHwoDpk
 p8H6cxxRLs9VbcI9R0W+VLvPCXDmLc2IZvWU2e77MK6dza6UiGpWpXeZ9
 eG1TL8hlbZf01VGVde5EEreMO/n13RrGykFNA6rsKH/cJPaqlrL5jA6hJ
 0gLxgmmd8Mz821s5EopK+OFmWWiArCokyXKVUmMeZGB9nSSAwZWn7fCjT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475494"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475494"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031888"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031888"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:48 -0700
Message-Id: <20230316202549.1764024-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/mtl: Synchronize i915/BIOS on C6
 enabling
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

If BIOS enables/disables C6, i915 should do the same. Also, retain
this value across driver reloads. This is needed only for MTL as
of now due to an existing bug in OA which needs C6 disabled for
it to function. BIOS behavior is also different across platforms
in terms of how C6 is enabled.

v2: Review comments (Umesh)
v3: Cache the C6 enable value for all MTL. The OA WA is needed only
for A/B step, but we don't need to check for that here.
v4: Rename to mtl_check_bios_c6_setup()

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f4150f61f39c..517d14e29aac 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -420,6 +420,15 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
 	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
 }
 
+static bool mtl_check_bios_c6_setup(struct intel_rc6 *rc6)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+
+	rc6->bios_rc_state = intel_uncore_read(uncore, GEN6_RC_STATE);
+
+	return rc6->bios_rc_state & RC_SW_TARGET_STATE_MASK;
+}
+
 static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 {
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
@@ -503,6 +512,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
+	if (IS_METEORLAKE(gt->i915) &&
+	    !mtl_check_bios_c6_setup(rc6)) {
+		drm_notice(&i915->drm,
+			   "C6 disabled by BIOS\n");
+		return false;
+	}
+
 	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
 	    gt->type == GT_MEDIA) {
 		drm_notice(&i915->drm,
@@ -707,9 +723,14 @@ void intel_rc6_disable(struct intel_rc6 *rc6)
 void intel_rc6_fini(struct intel_rc6 *rc6)
 {
 	struct drm_i915_gem_object *pctx;
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 
 	intel_rc6_disable(rc6);
 
+	/* We want the BIOS C6 state preserved across loads for MTL */
+	if (IS_METEORLAKE(rc6_to_i915(rc6)))
+		set(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
+
 	pctx = fetch_and_zero(&rc6->pctx);
 	if (pctx)
 		i915_gem_object_put(pctx);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index fa23c4dce00b..57bb437bcbbd 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -29,6 +29,7 @@ struct intel_rc6 {
 	u64 cur_residency[INTEL_RC6_RES_MAX];
 
 	u32 ctl_enable;
+	u32 bios_rc_state;
 
 	struct drm_i915_gem_object *pctx;
 
-- 
2.34.1

