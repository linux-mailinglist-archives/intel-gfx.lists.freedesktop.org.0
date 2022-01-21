Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A6D495F6B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664C410EA63;
	Fri, 21 Jan 2022 13:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A922210EA63
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770433; x=1674306433;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m3xoUSrgOa6vGR64BVz7NlN2exwisG8QImZVPZG1lKk=;
 b=INV5xTid/VBLCLJVPyCqU0y0bIXu7sKX8M8w/l7Y7EcXtlDuxGPN2sAL
 mWg/hP22KuUMpg76amM3fHAZ0C6DeVHnyVAZWGlJLZ1h8bKwDusp0cXt+
 S7AeIvAcVJ6I+GO6EKJFoWrNMEIf5y7pKwYEyKRKE2v9N01pIBeothtbS
 Cj+fJooseUdTttIeRlpiNzCI+7LTKQCTZaZrg2755KRzTHoOFjyB5+A6b
 S+gnbKH9SKGoL1qFii6scoIQ6dTjk6nIPiHuZXYkOJP5yEfVGQraHwu5x
 /NM3fYBVbrbq0UvFhqcmKgqt6+o+LEoyHh1AfU36PAJUvT+wRLs+5Bek+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245432927"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245432927"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:07:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561866450"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 21 Jan 2022 05:07:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 15:07:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:07:08 +0200
Message-Id: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Reject bigjoiner if the pipe
 doesn't support it
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Check that our crtc can in fact be the bigjoiner master before
we let the modeset proceed with bigjoiner enabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0964b2403e2d..36e547bd0cbe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4102,6 +4102,14 @@ static u8 bigjoiner_pipes(struct drm_i915_private *i915)
 		return 0;
 }
 
+static u8 bigjoiner_master_pipes(struct drm_i915_private *i915)
+{
+	u8 pipes = bigjoiner_pipes(i915);
+
+	/* last pipe can not be master */
+	return pipes & (pipes >> 1);
+}
+
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 					   enum transcoder cpu_transcoder)
 {
@@ -7600,6 +7608,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 					struct intel_crtc_state *old_crtc_state,
 					struct intel_crtc_state *new_crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
 	struct intel_crtc *slave_crtc, *master_crtc;
 
@@ -7615,6 +7624,13 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	if (!new_crtc_state->bigjoiner)
 		return 0;
 
+	if ((bigjoiner_master_pipes(i915) & BIT(crtc->pipe)) == 0) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Bigjoiner not available on this pipe\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
 	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
 	if (!slave_crtc) {
 		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
-- 
2.32.0

