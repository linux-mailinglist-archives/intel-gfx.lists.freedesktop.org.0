Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497009B8B3E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33D710E95F;
	Fri,  1 Nov 2024 06:27:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ch9Y5NOQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C1210E95F;
 Fri,  1 Nov 2024 06:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442478; x=1761978478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OutsfuRUE4fD7wFEj4NqZFZT42Gl81sTIvwpOGh4pz8=;
 b=ch9Y5NOQ6cIn7tqvZqE8ZkthviVz/i7UHosYDz6ZFcB+0g0BM/IRiGUf
 tszX+s0GnyONkUhgy+f/a4lWi8ZD0EIz5JP6v5mZZZSMBquKp+ufR7e05
 eZGMTQNL4kfqQ6HjieptJUDuixfrVqideXyNnntHgD6uX240fnjhFbGPL
 2Gy1by+Q6T1VocGoUtkHaQyjc0hr+kaJmlzCet5nAtZvbZzzITLPQ3vXD
 YvVl6yKpESodlnVJrHmpppRqqStFbZbQ59wiMKFlWTqX3tvtWAk21Nwvt
 nhiSLkF06N9QmnDpVRO3SP+pIbyMXGA6k9A8g4+JFHNsLlxywxZXJqBSc Q==;
X-CSE-ConnectionGUID: fbSqdVMwSdiphglOg4THfQ==
X-CSE-MsgGUID: PLyC1YUtTYOOKThgWcyttA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306086"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306086"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:58 -0700
X-CSE-ConnectionGUID: znynkKinRUCVMpr+rU9gHQ==
X-CSE-MsgGUID: KsUJIHXFQsaPZ/F0HmBjSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648593"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/7] drm/i915/psr: Add VRR send push interface for PSR usage
Date: Fri,  1 Nov 2024 08:27:27 +0200
Message-Id: <20241101062728.3865980-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
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

Add own interface for PSR usage to perform push on frontbuffer tracking
invalidate and flush call backs. Use this new interface from PSR code.

v2:
  - use crtc->trans_push_enabled instead of rmw
  - intel_vrr_psr_send_push takes struct intel_crtc * and enum transcoder
    as a parameter

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  4 ++++
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 12ec1ea94b53..1fa632d708e7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2310,6 +2310,7 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 static void psr_force_exit(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_crtc *crtc = to_intel_crtc(intel_dp->attached_connector->base.state->crtc);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
@@ -2332,8 +2333,12 @@ static void psr_force_exit(struct intel_dp *intel_dp)
 	 * This workaround do not exist for platforms with display 10 or newer
 	 * but testing proved that it works for up display 13, for newer
 	 * than that testing will be needed.
+	 *
+	 * In Lunarlake we can use TRANS_PUSH mechanism to force sending update
+	 * to sink.
 	 */
-	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
+	DISPLAY_VER(display) >= 20 ? intel_vrr_psr_send_push(crtc, cpu_transcoder) :
+		intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 51cf1800ae87..a3fcdc5e9493 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -332,6 +332,26 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 		       crtc->trans_push_enabled | TRANS_PUSH_SEND);
 }
 
+/**
+ * intel_vrr_psr_send_push - Send push interface for PSR code
+ * @crtc: Intel crtc
+ * @cpu_transcoder: cpu transcoder
+ *
+ * This is for PSR usage to perform push on frontbuffer tracking invalidate and
+ * flush call back. PSR mutex should be taken by caller.
+ */
+void
+intel_vrr_psr_send_push(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+		       crtc->trans_push_enabled | TRANS_PUSH_SEND);
+}
+
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index b954a60e1aae..6095221843ca 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -11,7 +11,10 @@
 struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
+struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
+enum transcoder;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -27,6 +30,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_psr_frame_change_disable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_psr_send_push(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

