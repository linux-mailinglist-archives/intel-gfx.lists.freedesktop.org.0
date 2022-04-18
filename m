Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C72D1504F13
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 12:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EDA210F580;
	Mon, 18 Apr 2022 10:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0FF10F580
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279272; x=1681815272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JeCKXwJfvj3mPd9/Xa6RwbmL8qkj843RGPKIDgZgiZU=;
 b=e6+ZUmXpAIdivaiQecGm6BB1kaS5rZM/epcLioOkpwzYYRUUwQBV5OMO
 BT/qDgYvunWEmBPeubiq+DVx3Hn5OO+hEeBbtzw8fEeL20SvtmJY7UxAH
 6Lks5zdaRrPr8uKzx/ApbgPW5/ACie8/bdkLIzxwekYziA/IbF2Pynkpr
 5VCKSJqlK3zgGRKbiABf8+DqRffpuIOaYZTurgjdKwn3DsSwi4N/fDuJb
 FqUttiYXhIUUU202zcUYcG+YtmU1tUgQPRm5reKzoAN9IwiZ39HTjo25F
 zAjaec6Li1yMaSLaIZW8vBzTbjXh0RrEtZbdKjlAavZJK9Fe0ibXJwXmy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250798268"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="250798268"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="665139365"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:29 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 16:24:05 +0530
Message-Id: <20220418105408.13444-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220418105408.13444-1-anshuman.gupta@intel.com>
References: <20220418105408.13444-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/6] drm/i915/opregion: Add dgfx opregion func
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding DGFX opregion dummy functions.
These will be setup later to support dgfx opregion.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 34 +++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e43aac5c0425..6bba0e2cff72 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1312,16 +1312,46 @@ static const struct i915_opregion_func igfx_opregion_func = {
 	.free_opregion = intel_igfx_free_opregion,
 };
 
+static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static void intel_dgfx_free_rvda(struct drm_i915_private *i915, void *rvda)
+{
+}
+
+static void intel_dgfx_free_opregion(struct drm_i915_private *i915, void *opreg)
+{
+}
+
+static const struct i915_opregion_func dgfx_opregion_func = {
+	.alloc_opregion = intel_dgfx_alloc_opregion,
+	.alloc_rvda = intel_dgfx_alloc_rvda,
+	.free_rvda = intel_dgfx_free_rvda,
+	.free_opregion = intel_dgfx_free_opregion,
+};
+
 /**
  * intel_opregion_init() - Init ACPI opregion.
  * @i915 i915 device priv data.
- * opregion init wrapper function, which encapsulate intel_opregion_setup.
+ * opregion init wrapper function.
+ * It initialize the dgfx/igfx opregion function pointers,
+ * and encapsulate intel_opregion_setup.
  */
 int intel_opregion_init(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
 
-	opregion->opregion_func = &igfx_opregion_func;
+	if (IS_DGFX(i915))
+		opregion->opregion_func = &dgfx_opregion_func;
+	else
+		opregion->opregion_func = &igfx_opregion_func;
 
 	return intel_opregion_setup(i915);
 }
-- 
2.26.2

