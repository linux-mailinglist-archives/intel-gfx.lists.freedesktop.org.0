Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F941713D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB6A6EE0F;
	Fri, 24 Sep 2021 11:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D2A6EE0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:49:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="246523734"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="246523734"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="705124335"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:32 +0300
Message-Id: <20210924114741.15940-15-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 15/24] drm/i915: constify fdi link training vtable
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

