Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807E54EC8A3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1471310E948;
	Wed, 30 Mar 2022 15:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D5D10E910
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648654965; x=1680190965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rAPJKxHYEWbEKw9sOV1HhdIUIVflv04rJNj1+TBs+Co=;
 b=PKHrWPACuo54vAcdJjK74BTsiczYWd7Ng5VT9VnvagghSq/nYJw7+4SS
 WMbL8C7QIXfEwhAOh0eQxQDcMsdTfvH6dSmWzs4giNewwBQa2DayQUAOm
 DPPt/fCxhAOswY+kx+rprmD6Y2fY3DReDDPYvYJcEDvVlcOqMhdOjdgkG
 2oP0h9UifH+roo+YETjSHmAwMQrewgL0mSBPAp5zNH3WPHtPlPYeMKypM
 N8nWv42oYsPZ9u/doKD2tJNNXPiYB08xkeQp84BdgK68FAvb2XGIV5I35
 i5UfHA4EWKmvwhIbG8yp5WrUIqmO6P7EMcoYF0FPXyl59AuczRiK3SmJX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="257152539"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="257152539"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:42:45 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="503357124"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:42:44 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 08:43:55 -0700
Message-Id: <20220330154356.245922-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330154356.245922-1-jose.souza@intel.com>
References: <20220330154356.245922-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CIv2 3/4] drm/i915/display: Add HAS_MBUS_JOINING
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

