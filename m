Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A0DCD8E92
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D86F10E21E;
	Tue, 23 Dec 2025 10:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yo9/iSR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BB610E21B;
 Tue, 23 Dec 2025 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486733; x=1798022733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m5uUMhAMmd5OxBAgVLgv2pPiiFjQyxyGM+h/0cQmq5U=;
 b=Yo9/iSR1N4JKmLIORIT3lGncJ2SbD6yrm7mWfO/yfhIxp7DPeVomVIk/
 W6VbDKz7vr4ZhSPy8kCB3WOv8uFzMJVSsV0yWptBirpQ9wGl8feaW2JQH
 gW09lFHhduNcR2XYLQ8efra+2ywenqZwmiuyWCAWCtj6ieHpFRQgRhYpQ
 /QnGP0BMdUWjet+sca5Du8mqS59bBpGjjCc9myY+RRtuBbC2sUEezykHc
 qLcu+2uAkWFVkrxMSv/bG2r+2sVU34F06TYPzU470qq2xKLMgs83TSNLJ
 kvUuCADrYA1tVrL5NXWRgzuZOH+Vk34QHH5T2Ybr6sVJL/yr5DVAI+6so A==;
X-CSE-ConnectionGUID: rx7gZuSWTMuFh6TK2KD/LA==
X-CSE-MsgGUID: kKRjw9tzSfaOdMXvC6/0Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68090000"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68090000"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:33 -0800
X-CSE-ConnectionGUID: G4AR944AQF6yMsy54DMzLQ==
X-CSE-MsgGUID: IDIlmJwqQ0KwJjpDdHbh6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734547"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:29 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 10/18] drm/i915/display: Add DC Balance flip count
 operations
Date: Tue, 23 Dec 2025 16:15:32 +0530
Message-ID: <20251223104542.2688548-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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
DC Balance Flip count before every flip to indicate DMC
firmware about new flip occurrence which needs to be adjusted
for dc balancing. This is tracked separately from legacy
FLIP_COUNT register also Reset DC balance flip count value
while disabling VRR adaptive mode, this is to start with
fresh counts when VRR adaptive refresh mode is triggered again.

--v2:
- Call during intel_update_crtc.(Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      |  3 +++
 .../gpu/drm/i915/display/intel_display_types.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c          | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h          |  2 ++
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab0a8b791635..70ae5582ab0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6864,6 +6864,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
 
+	if (new_crtc_state->vrr.dc_balance.enable)
+		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
+
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
 	 * CRTC enable sequence during modesets.  But when we inherit a
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 75acfe043997..113e43bc1f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1531,6 +1531,10 @@ struct intel_crtc {
 		struct intel_link_m_n m_n, m2_n2;
 	} drrs;
 
+	struct {
+		u64 flip_count;
+	} dc_balance;
+
 	int scanline_offset;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c3a8161fb8e1..92be789a6500 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -646,6 +646,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
 void
 intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 		    struct intel_crtc *crtc)
@@ -656,6 +670,7 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
 
+	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index d40ed5504180..bedcc8c4bff2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -29,6 +29,8 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_push_sent(struct intel_dsb *dsb,
 			       const struct intel_crtc_state *crtc_state);
+void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
+					struct intel_crtc *crtc);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
-- 
2.48.1

