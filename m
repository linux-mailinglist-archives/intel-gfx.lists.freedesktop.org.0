Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82603525972
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 03:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF5910FAA4;
	Fri, 13 May 2022 01:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3880F10FA7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 01:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652405826; x=1683941826;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wG4U1BEJqPGyCg7td0Qx/Tys8RXBufKQ25ry3DQ8/wE=;
 b=mQ4dIGHZ5V5nGJmJUBtITv6KfizdCf62+g47+EIF4z+gwixCpSrAF/AT
 IRYxd161kmakifcKG4O8Kmtmhd8Xxe+1xzUXaeCLkBVQqhSD642Lq++f1
 BcMVS+CPnfDTuuGewmb4MySO5MzqoB7r4tjC9bdJKIwRFy9mXma8UTrVv
 fiE9tab0bkY9hOoaTMaIdDqJWOIqPUWZP+VGGgoYAqTUgVY3SCVdQCQzd
 S0eXyRqdfqgC9/DVjYCM36fBGVnie+/r4R/e8RX4XtqvzQ3twTPkhTpU+
 t/BMOgjUDWtWG1yuiU/wrEe+Y/Ypk9ESW4/EC9iCfMnjapd3BBv6wg6C7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="257728759"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="257728759"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="671111020"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:37:05 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 18:36:56 -0700
Message-Id: <99f86f6e0c520a571f4dd4ab8a7b6dfdbb50bad3.1652405421.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1652405421.git.ashutosh.dixit@intel.com>
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
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

