Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC1B8CB084
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 16:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAEB210E84A;
	Tue, 21 May 2024 14:30:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BN5+pwsT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C0110E876
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 14:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716301828; x=1747837828;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UH2lNCngqzkeymvP7QL7BKKuDDq0PzS76phytm1BQGs=;
 b=BN5+pwsT5UzhMt29KlchtIlB7GdnHKVVKCtL8+SQj+C2NptNkmeLENRP
 Vd4MTzeuoTxu1beKhg14U59W+pbL6IThpKehFUQrcZIT6IblKAqzqet9y
 2R95B5CGD6q1Z1c0ydoxhSvN9+h047ArqvePPQvE5EyFlfFZZN8YSvrAQ
 QEVhlhDLTyHVh4BiM+zKLIJC8ytLVNUj33XO8tPU6HlwmfEAsiOOLDxIP
 f80fCBc5SqBNeeVdOz7EEt0O2+/qyXE9TXJEb4JWFqf4W5TcWV2zzm+Sv
 4wJJ8k7ttfLTkv4Ip9DN+r2FUEPCA/8YVGPYTBx/PgJ5n9SagRNUiSGfB A==;
X-CSE-ConnectionGUID: G7yYgldfRx2X8Beif6lHUQ==
X-CSE-MsgGUID: JO9JkE14RhizYA3ji9q0BQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16286808"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="16286808"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 07:30:19 -0700
X-CSE-ConnectionGUID: A0nqTUUXT6GC8hD3ftLKzQ==
X-CSE-MsgGUID: CUe6XPJBTzeqNw956Hs1kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="33493119"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 07:30:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Fix audio component initialization
Date: Tue, 21 May 2024 17:30:22 +0300
Message-ID: <20240521143022.3784539-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

After registering the audio component in i915_audio_component_init()
the audio driver may call i915_audio_component_get_power() via the
component ops. This could program AUD_FREQ_CNTRL with an uninitialized
value if the latter function is called before display.audio.freq_cntrl
gets initialized. The get_power() function also does a modeset which in
the above case happens too early before the initialization step and
triggers the

"Reject display access from task"

error message added by the Fixes: commit below.

Fix the above issue by registering the audio component only after the
initialization step.

Fixes: bd738d859e71 ("drm/i915: Prevent modesets during driver init/shutdown")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 32 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_audio.h    |  1 +
 .../drm/i915/display/intel_display_driver.c   |  2 ++
 3 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index adde87900557f..4c031e97f9a55 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1267,17 +1267,6 @@ static const struct component_ops i915_audio_component_bind_ops = {
 static void i915_audio_component_init(struct drm_i915_private *i915)
 {
 	u32 aud_freq, aud_freq_init;
-	int ret;
-
-	ret = component_add_typed(i915->drm.dev,
-				  &i915_audio_component_bind_ops,
-				  I915_COMPONENT_AUDIO);
-	if (ret < 0) {
-		drm_err(&i915->drm,
-			"failed to add audio component (%d)\n", ret);
-		/* continue with reduced functionality */
-		return;
-	}
 
 	if (DISPLAY_VER(i915) >= 9) {
 		aud_freq_init = intel_de_read(i915, AUD_FREQ_CNTRL);
@@ -1300,6 +1289,21 @@ static void i915_audio_component_init(struct drm_i915_private *i915)
 
 	/* init with current cdclk */
 	intel_audio_cdclk_change_post(i915);
+}
+
+static void i915_audio_component_register(struct drm_i915_private *i915)
+{
+	int ret;
+
+	ret = component_add_typed(i915->drm.dev,
+				  &i915_audio_component_bind_ops,
+				  I915_COMPONENT_AUDIO);
+	if (ret < 0) {
+		drm_err(&i915->drm,
+			"failed to add audio component (%d)\n", ret);
+		/* continue with reduced functionality */
+		return;
+	}
 
 	i915->display.audio.component_registered = true;
 }
@@ -1332,6 +1336,12 @@ void intel_audio_init(struct drm_i915_private *i915)
 		i915_audio_component_init(i915);
 }
 
+void intel_audio_register(struct drm_i915_private *i915)
+{
+	if (!i915->display.audio.lpe.platdev)
+		i915_audio_component_register(i915);
+}
+
 /**
  * intel_audio_deinit() - deinitialize the audio driver
  * @i915: the i915 drm device private data
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 9327954b801e5..576c061d72a45 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -28,6 +28,7 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
 void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
+void intel_audio_register(struct drm_i915_private *i915);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
 void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 89bd032ed995e..794b4af380558 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -540,6 +540,8 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 
 	intel_display_driver_enable_user_access(i915);
 
+	intel_audio_register(i915);
+
 	intel_display_debugfs_register(i915);
 
 	/*
-- 
2.43.3

