Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47151A06F18
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A833010ED0B;
	Thu,  9 Jan 2025 07:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QvqQD3cn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CAFB10ED13;
 Thu,  9 Jan 2025 07:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407930; x=1767943930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4TThNvqJhUHjgMP3aAWuYX/9LLrON/3R1NLuBUenNFo=;
 b=QvqQD3cno5KZPWtm7K0xIiYVQuoPnlkn34hSiD3mjFeQE80IG4eHZfRs
 1xmy60e/QpxFC+G1QkaB5nZxO26TIRdjVYZXA7SwylkQf+ohiX78hcmHg
 J+CDocdmPDLMaBGmuvawBNPNCJ1IihpzSz/6wmsqhpmEBmNFnXTQpRHog
 xlZDfh6YiQfGynzypR6zKOwBppSVTMnH84xk8s7wtfQLDKhiM6JDJdp/Z
 Dk0c/IQp3t1iZlBxvcSR7riNp+lgZdMNJ1JOVO5R/1qoHUKunb5IoAdZE
 tP6qnjfIOYeU0YrOX/I4UsS36UyMLnDUgu68uZm53r3QbgY2DUnTqGUgJ Q==;
X-CSE-ConnectionGUID: 5NicQbTjRGyIpMb7ByRDuw==
X-CSE-MsgGUID: 2x+/UkDoQHq6c88/An65bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200572"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200572"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:10 -0800
X-CSE-ConnectionGUID: +ZBaDs95SYaq24MXRSFX3g==
X-CSE-MsgGUID: 2cJNQzChSdSlDTnLPn2vgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297875"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 08/10] drm/i915/psr: Add intel_psr_is_psr_mode_changing
Date: Thu,  9 Jan 2025 09:31:35 +0200
Message-ID: <20250109073137.1977494-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109073137.1977494-1-jouni.hogander@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1e99329b70a1..90e36e34e0c7 100644
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
index fc807817863e..cc6267e87933 100644
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

