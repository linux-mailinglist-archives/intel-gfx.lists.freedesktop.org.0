Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A9F4257C3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 18:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F11C6F89D;
	Thu,  7 Oct 2021 16:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB126F89D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 16:20:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="249614666"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="249614666"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 09:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="524723240"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga008.fm.intel.com with ESMTP; 07 Oct 2021 09:20:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, jani.nikula@intel.com,
 manasi.d.navare@intel.com, jose.souza@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Date: Thu,  7 Oct 2021 21:27:29 +0530
Message-Id: <20211007155729.27812-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20211007155729.27812-1-animesh.manna@intel.com>
References: <20211007155729.27812-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/panelreplay: Added state
 checker for panel replay state
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

has_panel_replay flag is used to check panel replay state
which is part of crtc_state structure.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f0badb11bbb..a30b6fe87dfc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8136,6 +8136,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			PIPE_CONF_CHECK_BOOL(has_psr);
 			PIPE_CONF_CHECK_BOOL(has_psr2);
 			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
+			PIPE_CONF_CHECK_BOOL(has_panel_replay);
 			PIPE_CONF_CHECK_I(dc3co_exitline);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 197cab7551c6..756f3c775e71 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1050,6 +1050,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	 */
 	pipe_config->has_psr = true;
 	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
+	pipe_config->has_panel_replay = intel_dp->psr.enabled &&
+					intel_dp_is_edp(intel_dp);
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
 	if (!intel_dp->psr.psr2_enabled)
-- 
2.29.0

