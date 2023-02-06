Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF4068C370
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CAB10E420;
	Mon,  6 Feb 2023 16:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F86410E418
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675701318; x=1707237318;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=izZUsIq1+6nE09Hjy5Ax+0Kr7YIDdWYSRwfN79x9BZw=;
 b=jHC9drCv8jHWcfoNrFea0brH0rq7g4ZBnOYmhIt6ZfvvsPinie8ssFoq
 CI4q1L9R28v8Xi3svhacgPt1LHuyldW+UF+8WIUyoJ5k0sdqOfJMMKGGS
 D1v65OpV3a0w+X4EW7d4yyWcJnsCIW2asZt4TY1FZbgz/Z3B7laXG2HcN
 EpbgAMGheurYV/rTohivigPOQMGD5iQP6BM9DwMOSrJy4rTwM2hV74WJS
 QT8KOMjtzoCC1ZxK8hCWOeSZ+LUb2zLa47bG7QoBYXZqkLcArH78LYi2Y
 3oNUeNJ65rQYLBnBi5rNGXyI+ar6OqF+I5C4iJ1dH8rt+wdvIGviQaoBJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="312903620"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="312903620"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="659907507"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="659907507"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 18:35:12 +0200
Message-Id: <20230206163512.2841513-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230206163512.2841513-1-imre.deak@intel.com>
References: <20230206163512.2841513-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Factor out a function disabling
 fused-off display
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

Factor out a function used both on older and new platforms to disable
the display functionality if the display is fused-off.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++-----------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 044ac552c9280..9d6d1fad9f1d9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -369,6 +369,21 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
 	intel_device_info_subplatform_init(i915);
 }
 
+static void disable_fused_off_display(struct drm_i915_private *i915)
+{
+	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
+
+	drm_info(&i915->drm, "Display fused off, disabling\n");
+
+	runtime->pipe_mask = 0;
+	runtime->cpu_transcoder_mask = 0;
+	runtime->fbc_mask = 0;
+	runtime->has_hdcp = 0;
+	runtime->fbc_mask = 0;
+	runtime->has_dmc = 0;
+	runtime->has_dsc = 0;
+}
+
 /**
  * intel_device_info_runtime_init - initialize runtime info
  * @dev_priv: the i915 device
@@ -454,11 +469,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
 		    (HAS_PCH_CPT(dev_priv) &&
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
-			drm_info(&dev_priv->drm,
-				 "Display fused off, disabling\n");
-			runtime->pipe_mask = 0;
-			runtime->cpu_transcoder_mask = 0;
-			runtime->fbc_mask = 0;
+			disable_fused_off_display(dev_priv);
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
 			runtime->pipe_mask &= ~BIT(PIPE_C);
@@ -502,17 +513,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	}
 
 	if ((IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
-	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
-		drm_info(&dev_priv->drm, "Display fused off, disabling\n");
-
-		runtime->pipe_mask = 0;
-		runtime->cpu_transcoder_mask = 0;
-		runtime->fbc_mask = 0;
-		runtime->has_hdcp = 0;
-		runtime->fbc_mask = 0;
-		runtime->has_dmc = 0;
-		runtime->has_dsc = 0;
-	}
+	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT))
+		disable_fused_off_display(dev_priv);
 
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
 		drm_info(&dev_priv->drm,
-- 
2.37.1

