Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EE92CA489
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 14:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F7F6E544;
	Tue,  1 Dec 2020 13:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FA26E560
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 13:57:07 +0000 (UTC)
IronPort-SDR: 4ir3U2KsbTuAUDzCMTVFopMemxU71kUdH/fuqt1EBLQQTJLnt4cQ6nMvVuj5OiutbtgYBEwGri
 n1zMJI0BaiOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169325803"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="169325803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 05:57:06 -0800
IronPort-SDR: ee4ADjhJoxWJMF/2eYrxnstLhu0+OwrVImqHVdw668aO+lZcgcMcb0wBdgcg+dT2WPye3W3OO9
 0RJ+VbBrgqhw==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="539027260"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 05:57:05 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:00:41 +0530
Message-Id: <20201201143042.22188-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201201143042.22188-1-uma.shankar@intel.com>
References: <20201201143042.22188-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are some corner cases wrt underrun when we enable
FBC with PSR2 on TGL. Recommendation from hardware is to
keep this combination disabled.

Bspec: 50422 HSD: 14010260002

v2: Added psr2 enabled check from crtc_state (Anshuman)
Added Bspec link and HSD referneces (Jose)

v3: Moved the logic to disable fbc to intel_fbc_update_state_cache
and removed the crtc->config usages, as per Ville's recommendation.

v4: Introduced a variable in fbc state_cache instead of the earlier
plane.visible WA, as suggested by Jose.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 29 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a5b072816a7b..ff2f2c00a10e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -700,7 +700,21 @@ static void intel_fbc_update_state_cache(struct intel_crtc *crtc,
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 
+	if (crtc_state->has_psr2)
+		cache->psr2_active = true;
+	else
+		cache->psr2_active = false;
+
+	/*
+	 * Tigerlake is not supporting FBC with PSR2.
+	 * Recommendation is to keep this combination disabled
+	 * Bspec: 50422 HSD: 14010260002
+	 */
+	if (IS_TIGERLAKE(dev_priv) && cache->psr2_active)
+		return;
+
 	cache->plane.visible = plane_state->uapi.visible;
+
 	if (!cache->plane.visible)
 		return;
 
@@ -799,6 +813,16 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
+	/*
+	 * Tigerlake is not supporting FBC with PSR2.
+	 * Recommendation is to keep this combination disabled
+	 * Bspec: 50422 HSD: 14010260002
+	 */
+	if (fbc->state_cache.psr2_active && IS_TIGERLAKE(dev_priv)) {
+		fbc->no_fbc_reason = "not supported with PSR2";
+		return false;
+	}
+
 	if (!intel_fbc_can_enable(dev_priv))
 		return false;
 
@@ -1273,6 +1297,11 @@ void intel_fbc_enable(struct intel_atomic_state *state,
 	if (!cache->plane.visible)
 		goto out;
 
+	if (fbc->state_cache.psr2_active && IS_TIGERLAKE(dev_priv)) {
+		fbc->no_fbc_reason = "not supported with PSR2";
+		goto out;
+	}
+
 	if (intel_fbc_alloc_cfb(dev_priv,
 				intel_fbc_calculate_cfb_size(dev_priv, cache),
 				plane_state->hw.fb->format->cpp[0])) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15be8debae54..f4e08c1a5867 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -416,6 +416,7 @@ struct intel_fbc {
 		u16 gen9_wa_cfb_stride;
 		u16 interval;
 		s8 fence_id;
+		bool psr2_active;
 	} state_cache;
 
 	/*
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
