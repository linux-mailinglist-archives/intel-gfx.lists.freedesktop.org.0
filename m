Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D32E90C317
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EFD10E569;
	Tue, 18 Jun 2024 05:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nz0dM4Vv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937E410E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H18L/lqDtcUuhpmhy2gTGfqoglBFzuS9eAYYznD17PU=;
 b=Nz0dM4VvGnExQjhADAXDFpg0+ZGtF+Mnmqc6W/WpcIxi7NI8z336VH1W
 rn33vd7xSk0/WZC1uZMfi93qCcL9hfQH76tu8E5h7wa5ZWlTEmYQSASgm
 TlXHSjHP4xUhigZTDF0ZfdU26sVtzFVQnXSHX6CjB0EkMLFoVuUOHaRR+
 krxOdqDPP3AyCxkZu4awEjBmuFYRunOCWry7UBkvpkfx2Zl6Rry0G2dHa
 gp/36ob8DGxr+KphmpeqHp7THhliBwoQDbdbomw/w8GRCBkD+9DmD4hdq
 kGj4EvxywO3cMc2UKynrRBX6IbB7F69E8RZRPZBTx8DPFoBn7RGr0jqS6 w==;
X-CSE-ConnectionGUID: pb+SMdiKRKiFjRbigsHqiQ==
X-CSE-MsgGUID: iB6tAbLNTeK6zBufbZD9ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077708"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077708"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:55 -0700
X-CSE-ConnectionGUID: uJ9ycVixQKGc4XjvY5QStg==
X-CSE-MsgGUID: ShvD/LF3SAq2/+1+jiP+Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365147"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/9] drm/i915/psr: Disable Panel Replay if PSR mode is set via
 module parameter
Date: Tue, 18 Jun 2024 08:30:21 +0300
Message-Id: <20240618053026.3268759-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

If user is specifically limiting PSR mode to PSR1 or PSR2: disable Panel
Replay. With default value -1 all modes are allowed including Panel
Replay. Disabling PSR using value 0 disables Panel Replay as well.

Also own compute config helper is added for Panel Replay. This makes sense
because number of Panel Replay specific checks are increasing.

v2: Squash adding Panel Replay compute config helper

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_params.c   |  3 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 27 +++++++++++++++++--
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index aebdb7b59dbf..79107607a6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -106,8 +106,7 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1 and Panel Replay full frame update, "
-	"2=enable up to PSR2 and Panel Replay Selective Update) "
+	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2a33e35ceeff..cfce0fe05d92 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -235,6 +235,15 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (i915->display.params.enable_psr != -1)
+		return false;
+	return true;
+}
+
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1455,6 +1464,21 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!CAN_PANEL_REPLAY(intel_dp))
+		return false;
+
+	if (!panel_replay_global_enabled(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "Panel Replay disabled by flag\n");
+		return false;
+	}
+
+	return true;
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1490,8 +1514,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

