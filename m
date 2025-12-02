Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938CDC9A792
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253C110E58E;
	Tue,  2 Dec 2025 07:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCE3Unm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2159510E58C;
 Tue,  2 Dec 2025 07:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661021; x=1796197021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E92KRWEa80PZfnWCiBqY6gCmfCRJRLP9LL20w7/MZpg=;
 b=PCE3Unm3yb0cLpEseZd1FL1ZOt61KgAdMkyWV+/8d4WJdtilmTGI4ImL
 HibewvuG/vVBXRCtrrz3LQY4oKh/LYIwR13cR22vqHM1Nz0DUN1yLS1T4
 QCY494bfJJtmZ3DqaV5ebEdyAbL/HglhN2IoK6UJxILyYc/m3Bybj7f9C
 SKJ5vLbraYfGr6mT2VPK6xyQgsCjleLM+VUeuZKwYJ9hdbkeYPtf8fE2u
 5Ra4LiiAXNqTakZ52/SC32sPps8Vc+6cVyCzgBU0gwSc5ZyGsyRatQBIj
 oYYkEObeDT1Pr8xgRn23/9LsAa82Zub875cq0buHVDvVqMBEKwSGyvYhc w==;
X-CSE-ConnectionGUID: i/j9oz/cS9uK/a5SHa3QMg==
X-CSE-MsgGUID: ixg3BTr3Q5yCiam8jzKTEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219218"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219218"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:37:01 -0800
X-CSE-ConnectionGUID: I4r3T2AWQuKy6QnTN5y2Iw==
X-CSE-MsgGUID: gG0g5vWeS36X3ExaYNP/UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504833"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:59 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 09/17] drm/i915/display: Add DC Balance flip count
 operations
Date: Tue,  2 Dec 2025 13:06:44 +0530
Message-ID: <20251202073659.926838-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 798cb10ea3a1..f9a779c555cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6858,6 +6858,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
 
+	if (new_crtc_state->vrr.dc_balance.enable)
+		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
+
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
 	 * CRTC enable sequence during modesets.  But when we inherit a
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 85de0e417c8e..3cb972305d3b 100644
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
index 637e4144cbea..54ae9bb6b071 100644
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

