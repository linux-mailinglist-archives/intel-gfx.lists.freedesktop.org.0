Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C863568554
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 12:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DF110FEA0;
	Wed,  6 Jul 2022 10:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463BE10FEA0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 10:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657102906; x=1688638906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9ffZrQzVHb3oJzDtzR00rzKBnpuurUXFIgJB2vyQSAI=;
 b=EunyibVZBgMvJOsWAPph6hHaHDTvLidURpBYS9m6tjCCTaUMzu5awXpL
 9VzYUjmtERg4VfGQV1LmhSxB29NUQg7NYGnAN3q+jgyEdbuoyvHU7Enwz
 XSuKdKzE+llYCSg+ORDdnR38GYDfry+Un4cJgSS58hctZoIOECtTuRsKq
 sP76uTnsnPX6FmKTNebiU7kC0SAxS2t8Sivj1TPRmdqIYH7ZTqDWZ57Ml
 4ldLuoHio/d2ufHCtSbnnnBu8xRYzpKudJx7nkRGCn2Xv4sURg5tT4e8n
 C/7TCyHopQraMCgFTty66vg4ZwHnpF0ml26kYXz7J8BYglwEM4Oe+ArxB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="263490652"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="263490652"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 03:21:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="720082982"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 03:21:44 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jul 2022 15:52:40 +0530
Message-Id: <20220706102240.21414-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for scaler
 filter
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

Add debug print statement to print scaler filter property
value. Since property can be set as either default or integer
scaler; its good if we can get debug print for the same in dmesg
log.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 +++++----
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 4ca6e9493ff2..e9212f69c360 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -134,8 +134,8 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 		    plane->base.base.id, plane->base.name,
 		    fb->base.id, fb->width, fb->height, &fb->format->format,
 		    fb->modifier, str_yes_no(plane_state->uapi.visible));
-	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
-		    plane_state->hw.rotation, plane_state->scaler_id);
+	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d, scaling_filter: %d\n",
+		    plane_state->hw.rotation, plane_state->scaler_id, plane_state->hw.scaling_filter);
 	if (plane_state->uapi.visible)
 		drm_dbg_kms(&i915->drm,
 			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT "\n",
@@ -262,10 +262,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	if (DISPLAY_VER(i915) >= 9)
 		drm_dbg_kms(&i915->drm,
-			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
+			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
 			    crtc->num_scalers,
 			    pipe_config->scaler_state.scaler_users,
-			    pipe_config->scaler_state.scaler_id);
+			    pipe_config->scaler_state.scaler_id,
+			    pipe_config->hw.scaling_filter);
 
 	if (HAS_GMCH(i915))
 		drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6c3954479047..225b6bfc783c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -722,10 +722,11 @@ static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crtc)
 
 	/* Not all platformas have a scaler */
 	if (num_scalers) {
-		seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d",
+		seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d scaling_filter=%d",
 			   num_scalers,
 			   crtc_state->scaler_state.scaler_users,
-			   crtc_state->scaler_state.scaler_id);
+			   crtc_state->scaler_state.scaler_id,
+			   crtc_state->hw.scaling_filter);
 
 		for (i = 0; i < num_scalers; i++) {
 			const struct intel_scaler *sc =
-- 
2.25.1

