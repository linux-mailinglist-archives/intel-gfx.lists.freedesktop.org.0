Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D09A4E489A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB7610E575;
	Tue, 22 Mar 2022 21:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBD710E5A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 21:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985511; x=1679521511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SMeHUidRu+2ucMrliUu15Vqss/zVLS062oKyPnFDkXk=;
 b=V2nUOlTmFxIFa0IkNC6uXiWZJcv7YjwAX9axqIDSOLyAXIGZ7+zc9AIE
 MqO4jmOthDOOlM9l1u/CtXB7y0Z+XcAbjoUmQm7pyA0oAAbZf80MeENt/
 dgsNyXhn3SsFgrojoDgq5bPDTiMBWJVre3hAHW5G6iCilOny1Z3x/KDfJ
 aVPNg9FX7URrLnnzKq1bvRBiR06AhQgTUuYdDvOae4eNYAzN3dQUrhHYk
 nrUXSB31Ixs65lwqEDvZorYUcPwtZt38yoWawbBprFVyEQDvlp475uTY4
 gUGrB9lUVtJuNsz6MPgxpKyWQjJRVTJj+8qZ2D5m1TJe5DQ0i0iIBH6Bz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="282796510"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="282796510"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583449604"
Received: from idwilson-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:46:14 -0700
Message-Id: <20220322214616.160640-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220322214616.160640-1-jose.souza@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: Add HAS_MBUS_JOINING
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

