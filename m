Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444C09AA2A3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 15:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C150610E319;
	Tue, 22 Oct 2024 13:01:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UTk5nXTK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B597910E68A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729602114; x=1761138114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=moJ5LNaDfCMzPpoLxHxVbtSJ9Xaopzr7ukxsOOdYKE8=;
 b=UTk5nXTK+BoR04g3j71a3Yb7y2Cnnpm2x3rbBSpPiPse8aIS8m9CqGU6
 EoUERYMRYVckbvkypL8iPXT6RDRzLjmAMA24cHJIf+dYCjKYwCohQiRiB
 UY1UkFbqA59b40P+eS/geH12eZWIy3ekOmyyVQ0lZBAOZ69ktmhE4WUjD
 +GriJdfd7Hj8+84PdXbwYztlJhYfA2njai2ofKlJrypHNtPJXRAxY8Fnf
 48fNasOO8JOq+ei65uacfdMry54q6SrqH3Q4xgClQ+J1sG0/ZQIFbC9Ik
 6LmNYJcYz3inwUbkTJhuS4xC9mMcOTWjLgVtq4VNRPYhvmlnYnJaLQcqf A==;
X-CSE-ConnectionGUID: GkmjnyJQQsGy0NVUlM7VIg==
X-CSE-MsgGUID: Elnx4odGRNqp8AXsJSVDJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="46620617"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="46620617"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:01:47 -0700
X-CSE-ConnectionGUID: jRxpaCEMTK6IkbOwTchgdg==
X-CSE-MsgGUID: a20h3o5YQ3eQN7Bbb/0lDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="103155886"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.59])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:01:45 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, rodrigo.vivi@intel.com,
 chris.p.wilson@linux.intel.com
Subject: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Date: Tue, 22 Oct 2024 18:52:26 +0530
Message-Id: <20241022132226.1110383-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Encountering forcewake errors related to render power gating;
therefore, disable it during workload execution.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index c864d101faf9..459394ab5258 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 					      VDN_MFX_POWERGATE_ENABLE(i));
 	}
 
+	rc6->pg_enable = pg_enable;
 	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
 }
 
@@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
 	intel_guc_rc_disable(gt_to_guc(gt));
 
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
-	if (GRAPHICS_VER(i915) >= 9)
+	if (GRAPHICS_VER(i915) >= 9) {
+		rc6->pg_enable = 0;
 		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
+	}
+
 	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
 	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
@@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
 
 	/* Restore HW timers for automatic RC6 entry while busy */
 	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
+
+	/*
+	 * Seeing render forcewake timeouts during active submissions so disable render PG
+	 * while workloads are under execution.
+	 * FIXME Remove this change once real cause of render force wake timeout is fixed
+	 */
+	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
+		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
+				      rc6->pg_enable & ~GEN9_RENDER_PG_ENABLE);
 }
 
 void intel_rc6_park(struct intel_rc6 *rc6)
@@ -715,6 +728,9 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 	else
 		target = 0x4; /* normal rc6 */
 	intel_uncore_write_fw(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
+
+	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
+		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, rc6->pg_enable);
 }
 
 void intel_rc6_disable(struct intel_rc6 *rc6)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index cd4587098162..58e8da74777c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -30,6 +30,7 @@ struct intel_rc6 {
 
 	u32 ctl_enable;
 	u32 bios_rc_state;
+	u32 pg_enable;
 
 	struct drm_i915_gem_object *pctx;
 
-- 
2.34.1

