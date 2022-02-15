Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9A74B6DBC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198A910E4C4;
	Tue, 15 Feb 2022 13:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F06710E4C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932265; x=1676468265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=biWCF2BnksDBvxCWDhIVzep8vv6zweDP/RZIMtPvf6U=;
 b=mlD+I5jb9ox+Mho+jeQCAXe4bJfg/Q1+yyAsyOFWVFP2BwDHg8NvBO9v
 jvak4nQ/HWdZ2TVG1Oiq5xYbFhUScpTVhLzpggMnVSScWFv8ONUcRU8l1
 DxuaerLpkZkfStlP7Wtlt0V9wFhirUimpTrTENHe44Yss55ui/xlo05hu
 lVLaqtMpI8M12BJxh/KpOLR+Z5qPBa7FDSGehXrtKAYzWgJQncTvreruo
 ZJrcYq1SGqBfFgdN3xt1D7D2l53LJnrjsmX8o6wYzkWnw3A65+D6JlfRn
 0Z0sCEPLQzK7yUx5/+GlaUhOvCkXG+Pe/dgxEt8DYRIARJyDilCHlouCH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313625906"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313625906"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="603828832"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:43 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 19:07:24 +0530
Message-Id: <20220215133727.13450-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220215133727.13450-1-anshuman.gupta@intel.com>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/opregion: Add dgfx opregion func
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
Cc: jani.nikula@intel.com
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

