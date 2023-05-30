Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222EA716CE3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 20:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826C110E40C;
	Tue, 30 May 2023 18:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF1010E1AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 18:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685472843; x=1717008843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O6NVGpCh9ckRzdgRWYKsbTcpuytepQm5jGmtqDISckg=;
 b=fGoBSusskvGjTzwF3Vrc9LFfIjOlE10J4nbus9mgm7KdSyA9ZcHzvRhp
 x9KOTyff6ZXH8swmK0FzCnMDlaE1Gm5tvcRo5+dQoCCWqMmDViktqiQKO
 zMoTN8BCtCXPWPJYZ9n8wrjl9cdkxycr8ZRLzgoVBqFM/+D4RYPnjuSiQ
 shr2k6vNXoYoDi5pyjQcloRMLGo/uNe0xClufac/nhnL4WtZrUckZ86Lp
 mSdHz6fsUHZsUrxR0PGQzi8pflf9LULpq9crTOP/Oarj5WeTkQkMtutAz
 hKvm4rLJnFP5ezlMv+PLKBeVY8GQuOmnpxRnHjrLLWmAWaE25Pxc879ON g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="418504050"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="418504050"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796381494"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="796381494"
Received: from anushasr-simics.jf.intel.com ([10.165.21.205])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:00 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 11:55:28 -0700
Message-Id: <20230530185529.3378520-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN
 defines
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

Follow consistent naming convention. Replace ADLP with
ALDERLAKE_P

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                 | 2 +-
 drivers/gpu/drm/i915/intel_step.c               | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index 852bea0208ce..cc9569af7f0c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -94,7 +94,7 @@ static int guc_hwconfig_fill_buffer(struct intel_guc *guc, struct intel_hwconfig
 
 static bool has_table(struct drm_i915_private *i915)
 {
-	if (IS_ALDERLAKE_P(i915) && !IS_ADLP_N(i915))
+	if (IS_ALDERLAKE_P(i915) && !IS_ALDERLAKE_P_N(i915))
 		return true;
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		return true;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index dc5c96c503a9..0989003a10ed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -276,7 +276,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 	 * ADL-S, otherwise the GuC might attempt to fetch a config table that
 	 * does not exist.
 	 */
-	if (IS_ADLP_N(i915))
+	if (IS_ALDERLAKE_P_N(i915))
 		p = INTEL_ALDERLAKE_S;
 
 	GEM_BUG_ON(uc_fw->type >= ARRAY_SIZE(blobs_all));
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d400cecb318b..4ef336f6f24b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -579,7 +579,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
 #define IS_ADLS_RPLS(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_N(i915) \
+#define IS_ALDERLAKE_P_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ALDERLAKE_P_RPLP(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 10d86c525beb..0afe113b295a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -192,7 +192,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_XEHPSDV(i915)) {
 		revids = xehpsdv_revids;
 		size = ARRAY_SIZE(xehpsdv_revids);
-	} else if (IS_ADLP_N(i915)) {
+	} else if (IS_ALDERLAKE_P_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
 	} else if (IS_ALDERLAKE_P_RPLP(i915)) {
-- 
2.25.1

