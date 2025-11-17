Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990E2C626FB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34FB10E2CF;
	Mon, 17 Nov 2025 05:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S6wwriQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447CC10E2CC;
 Mon, 17 Nov 2025 05:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358288; x=1794894288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J9CwZJaFl6xKUgvbQnU473OYl5qzv9KVih10opYNYYs=;
 b=S6wwriQmaKxtaUmkGjtEbgSdE1tOXpHods4BV48LDx+MOeoPpZkMX9xJ
 tSxYi7nHg7c5OQ02hzW+DNLkqGzPWSo8ESs+MdkU7GYLXM/Z0fSEcuxDj
 43F1mK2S8aYXraW8LEEKRyE/Abo60vLPldUi/jBLYwjSginw9ya4rD9bZ
 /il12VS3YUt6PZsKq5IBU9eIZRLLKHdMEgb/aDjdk385boYQM4/v5Yhje
 iA08lwrucltB7qIC/4bTkVkcpkLWZABUMwwKteZVPdkCrFB0xRnrp9G+Y
 uE2yT6a5P2avaYN0w33WMptMd8Z2tJOBz+Vtcl4B8IARWJ/sYZ+APQq9B Q==;
X-CSE-ConnectionGUID: jin4KJkNSbKQFDGB0tWe5g==
X-CSE-MsgGUID: +rrQLNJQRzWHjTQazFw2aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446031"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446031"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:48 -0800
X-CSE-ConnectionGUID: Tf5vlC/vQ1CQQ7xqOGcyOA==
X-CSE-MsgGUID: 5C5LpABcRACWrwwlttKBBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016357"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:46 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 09/18] drm/i915/display: Add DC Balance flip count
 operations
Date: Mon, 17 Nov 2025 11:14:33 +0530
Message-ID: <20251117054442.4047665-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Track dc balance flip count with params per crtc. Increment
DC Balance Flip count before every send push to indicate DMC
firmware about new flip occurrence. This is tracked separately
from legacy FLIP_COUNT register also Reset DC balance flip
count value while disabling VRR adaptive mode, this is to
start with fresh counts when VRR adaptive refresh mode is
triggered again.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  3 ++-
 .../drm/i915/display/intel_display_types.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |  3 +++
 5 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a217a67ceb43..115f6d7eb874 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2013,6 +2013,8 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	display->funcs.color->load_luts(crtc_state);
 
 	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
+		intel_vrr_dcb_increment_flip_count(crtc_state->dsb_color,
+						   crtc_state, crtc);
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df5d1554538d..e7fda3b2944c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7378,7 +7378,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
-
+		intel_vrr_dcb_increment_flip_count(new_crtc_state->dsb_commit,
+						   new_crtc_state, crtc);
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8eb0ace7d918..740c5fc9fe1e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1501,6 +1501,10 @@ struct intel_crtc {
 		struct intel_link_m_n m_n, m2_n2;
 	} drrs;
 
+	struct {
+		u64 flip_count;
+	} dc_balance;
+
 	int scanline_offset;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5e24ac3e6c75..788e93cea29d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -624,6 +624,28 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
+void
+intel_vrr_dcb_increment_flip_count(struct intel_dsb *dsb,
+				   struct intel_crtc_state *crtc_state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	if (dsb)
+		intel_dsb_nonpost_start(dsb);
+
+	intel_de_write_dsb(display, dsb,
+			   PIPEDMC_DCB_FLIP_COUNT(pipe),
+			   ++crtc->dc_balance.flip_count);
+
+	if (dsb)
+		intel_dsb_nonpost_end(dsb);
+}
+
 void
 intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
 		    struct intel_crtc *crtc)
@@ -634,6 +656,7 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
 	if (!crtc_state->vrr.dc_balance.enable)
 		return;
 
+	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 1a11d288dfb4..7aa1f31ee287 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -29,6 +29,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_push_sent(struct intel_dsb *dsb,
 			       const struct intel_crtc_state *crtc_state);
+void intel_vrr_dcb_increment_flip_count(struct intel_dsb *dsb,
+					struct intel_crtc_state *crtc_state,
+					struct intel_crtc *crtc);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
-- 
2.48.1

