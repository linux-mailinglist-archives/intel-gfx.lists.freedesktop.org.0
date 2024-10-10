Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C25F4997C7E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A32810E86C;
	Thu, 10 Oct 2024 05:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASY2D6wY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E92210E869;
 Thu, 10 Oct 2024 05:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538471; x=1760074471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gBH9dAuUxnVJKGGrfb1/Sf0yNXap94STvghKy/uzE34=;
 b=ASY2D6wYRinY/NoAM4o5sxMVj9r6vwhBJQbDsqNYsMIEVKUhFpgamQtL
 /XxaGKRRrzM+qMzU6gbM/Yv39d+sV+f67FoGOBdhIp+A0YpC8IMKA26US
 mcZkGfqp79dPC6HXwuOllOcFpKOFBsQhfiGeFgKfuhYHj/lu1hP7VwRI6
 q5pZFsN9HcHUNRwNd8SyEEgac+umhOnhrVQcu5LIsI+xn/FdbEFPUATcy
 3fSczrdk2gYYqC+CrLOrvN3HZkadIGRyX4vwvqSLE1YEKAlYa1MwwfP7H
 oWwBlyLxrZplKDxwbXJzAGMSfGL7zTw7bXEWIvnGRwQkQpsY5+mi8VuEU Q==;
X-CSE-ConnectionGUID: Vjj0O5WWQB6o52SM86AXEA==
X-CSE-MsgGUID: HqqdZLYyTlWnyMsJVB4i6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749370"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749370"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:31 -0700
X-CSE-ConnectionGUID: ZvMg81fETuSpygeSJeJ3pQ==
X-CSE-MsgGUID: lxc4YysuSk+z6vastajGKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697319"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/7] drm/i915/psr: Add VRR send push interface for PSR usage
Date: Thu, 10 Oct 2024 08:33:15 +0300
Message-Id: <20241010053316.1580527-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  4 ++++
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5be8076475f0b..7959a33771b13 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2326,8 +2326,13 @@ static void psr_force_exit(struct intel_dp *intel_dp)
 	 * This workaround do not exist for platforms with display 10 or newer
 	 * but testing proved that it works for up display 13, for newer
 	 * than that testing will be needed.
+	 *
+	 * In Lunarlake we can use TRANS_PUSH mechanism to force sending update
+	 * to sink.
 	 */
-	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
+	DISPLAY_VER(display) >= 20 ?
+		intel_vrr_psr_send_push(display, cpu_transcoder) :
+		intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5925ade4591d4..d51830d173b61 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -328,6 +328,24 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 		       trans_push_val);
 }
 
+/**
+ * intel_vrr_psr_send_push - Send push interface for PSR code
+ * @display: Intel display
+ * @cpu_transcoder: cpu_transcode
+ *
+ * This is for PSR usage to perform push on frontbuffer tracking invalidate and
+ * flush call back. PSR mutex should be taken by caller.
+ */
+void intel_vrr_psr_send_push(struct intel_display *display,
+			     enum transcoder cpu_transcoder)
+{
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
+		     TRANS_PUSH_SEND | LNL_TRANS_PUSH_PSR_PR_EN);
+}
+
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index a75f159168c11..3da7ba12697ff 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,8 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
+enum transcoder;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -25,6 +27,8 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_psr_frame_change_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_psr_frame_change_disable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_psr_send_push(struct intel_display *display,
+			     enum transcoder cpu_transcoder);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

