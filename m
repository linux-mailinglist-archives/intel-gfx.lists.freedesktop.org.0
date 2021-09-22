Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 833C3414BFB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA236EC09;
	Wed, 22 Sep 2021 14:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A896EC07
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:31:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="287275559"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="287275559"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="512997752"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:39 +0300
Message-Id: <4d4f537da457a4a2ef739c46c507f12a64646c93.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/24] drm/i915: constify fdi link training
 vtable
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

From: Dave Airlie <airlied@redhat.com>

Put the vtable into ro memory.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 20 ++++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h          |  2 +-
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f828bebe8962..af01d1fa761e 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -15,7 +15,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
+	dev_priv->fdi_funcs->fdi_link_train(crtc, crtc_state);
 }
 
 /* units of 100MHz */
@@ -1013,15 +1013,27 @@ void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
 	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
 }
 
+static const struct intel_fdi_funcs ilk_funcs = {
+	.fdi_link_train = ilk_fdi_link_train,
+};
+
+static const struct intel_fdi_funcs gen6_funcs = {
+	.fdi_link_train = gen6_fdi_link_train,
+};
+
+static const struct intel_fdi_funcs ivb_funcs = {
+	.fdi_link_train = ivb_manual_fdi_link_train,
+};
+
 void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 	if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->fdi_funcs.fdi_link_train = ilk_fdi_link_train;
+		dev_priv->fdi_funcs = &ilk_funcs;
 	} else if (IS_SANDYBRIDGE(dev_priv)) {
-		dev_priv->fdi_funcs.fdi_link_train = gen6_fdi_link_train;
+		dev_priv->fdi_funcs = &gen6_funcs;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		dev_priv->fdi_funcs.fdi_link_train = ivb_manual_fdi_link_train;
+		dev_priv->fdi_funcs = &ivb_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 954b16ee857f..a31738dd6378 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -991,7 +991,7 @@ struct drm_i915_private {
 	struct intel_hotplug_funcs hotplug_funcs;
 
 	/* fdi display functions */
-	struct intel_fdi_funcs fdi_funcs;
+	const struct intel_fdi_funcs *fdi_funcs;
 
 	/* display pll funcs */
 	struct intel_dpll_funcs dpll_funcs;
-- 
2.30.2

