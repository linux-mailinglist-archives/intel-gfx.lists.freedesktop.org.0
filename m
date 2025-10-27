Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AD0C0F4A9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C6C10E4E8;
	Mon, 27 Oct 2025 16:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G080cIWW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C07810E4E8;
 Mon, 27 Oct 2025 16:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582594; x=1793118594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zBylecJyCzGJ3Bqa3e0VpoufdxDhFujhb8FJ+ysjfWE=;
 b=G080cIWWEX0xMoN0iKuyXeILvBimQcZAb8D7KQTLLz8y9T+dL7JgLkID
 ZS9YD8jSghPhWxiWH/OfF6FyDWs32In0ulQU4RuTOGqB7xAQtxMlhGMd+
 rJM4iDfwWOS5WdL1cyfNPcRsxwYCE08wVgMhzq3vlo1MGw8Qx22H2nz85
 3u6X7Q8QL8iM4NBfc1hE1yPEZgq1eLkn5E8fYDC4Y9ipPAd7iQUfkK0gt
 MNNj9bQHupTuJ9A/31PUN6gjGUA/9eyGUnmAkwi9JfaGIxdFGeXjBO9Io
 HIvXN50+bKTWQuc/p97wEEckxXd9SUjh04en+FMBA30fDIqCltgXNwrP+ Q==;
X-CSE-ConnectionGUID: 4Ewh1t0GQHihcXagWHYBuQ==
X-CSE-MsgGUID: UPp9la48Qi6Fc0xvpngS+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299351"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299351"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:54 -0700
X-CSE-ConnectionGUID: 22rNxibDTAOwN00XIb6dBg==
X-CSE-MsgGUID: fdh9vn5USyuANuZW/nB85w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785621"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 11/22] drm/i915/vrr: Add function reset DC balance
 accumulated params
Date: Mon, 27 Oct 2025 21:59:16 +0530
Message-ID: <20251027162927.2655581-12-mitulkumar.ajitkumar.golani@intel.com>
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

Add function which resets all accumulated DC Balance parameters
whenever adaptive mode of VRR goes off. This helps to give a
fresh start when VRR is re-enabled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1ce810625722..83a64b13dca3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1129,6 +1129,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_vrr_dcb_reset_flip_count(old_crtc_state, crtc);
+		intel_vrr_dcb_balance_reset(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2ae27751e5b4..6168caff9cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -639,6 +639,19 @@ void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
 	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
 }
 
+void
+intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
+			    struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8f97525b8e2d..a713d1a1e3dd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -44,6 +44,8 @@ void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
 					struct intel_crtc *crtc);
 void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
 				    struct intel_crtc *crtc);
+void intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
+				 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

