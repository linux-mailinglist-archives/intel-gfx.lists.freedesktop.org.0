Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B926AC0F4A3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1656A10E4F8;
	Mon, 27 Oct 2025 16:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ln8P6rzS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FEF10E4F8;
 Mon, 27 Oct 2025 16:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582589; x=1793118589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adxA3LH5VJKX+husXw72exAAHLLUxI8AiCRhD/yX0Ps=;
 b=Ln8P6rzSOOfqlnk8FryDgXtrCJcmlANEaogqfxtYWj27Cktyvk9XBwdj
 DlDb+4yKvv4XRHyNiESGr/MjIfN7AD4No8MICQlVhWWcAMzkXXB//Irzf
 h7vMwfhDpRydfyt8h5eGD3O/RyRK0Ce71jsylmdxFLapoqg8Vp4jxosVB
 k79Ld3sKav3ZlgnJPqAsrHY8pzIFj20o9nTKaoTyDG4cZetkp6nKJmi4p
 8pFxGQqCEVS5VXdUaxDLNYiged/7m4wHs2/9jfqw2Ew7rk4R0J/aDzIKD
 XQpBeV+Oz/gX1ESCjIHFt1iI7gV8M6VpHs6x9ZYXAn1/prTR0czaNNvsN w==;
X-CSE-ConnectionGUID: 33+TRJwsRiOnlJvkL7CG6w==
X-CSE-MsgGUID: MegNuuuhRVyuqW12o7EQ2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299344"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299344"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:49 -0700
X-CSE-ConnectionGUID: 5sWN15n1Qt6aAqJbXuswCw==
X-CSE-MsgGUID: hV3JFMWdR726WrAlJzTtXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785603"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:47 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 09/22] drm/i915/vrr: Increment DC balance flip count on
 every flip
Date: Mon, 27 Oct 2025 21:59:14 +0530
Message-ID: <20251027162927.2655581-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Increment DC Balance Flip count before every send push to indicate
DMC firmware about new flip occurrence. This is tracked separately
from legacy FLIP_COUNT register.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 4 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 51db70d07fae..3aea1174593e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2012,6 +2012,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	display->funcs.color->load_luts(crtc_state);
 
 	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
+		intel_vrr_dcb_increment_flip_count(crtc_state, crtc);
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1790371e4a3b..cbf073ff19d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7300,6 +7300,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
+		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2948abc90c69..87bd722aa32d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -14,6 +14,7 @@
 #include "intel_psr.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
+#include "intel_dmc_regs.h"
 #include "skl_prefill.h"
 #include "skl_watermark.h"
 
@@ -612,6 +613,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
+void
+intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe),
+		       ++crtc->dc_balance.flip_count);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 66fb9ad846f2..eebc7be309db 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -14,6 +14,7 @@ struct intel_connector;
 struct intel_crtc_state;
 struct intel_dsb;
 struct intel_display;
+struct intel_crtc;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
+					struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

