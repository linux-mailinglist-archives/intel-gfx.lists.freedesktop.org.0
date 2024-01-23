Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F02B78387D0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 08:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB46C10E148;
	Tue, 23 Jan 2024 07:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7D610E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705993885; x=1737529885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r21IT21s+G0CF/WIfkD5o3pDY5MIN8jG2to4H+w8hsQ=;
 b=BeELr94ijBa8Q6sIigmMcVxk7CwKNcHBxR9SnJdFu4nkKbvrSYb57Tyc
 RugSRILxvn6K8a2F4xComA8Ub3QxTcoc3PUhaA5pDgKH5SkM/m9Dl4fdu
 bPUcVlXHPOt2oAIC0Q3Mi6/BXSF3PH8p/W4dcaFmkPdh2g/7gcPShdJMI
 3SIvP7bCNuzuWKy8cDByaUuDC/z9zcVjb7yr9UUmW9DJWtOG3egfxmzAz
 uuPwxZxdpVYcW36qZ2Uye/uHEI1/l2zRmAp2OR+XYVZkpLrQI8UEx9fGD
 vwhkYk0rCT0Q/2wDsnyPYQ3HQjur4TexTansr+i0kXMspB/EXRoeqQxW+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8108888"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; 
   d="scan'208";a="8108888"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 23:11:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="905128837"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="905128837"
Received: from sdiolatz-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.7])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 23:11:19 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/psr: Request modeset on initial commit to compute
 PSR state
Date: Tue, 23 Jan 2024 09:11:03 +0200
Message-Id: <20240123071103.2147760-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We want to request full modeset in initial fast check to force PSR state
computation. Otherwise PSR is not enabled on initial commit but on first
commit with modeset or fastset. With this change Initial commit will still
end up using fastset (unless something else requires full modeset) as PSR
parameters are not anymore part of intel_pipe_config_compare.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Fixes: a480dd59fe25 ("drm/i915/display: No need for full modeset due to psr")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 drivers/gpu/drm/i915/display/intel_psr.h | 3 +++
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab415f41924d..143981b91e8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3326,6 +3326,14 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 		fastset = false;
 	}
 
+	if (CAN_PSR(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\
+n",
+			    encoder->base.base.id, encoder->base.name);
+		crtc_state->uapi.mode_changed = true;
+		fastset = false;
+	}
+
 	return fastset;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1010b8c405df..b6db7dbfaf1a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -173,9 +173,6 @@
  * irrelevant for normal operation.
  */
 
-#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
-			   (intel_dp)->psr.source_support)
-
 #define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
 				    (intel_dp)->psr.source_panel_replay_support)
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index cde781df84d5..3d9920ebafab 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -21,6 +21,9 @@ struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
 
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)
+
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
-- 
2.34.1

