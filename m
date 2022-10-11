Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA795FAB31
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 05:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2192910E797;
	Tue, 11 Oct 2022 03:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C91210E797
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 03:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665458970; x=1696994970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+6j18bJscD/QTQtR21XxTOy8xsgn7L6ecYKk2hRV7qA=;
 b=VNNm/Vz4A2z9C4RtNNgLk51wxchw0jm9EfcoAf4qEfjNCsK3/PfFLdmv
 kjZAAZKRa4box+Ui8wW32MMiHT94nHgRn3lkgoddsTjNnhp2tytbh/pDg
 x1fhzXSbQEs1PPzZkx0wsrY640tJAxbvP0uUbYRr5rQpvQnYVVFNmW3xT
 SH2abjo4Pg7/kBeNsBhe8z2A64OuJeDtsk97RhEE6KWB8cyNxy8ZVz2yg
 phcSM0+v8KdI4Du4jiAuAupUiRcpi5crrDORdkWnyfOrQtS8rIKs9T/U/
 Tiba034NQ0AzgW0EuAjbViP6WvZR/FvviHuBwl5zosvMaOjgrzu7Npa6h g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284125831"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="284125831"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:29:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="715353302"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="715353302"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:29:29 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 20:29:23 -0700
Message-Id: <da81208882ba7fb24a8051c5edfbf6a735127f88.1665458640.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1665458639.git.ashutosh.dixit@intel.com>
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Warn if not in RC6 when GT is
 parked
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

Some i915 modules implicitly assume that there is no user, kernel or
firmware activity after GT is parked. For example, PMU calculations are
incorrect if GT is not in RC6 when GT is parked (outside of the GT
wakeref). Therefore check and warn if GT is not in RC6 at the time of
parking the GT.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c |  6 ++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c   | 15 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.h   |  1 +
 3 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 26aa2e979a148..5da81e22d0980 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -102,6 +102,8 @@ static int __gt_park(struct intel_wakeref *wf)
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
 	struct drm_i915_private *i915 = gt->i915;
+	bool in_rc6;
+	int ret;
 
 	GT_TRACE(gt, "\n");
 
@@ -123,6 +125,10 @@ static int __gt_park(struct intel_wakeref *wf)
 		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
 	}
 
+	ret = intel_rc6_in_rc6(&gt->rc6, &in_rc6);
+	if (!ret && !in_rc6)
+		drm_warn_once(&i915->drm, "Parking, but GT is not in RC6!\n");
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18e..4517988e704a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -666,6 +666,21 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 	set(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
 }
 
+int intel_rc6_in_rc6(struct intel_rc6 *rc6, bool *in_rc6)
+{
+	u32 gt_core_status;
+
+	/* GEN6_GT_CORE_STATUS exists only for Gen11+ */
+	if (GRAPHICS_VER(rc6_to_i915(rc6)) < 11)
+		return -ENODEV;
+
+	gt_core_status = intel_uncore_read_fw(rc6_to_uncore(rc6), GEN6_GT_CORE_STATUS)
+				& GEN6_RCn_MASK;
+	*in_rc6 = gt_core_status == GEN6_RC6 || gt_core_status == GEN6_RC7;
+
+	return 0;
+}
+
 void intel_rc6_disable(struct intel_rc6 *rc6)
 {
 	if (!rc6->enabled)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index b6fea71afc223..30da10399028d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -16,6 +16,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6);
 
 void intel_rc6_unpark(struct intel_rc6 *rc6);
 void intel_rc6_park(struct intel_rc6 *rc6);
+int intel_rc6_in_rc6(struct intel_rc6 *rc6, bool *in_rc6);
 
 void intel_rc6_sanitize(struct intel_rc6 *rc6);
 void intel_rc6_enable(struct intel_rc6 *rc6);
-- 
2.34.1

