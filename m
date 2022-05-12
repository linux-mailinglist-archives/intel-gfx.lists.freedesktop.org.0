Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD285242BF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 04:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE9210FFF2;
	Thu, 12 May 2022 02:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E9910FF3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 02:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652322753; x=1683858753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wG4U1BEJqPGyCg7td0Qx/Tys8RXBufKQ25ry3DQ8/wE=;
 b=ghx7+g2w+/pBMaGCX2GtAkHHqxGvMdL59Z01f/0ha3E/Q7GdoLQtcGWl
 wP3HgxnEOSMar45Dzdr/sxxJS1s3Uh7slHFZ8PMwXN39anXv4AbEvuyFl
 gTxZ2f4dcO6AGxbDvR8xcL7INsqAVXEpD6GGseYynXCJD3F/51BE9cueE
 TEg6Y+XVmhrTos3cR9J/35ffLU3xgMcaQ2JlRmkEQWiR8+CV7I57OvdnJ
 TeQrE3ETOg9SrD897w+imMA2K6W4c+CVk1/5hIqc5gKmibxvRpI2hKDfU
 PHZy6CCmCKGzxV6t5uU/RttjWjoXc6LTZNcOmAn3inct+jrGzvk5imPvK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269540416"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269540416"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="739484197"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 19:32:17 -0700
Message-Id: <1fa74bb419d8120ecfac01c4b7c2367bd0e69b97.1652320806.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1652320806.git.ashutosh.dixit@intel.com>
References: <cover.1652320806.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/pcode: Init pcode on different gt's
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend pcode initialization to pcode on different gt's.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0e9763868d68..e137bcf021ee 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -520,6 +520,22 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
 	return ret;
 }
 
+static int i915_pcode_init(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	int id, ret;
+
+	for_each_gt(gt, i915, id) {
+		ret = intel_pcode_init(gt->uncore);
+		if (ret) {
+			drm_err(&gt->i915->drm, "gt%d: intel_pcode_init failed %d\n", id, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * i915_driver_hw_probe - setup state requiring device access
  * @dev_priv: device private
@@ -629,7 +645,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_opregion_setup(dev_priv);
 
-	ret = intel_pcode_init(&dev_priv->uncore);
+	ret = i915_pcode_init(dev_priv);
 	if (ret)
 		goto err_msi;
 
@@ -1251,7 +1267,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	ret = intel_pcode_init(&dev_priv->uncore);
+	ret = i915_pcode_init(dev_priv);
 	if (ret)
 		return ret;
 
-- 
2.34.1

