Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9658D4EB5F9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 00:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BDF10E6E9;
	Tue, 29 Mar 2022 22:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3930410E6E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 22:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648592995; x=1680128995;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SMeHUidRu+2ucMrliUu15Vqss/zVLS062oKyPnFDkXk=;
 b=jDNbV3z4JIg+vXNxPYWz4kugWfJvHI/EhPG6pMe3tBlUdb/MQK9vKks5
 GP1rg2jMfGUDqisLtflweoYPJvx2XLQ5dzw8nI0mlRIsEpXw3LRd4ow9H
 D3EuPldozkSNgnGQcZk/Pe7C/m8mqTeyOv0gPE6ONMTFEvN0SljehlMin
 /NcpAwp1nxNk9aeorGlMisP+GwOXukSO765zzTQ2Vt4UxzG6YTNgkjJtT
 kKKZO7Cumeor1YSQMf1veD2wihZ0Nv4dK0kMtEgLfUdOwjpnIjy8sG/ot
 9ovIlIGdYxzdoZ8UYjSbIXO/GNSfiKUV55yrvadH9Jx1TqYLc8rP20TUK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239319337"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239319337"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="653332913"
Received: from srmusala-desk.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.104.251])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:53 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 15:31:01 -0700
Message-Id: <20220329223102.218689-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329223102.218689-1-jose.souza@intel.com>
References: <20220329223102.218689-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: Add HAS_MBUS_JOINING
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
index 217c09422711b..d7f4a95006c0d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1387,6 +1387,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PERCTX_PREEMPT_CTRL(i915) \
 	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 
+#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
+
 static inline bool run_as_guest(void)
 {
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
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

