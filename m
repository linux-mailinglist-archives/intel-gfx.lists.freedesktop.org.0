Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6572F4EE0C5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 20:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4962D10E433;
	Thu, 31 Mar 2022 18:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246BA10E433
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 18:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648752045; x=1680288045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b53ClMfRwbEELCTyD9mevbJNdElgHug+bBEI/01WOtQ=;
 b=jm6O8A1nZJMxY/8r9pc+u5Hnq1ofxM2i3xcXtRAY5PhrS1VDWzvbviGC
 loO4hZWSop/YpyayBeTtyk2ztFUiYaRmGgjPc8XyMsyC05BUZr+EmvMsD
 Sd2piH/qRd/biphSH5Ml1cF1rXx6p1qyQM2E5RuhMCk8xdOtfS3alYw9r
 OeXhr/ebJ0YR02LYAPORf50bKapFAxv29WxI10h3EAmNVrIxX98yJAVb9
 Nc1H+5lnNF694B2AoAWXPPoYjgi3rfw7gY/uDlF8pMAs2rg3XYbZt82Cz
 Age7xW/GlbMX+rfDzt0/ek2h5YV5JV+PKVn8EJPU/+l5d99Xpugf/Fbma A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247421089"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="247421089"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:40:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="606238791"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:40:34 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 11:41:52 -0700
Message-Id: <20220331184152.1086943-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI] drm/i915/display: Add HAS_MBUS_JOINING
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

This will make easy to extend MBUS joining support to future platforms
that also supports this feature.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 ++
 drivers/gpu/drm/i915/intel_pm.c | 6 +++---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 799f386a7ef25..0fc2c5cfa2c69 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1384,6 +1384,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PERCTX_PREEMPT_CTRL(i915) \
 	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 
+#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
+
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 641616135955f..8824f269e5f54 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6038,7 +6038,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (HAS_MBUS_JOINING(dev_priv))
 		new_dbuf_state->joined_mbus =
 			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
 
@@ -6530,7 +6530,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
 	struct intel_crtc *crtc;
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (HAS_MBUS_JOINING(dev_priv))
 		dbuf_state->joined_mbus = intel_de_read(dev_priv, MBUS_CTL) & MBUS_JOIN;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -8192,7 +8192,7 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
-	if (!IS_ALDERLAKE_P(dev_priv))
+	if (!HAS_MBUS_JOINING(dev_priv))
 		return;
 
 	/*
-- 
2.35.1

