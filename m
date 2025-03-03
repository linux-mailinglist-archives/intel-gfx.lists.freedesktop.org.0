Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7128A4BA0F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 09:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D1910E39B;
	Mon,  3 Mar 2025 08:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BlcggDAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF1410E3B6;
 Mon,  3 Mar 2025 08:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740992263; x=1772528263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vLoyMMuvdFUXlXtIon1j4ZKCTEFjL0vD3sxv6EixXps=;
 b=BlcggDAr/Y9ZLIi9Z5nf9K0wH/cLgp9qFz5gtugG98zWqYe9InZC3Ymf
 gXgKaUi60xwTSkFBgJG5OAtyRhAGw06POiul1GAyYzoeHo5oWECw/1j7/
 UUA3ICoNaPbtWjV92ELuLufR6oDYdsC9NsSLFt0Cba7I4NmBT5lUUnQur
 i5YmvRn16g8XtJ2FxKgbo9eMt8y6p+ktGsF8qywK7aa4cpajxXMPRqzSL
 uZijJ4VnHrnDcoHJEOJWuFAwN1UUKYHl5k/5u425sVtTc4LHiT3s1qQhD
 YMGEOhJt0+9xFiG9A4IUTpacrluPphq+zMs6Ss6Y+s4NpErd3Y9Za1nCC Q==;
X-CSE-ConnectionGUID: xnYxOe5oSs64fQ1O677Xpg==
X-CSE-MsgGUID: 48r7mAgdQV6EnOlkUAIhzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41770034"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41770034"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:57:42 -0800
X-CSE-ConnectionGUID: DNQAFH/lTdGwcoWTsYjHwg==
X-CSE-MsgGUID: 3LTip17XQ/eCC6JRDN/27g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117949583"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 00:57:40 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 4/8] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Mon,  3 Mar 2025 14:05:18 +0530
Message-Id: <20250303083522.845224-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250303083522.845224-1-animesh.manna@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

For every commit the dependent condition for LOBF is checked
and accordingly update has_lobf flag which will be used
to update the ALPM_CTL register during commit.

v1: Initial version.
v2: Avoid reading h/w register without has_lobf check. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c  |  1 +
 3 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c2862888466f..f4586c76a7b7 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -312,6 +312,24 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		(first_sdp_position + waketime_in_lines);
 }
 
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 alpm_ctl;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	if (!crtc_state->has_lobf) {
+		alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
+		if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {
+			alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
+			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+		}
+	}
+}
+
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 91f51fb24f98..c6efd25c2062 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9b504dcfb446..b6186e1cf804 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3620,6 +3620,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+	intel_alpm_lobf_update(crtc_state);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
-- 
2.29.0

