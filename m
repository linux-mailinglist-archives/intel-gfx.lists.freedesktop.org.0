Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8454BCFEB
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 17:38:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B2B10E267;
	Sun, 20 Feb 2022 16:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C67D10E267
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Feb 2022 16:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645375075; x=1676911075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=biWCF2BnksDBvxCWDhIVzep8vv6zweDP/RZIMtPvf6U=;
 b=QJPfP4QBcUEjk6l2RyLyqIbKm7nTCOBq7+/QM/nvOc2CvY/8zSglNrk0
 1pnmUKwTy8+u8GWBOW12vmYsLraUbMjVrBFMmi6Iv/nW1Nob+WNupZm12
 pANXK7swaVeAB1vGnNptU427dmIM1QHU/S1mJ7iG/2HkBkNTvW1ttbVSk
 t4CBQKqWeiRaN1iTMz1lVz168/b8HIG8wn1KhfnQLm5/mjtFROG3XhWVy
 TWqM1WHSN9l+HBN75SSxE3r4IEX1oWn49VVJ25aMde7U1FaUn77Mun1W0
 oCo4xKNwMtkxPk9s/iqjSK1k0gCev3GNYhKrLvYSf/JYn5KQAuKxewyOL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314650644"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314650644"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="490199528"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:52 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Feb 2022 22:07:27 +0530
Message-Id: <20220220163730.5021-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220220163730.5021-1-anshuman.gupta@intel.com>
References: <20220220163730.5021-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915/opregion: Add dgfx opregion func
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
index 94eb7c23fcb4..eca2d3a4f72b 100644
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
+static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
+{
+}
+
+static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
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

