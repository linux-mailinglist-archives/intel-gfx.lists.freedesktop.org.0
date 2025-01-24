Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AFAA1B43C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E8610E94C;
	Fri, 24 Jan 2025 10:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GyE4zsnV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452A910E914;
 Fri, 24 Jan 2025 10:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716222; x=1769252222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+EsAsDBMDKFx2tA48hNmP/MYp9RpX2hcN6pAo3weosw=;
 b=GyE4zsnVHnciD8lUelL4cnbKNAvYjPDYAF08zJ/Dn5Gd2Lh7xGInWHUR
 b0Vtv3BNsycg0lA6YCZzA3zWKgCCYQyGG+H4M8YS/ENuS1bnCSZ+8Y6Ct
 cFhrapY9wmfJNNb4UVQq6UV/xV9qNjGV2L175jwjIDn8xFQKhDDHu38oY
 r0BaOQGULeR5S+K/TR1ViGZNNLhShkrwTsb7w2DYkAkmGu16VTvm8xi+i
 rP6zO7NvBolxyrp6XTve2FupHR6FnLNkg/lM4i7h1uPzdOthrpCtwCSBd
 cs0l+WpmLznYP+gb26xYZVXqEbCZCsIKOm/iaLSM8bosMBB3I8HxeuqkF g==;
X-CSE-ConnectionGUID: uRaA52y+Qti+gFXrhKu4gA==
X-CSE-MsgGUID: FKc/O9SOTgC7VuiTB1g71g==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660093"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660093"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:02 -0800
X-CSE-ConnectionGUID: rVPX8TRjTQ+PZmmn6ybiFw==
X-CSE-MsgGUID: dwEm7zQpQJKidMq6jJmtpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864272"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 08/13] drm/i915/psr: Add intel_psr_is_psr_mode_changing
Date: Fri, 24 Jan 2025 12:56:19 +0200
Message-ID: <20250124105625.822459-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
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

Add new interface for checking possible PSR/PR mode change. We need this
information to decide if DSB can be used.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1e99329b70a1e..90e36e34e0c7b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -225,6 +225,26 @@ bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 	       intel_encoder_can_psr(encoder);
 }
 
+/**
+ * intel_psr_is_psr_mode_changing - Check if PSR/PR mode is changing
+ * @old_crtc_state: pointer to old intel_crtc_state
+ * @new_crtc_state: pointer to new intel_crtc_state
+ *
+ * This can be used to figure out if PSR/PR mode is changing between old and new
+ * crtc state.
+ *
+ * Returns true if mode is changing, false if mode is not changing.
+ */
+bool intel_psr_is_psr_mode_changing(const struct intel_crtc_state *old_crtc_state,
+				    const struct intel_crtc_state *new_crtc_state)
+{
+	return old_crtc_state->has_psr != new_crtc_state->has_psr ||
+		old_crtc_state->has_sel_update != new_crtc_state->has_sel_update ||
+		old_crtc_state->has_panel_replay != new_crtc_state->has_panel_replay ||
+		old_crtc_state->enable_psr2_su_region_et !=
+		new_crtc_state->enable_psr2_su_region_et;
+}
+
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index fc807817863e4..cc6267e87933d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -26,6 +26,8 @@ struct intel_plane_state;
 				    (intel_dp)->psr.source_panel_replay_support)
 
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
+bool intel_psr_is_psr_mode_changing(const struct intel_crtc_state *old_crtc_state,
+				    const struct intel_crtc_state *new_crtc_state);
 bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
-- 
2.43.0

