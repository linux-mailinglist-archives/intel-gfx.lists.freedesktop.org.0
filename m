Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0089667F14E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 23:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF2910E2D1;
	Fri, 27 Jan 2023 22:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CFF10E2E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 22:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674859407; x=1706395407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K9G5c9UQRcNvS5Z0DZHc/e3qorl5/a1vPBklH6uTvqY=;
 b=NBu+BVSDcygmS2vdJYDopdiPy2NLIoNTQPFafINabkwMajRyb+zngFM8
 C7n9dNT8Y0DiZGCfO93LaecN2Uc+lTCCVDg5UXLRL988f8NgpmVtphmoN
 DU5mxclyDZOFxD8FNMXb9qN/0+wT8fW57BvghXlW3SID823SV9484tRPD
 7B5dwnAS4OIE0SWg+5Qe9xJNsQkBNgkEY0YIOkMGoygJxVySqdyZwIL9+
 s6IQ7GGsWxFJ8rgBljNpZ/ejgr03wv7KzSLsF19CKkklKbB6hOlSqGd2e
 INhq/9gtha5nJwFUDrR5HyUUlZyi8QQdm++TuZyRmGilXmBfLL4I6PEjf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="328501626"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="328501626"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="771727414"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="771727414"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 14:43:13 -0800
Message-Id: <20230127224313.4042331-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127224313.4042331-1-matthew.d.roper@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dg1: Drop final use of
 IS_DG1_GRAPHICS_STEP
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

All production DG1 hardware has graphics stepping B0; there is no such
thing as C0.  As such, we can simplify

        IS_DG1_GRAPHICS_STEP(uncore->i915, STEP_A0, STEP_C0)

to just match DG1 in general.

Bspec: 44463
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 3 ---
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f3ad93db0b21..89fdfc67f8d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -158,7 +158,7 @@ static const struct intel_memory_region_ops intel_region_lmem_ops = {
 static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
 				     u64 *start, u32 *size)
 {
-	if (!IS_DG1_GRAPHICS_STEP(uncore->i915, STEP_A0, STEP_C0))
+	if (!IS_DG1(uncore->i915))
 		return false;
 
 	*start = 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 57b84dbca084..495788e18b77 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -656,9 +656,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_RKL_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
-#define IS_DG1_GRAPHICS_STEP(p, since, until) \
-	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
-
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
-- 
2.39.1

