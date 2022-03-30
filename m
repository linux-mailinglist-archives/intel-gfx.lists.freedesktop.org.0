Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3934EC694
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 16:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E691F10E23D;
	Wed, 30 Mar 2022 14:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6F510E23D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 14:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648650635; x=1680186635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ag63MVOi8EijQ41sQa0/e4VktIkOmQBzS10BdKQKijk=;
 b=GGZ33IzOWRjXt3XXq1xm8QcElVGVGy8LG9aVUcuJqLR4Y2JBhH62OHhM
 SRpUFFSTZi6hGVJ1GJVHDUhn+QXioQ/vblUxKnqpTY2+SZ2/Qh7pydRut
 bqzaLI1ArqoXcEv51BQDUx5aQWDXQOOEcHeW1EWZ4426dxqrPRTyKuUd1
 /Ff1OCoDQTPefCF2JKdh1SxqmY582cL2Ph1XszQFvkvPdR22uQCo01ReE
 9PcCYMs14BfuDYwvQyOcKbPucDzNIU3eF/AOzntxZG4fLBJdkX4H55Cc4
 p0qw4eYPRRTz9vpgB1rRwx9Hc8z25D8hDRKidmtAjvDuiDFO3h+RftVZV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241711267"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="241711267"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="653851230"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:27 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 07:31:35 -0700
Message-Id: <20220330143136.84930-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330143136.84930-1-jose.souza@intel.com>
References: <20220330143136.84930-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 3/4] drm/i915/display: Add HAS_MBUS_JOINING
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
index 799f386a7ef25..ff2c83acea374 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1387,6 +1387,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
+#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
+
 /* i915_gem.c */
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2c3cd4d775daf..e60c02d760ffa 100644
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

