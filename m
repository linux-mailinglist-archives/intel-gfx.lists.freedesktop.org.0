Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEAE4F3C6F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 17:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70DB10EA04;
	Tue,  5 Apr 2022 15:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F9910EA01
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 15:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649173952; x=1680709952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tDEnwZDNHMBi/Lz98xssUJ/8sa1e5uSd+g743LgQ1m0=;
 b=N2335uOfJ9BEC57nK0f3G6CQsmWr7HwNnCzq6zyrv3q1s2lqe4/a4OYR
 MzXpOTKLQn+fSfGt0KvVo0+xM2TVbRl2oMhyaISlrE+jBYCcxSQYc6NXh
 N+kGiusWVOxfOCJJvhJMFH9Qv4BG2LMM5cMzRXtlh3eaqyvhPMIwhURGg
 T/zOk5yuiwKmyTe7nbQLYTCM9k4wm4DoO0aboTNRgQijO+b8MrNI43xBH
 rB6jAqfC3J5RiyVyuQSb3FrpaxMVHTQmvQ/EdMBtCsGAC3SGpCe038q7W
 PL/eRwKPln6LlGwOAUoGQUjlQ5kJXCvbb/I/QvmaMvcgJlaBmF9Xh1FhR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="321480353"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="321480353"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:52:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="524047567"
Received: from unknown (HELO josouza-mobl2.intel.com) ([10.230.19.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:52:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 08:53:42 -0700
Message-Id: <20220405155344.47219-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 1/3] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

Following up what was done in commit 804f46885317 ("drm/i915/psr: Set
"SF Partial Frame Enable" also on full update") and also setting
partial frame enable when psr_force_hw_tracking_exit() is called.

Also as PSR2_MAN_TRK_CTL is a double buffered registers do a RMW
is not a good idea so here also setting the man_trk_ctl_enable_bit()
that is required in TGL and only doing a register write.

v2:
- not doing a rmw

v3:
- removing the inline from functions that return PSR2_MAN_TRK_CTL
bits

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 80002ca6a6ebe..6e3ae2c4430c7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1436,14 +1436,19 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
-static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
+}
+
+static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
 {
 	return IS_ALDERLAKE_P(dev_priv) ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
 }
 
-static inline u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
 {
 	return IS_ALDERLAKE_P(dev_priv) ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
@@ -1455,9 +1460,11 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
-		intel_de_rmw(dev_priv,
-			     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0,
-			     man_trk_ctl_single_full_frame_bit_get(dev_priv));
+		intel_de_write(dev_priv,
+			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+			       man_trk_ctl_enable_bit_get(dev_priv) |
+			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
+			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
 
 	/*
 	 * Display WA #0884: skl+
@@ -1554,10 +1561,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 val = 0;
-
-	if (!IS_ALDERLAKE_P(dev_priv))
-		val = PSR2_MAN_TRK_CTL_ENABLE;
+	u32 val = man_trk_ctl_enable_bit_get(dev_priv);
 
 	/* SF partial frame enable has to be set even on full update */
 	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
-- 
2.35.1

