Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F7EA1B4E0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A32E910E8BE;
	Fri, 24 Jan 2025 11:39:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WrT61PtD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B5B10E8AD;
 Fri, 24 Jan 2025 11:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718776; x=1769254776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q3x0xjhUP2UvvH3xWP50MuGAh+lkPPpCuWEDlLRHvxE=;
 b=WrT61PtDMMaqVSNy0U03OsQjx3cpmB2GA0H/dLig7kucQYcE8VQAadQb
 TK9/aTFCQcspBryU0REaVyWxd9kxOsCkf1OspfW5pf7T6zBAyEKVhi2G9
 m1Lx8Ja/4g3aZ7Q9xGrmGmLf0SVpt5H5B4igbmwk99gLAPWKo+I+Zixky
 HiVhM5FbH2+b+1EFf+vrD5qcHykvHCFGdw6pgw9g/mgzc82zEQqIQkxV3
 kUaxgNjNTu/Or0DGpFU/N79PPNkj/4plNieMpRD14dNRWttognAk2GV5Q
 rTVnrtZleIlAIzKf5eudZz62CuMzCufa1nylY7DXXqKoWyTqZZTPnOkwr w==;
X-CSE-ConnectionGUID: uS69lVgtTGSSaMr2GQ7rWg==
X-CSE-MsgGUID: Uorq6zNLQVKF1+36k2erLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237790"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237790"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:36 -0800
X-CSE-ConnectionGUID: YPY8iSUMRsaq+hd81JgeWA==
X-CSE-MsgGUID: yXsbTN38R7etmzv4U3N1Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757839"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 08/13] drm/i915/psr: Add intel_psr_is_psr_mode_changing
Date: Fri, 24 Jan 2025 13:39:01 +0200
Message-ID: <20250124113906.850488-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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
index c6712312a04d4..c68105a4a987b 100644
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
index e6eba6633a92b..a88d67b9d17ee 100644
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

