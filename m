Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84859B19B6E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 08:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABD510E33F;
	Mon,  4 Aug 2025 06:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m99EyqD7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E1610E329;
 Mon,  4 Aug 2025 06:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754288190; x=1785824190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzcQ3pg6w2joj9uqaOtXU/e+LfN0c6+Hfmm/L9CO5kU=;
 b=m99EyqD7N2DOl+v29TNCkCNoJoSk7Tx6PRBnD4zp7OWc/YrlilTO242N
 2zHvhwPfl+u55WncCEqIjjypfD2aA0+ODbHMQZ8FGw1B9hiTTOyE4gBLv
 lj+prIHH7g9KqL++aE39q9o7z5/jwPg67c7hF64nFsRgHvMqZfscntOF+
 gdMAfHY6j3cpPaVbXViHiGJNcp/Gn+sUmcBqZILgi42qkd50FuB7IUE5B
 Q4lzPcUPmAXfelOY7cATIfEFDiEK0PYunttOJf7DzNRp6Q7N1+tQAUsBd
 DRKeE1ADd63UuPtPh8kGI/Z1PB1q8q9lLB8PzYHgghUVnnnKm1MSao6lE A==;
X-CSE-ConnectionGUID: yWVHDq4uTW+XSt7HFtwFlw==
X-CSE-MsgGUID: ZKDkm2AWQ0+wfMqjFMRAvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="74127045"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="74127045"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:30 -0700
X-CSE-ConnectionGUID: yszpNloMTh+e2Qss213f2g==
X-CSE-MsgGUID: Io7d7VXnRSiL9OZi6ytaeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163345454"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.38])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/4] drm/i915/psr: New interface adding PSR idle poll into dsb
 commit
Date: Mon,  4 Aug 2025 09:16:14 +0300
Message-ID: <20250804061615.932508-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804061615.932508-1-jouni.hogander@intel.com>
References: <20250804061615.932508-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

This patch is preparing to fix that by adding interface which can be used to
add poll ensuring PSR HW is idle into dsb dsb commit.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 27 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 172bc0c39968..2227adb705f6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3001,6 +3001,14 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	 * As all higher states has bit 4 of PSR2 state set we can just wait for
 	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
 	 */
+	if (new_crtc_state->dsb_commit) {
+		intel_dsb_poll(new_crtc_state->dsb_commit,
+			       EDP_PSR2_STATUS(display, cpu_transcoder),
+			       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 0, 200,
+			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);
+		return true;
+	}
+
 	return intel_de_wait_for_clear(display,
 				       EDP_PSR2_STATUS(display, cpu_transcoder),
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
@@ -3013,6 +3021,14 @@ _psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
+	if (new_crtc_state->dsb_commit) {
+		intel_dsb_poll(new_crtc_state->dsb_commit,
+			       psr_status_reg(display, cpu_transcoder),
+			       EDP_PSR_STATUS_STATE_MASK, 0, 200,
+			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);
+		return true;
+	}
+
 	return intel_de_wait_for_clear(display,
 				       psr_status_reg(display, cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK,
@@ -3055,6 +3071,17 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 	}
 }
 
+void intel_psr_wait_for_idle_dsb(const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->has_psr || new_crtc_state->has_panel_replay)
+		return;
+
+	if (new_crtc_state->has_sel_update)
+		_psr2_ready_for_pipe_update_locked(new_crtc_state);
+	else
+		_psr1_ready_for_pipe_update_locked(new_crtc_state);
+}
+
 static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9b061a22361f..0cd0542b2450 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -52,6 +52,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
 void intel_psr_short_pulse(struct intel_dp *intel_dp);
 void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state);
+void intel_psr_wait_for_idle_dsb(const struct intel_crtc_state *new_crtc_state);
 bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.43.0

