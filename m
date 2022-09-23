Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF765E78F4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 13:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DF110E8A3;
	Fri, 23 Sep 2022 11:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D94410E8C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930854; x=1695466854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4DgZQq3Kq/9q3+vrL28Mwdn1dqd7brZKAZKyT56FQRw=;
 b=NtMbFm8nTHIbvlLHA0LXPFgvtFo+27cNOR1D/wABB3A+ZEvp4QWMHXf2
 a7OmnQ3aHBaafO3M5BbB/huvFvdOKybDjeL6miZpo8XB8bMo5TZyORF+M
 D3miD+Jn2Qlqccj58Jp1m9MLGFQpZ5Rjceewsm/NrTmHfmTHaa9sRHQXK
 s9RxMkvT2BAQNG8EbxMarETDYoRBiYSFLpYN/8zfkJ4obYJQhaYc3prNV
 pesGza6TBqH0AQPHTm9fxRYzHkqeTxLrotzMTTf9r7cJlmp5JRDXgyexj
 864vljbpmuqXHcmfh+DcT8tugEzxj0M7a56MJjSzVtH1tNlkR8wnOAx8E Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386858213"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386858213"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653363754"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:51 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 16:30:41 +0530
Message-Id: <20220923110043.789178-2-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923110043.789178-1-riana.tauro@intel.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/guc/slpc: Run SLPC selftests on
 all tiles
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

Run slpc selftests on all tiles

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 45 ++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index f8a1d27df272..928f74718881 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -270,26 +270,50 @@ static int run_test(struct intel_gt *gt, int test_type)
 static int live_slpc_vary_min(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_gt *gt = to_gt(i915);
+	struct intel_gt *gt;
+	unsigned int i;
+	int ret;
+
+	for_each_gt(gt, i915, i) {
+		ret = run_test(gt, VARY_MIN);
+		if (ret)
+			return ret;
+	}
 
-	return run_test(gt, VARY_MIN);
+	return ret;
 }
 
 static int live_slpc_vary_max(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_gt *gt = to_gt(i915);
+	struct intel_gt *gt;
+	unsigned int i;
+	int ret;
+
+	for_each_gt(gt, i915, i) {
+		ret = run_test(gt, VARY_MAX);
+		if (ret)
+			return ret;
+	}
 
-	return run_test(gt, VARY_MAX);
+	return ret;
 }
 
 /* check if pcode can grant RP0 */
 static int live_slpc_max_granted(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_gt *gt = to_gt(i915);
+	struct intel_gt *gt;
+	unsigned int i;
+	int ret;
+
+	for_each_gt(gt, i915, i) {
+		ret = run_test(gt, MAX_GRANTED);
+		if (ret)
+			return ret;
+	}
 
-	return run_test(gt, MAX_GRANTED);
+	return ret;
 }
 
 int intel_slpc_live_selftests(struct drm_i915_private *i915)
@@ -300,8 +324,13 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_slpc_max_granted),
 	};
 
-	if (intel_gt_is_wedged(to_gt(i915)))
-		return 0;
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i) {
+		if (intel_gt_is_wedged(gt))
+			return 0;
+	}
 
 	return i915_live_subtests(tests, i915);
 }
-- 
2.25.1

