Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1B3C0F4B8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0006310E512;
	Mon, 27 Oct 2025 16:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWeUzIy2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F6210E4E8;
 Mon, 27 Oct 2025 16:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582592; x=1793118592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lZMGCmr2M1ATujFrDhNYoZNVeUnh10+UqpHJz6F7InM=;
 b=jWeUzIy2MKI3o6mljxxIrkOvBXtHnRbPhHI+elrB2D7BsOPzR0VuEPAW
 /0L8DPVY4QSmvtM0hQQsW+0mlUCdhX2yAcU+1g+v/kOTkgF13zcajd1je
 +t70UsHA6UYXID6o0HzElmgx+5xG3ObNJpR3cEUjHIjO23E5U7s1zTO7l
 2IcxwQoOrhcZNDOWt95RFVT53frOOSIaYinqX2WCdwHhvcDV7w1V1tPW4
 NaN1GwJWrYL0IuESmkwPIGDrd+i9U30qimXJZ8Oftaj/cE8mYy3H1sQUA
 VG0pTKIMt3nHQJ27QSEBkMxLQUeeNdB/TRUZSsesr8ZMnCWJMUGqQur6K g==;
X-CSE-ConnectionGUID: 0ZEYfNUUQKqB3MpD+oG+rA==
X-CSE-MsgGUID: viU1S0YZQOS/X0Fsvz1/OA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299347"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299347"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:51 -0700
X-CSE-ConnectionGUID: OM5FwK3oTv23X+tU265mfQ==
X-CSE-MsgGUID: KfqWWJAzSaKjo3L1MCJOnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785612"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:50 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 10/22] drm/i915/vrr: Add function to reset DC Balance flip
 count
Date: Mon, 27 Oct 2025 21:59:15 +0530
Message-ID: <20251027162927.2655581-11-mitulkumar.ajitkumar.golani@intel.com>
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

Reset DC balance flip count value while disabling VRR
adaptive mode, this is to start with fresh counts when
VRR adaptive refresh mode is triggered again.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cbf073ff19d2..1ce810625722 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1128,6 +1128,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
+		intel_vrr_dcb_reset_flip_count(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 87bd722aa32d..2ae27751e5b4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -627,6 +627,18 @@ intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
 		       ++crtc->dc_balance.flip_count);
 }
 
+void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
+				    struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index eebc7be309db..8f97525b8e2d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -42,6 +42,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
 					struct intel_crtc *crtc);
+void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
+				    struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

