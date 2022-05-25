Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86D3533D9F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 15:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D214410F066;
	Wed, 25 May 2022 13:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A8710F41C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 13:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653484765; x=1685020765;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hCPjhk7t/UDSimqz0AleWuy0NoALlcEuwoxp5PyGdmE=;
 b=VsczZgWWjZKuCw62DDiRg13AMdN7ah7fMQ8Xl0hS3ZIb7x788obLtSp7
 Fx8zxEvVJG8YlONsfnHl6P13dJNeY7IuOTcyf4r2P0ycpMQKxRRL5tcjQ
 mKc5OBuggRxXc7SaDsNz/HXxXZgpp9gzk6oKz46R0ovI06RsfxsDlSKm3
 Ap2O5/5rb/WfyAf1J3yxbywJNxdmMjHXLDEKrsGHZ2Zlj3Bn1RNmWjIMK
 OfD2c3G0zQERVzJk12lZAAntPZZROjVSwi40qbw403lyTc+VcOV48R/Se
 23D+PjG5Z+o+KCvSEpp/rhKy1ef5Ek13nW/LJj8OBU7RLuuaE6s9uwywx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="334454930"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="334454930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 06:19:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="676864800"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 06:19:24 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 May 2022 06:19:18 -0700
Message-Id: <4de1e4fd71a2971549c5cfb185412f190f15e235.1653484574.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1653484574.git.ashutosh.dixit@intel.com>
References: <cover.1653484574.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/pcode: Init pcode on different gt's
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
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b47746152d97..d26dcca7e654 100644
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

