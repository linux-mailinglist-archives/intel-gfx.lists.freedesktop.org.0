Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D0C8D7A8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4F110E7BF;
	Thu, 27 Nov 2025 09:16:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dChNWASB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C581910E7CB;
 Thu, 27 Nov 2025 09:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234972; x=1795770972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tc7PqW8wDIyaIgqS8udz2+jNN93HSfTT0uhopbkCaeo=;
 b=dChNWASBnqW/DkM3Kiar6jft+w/Wc8PUT7g15M9SGUkm9OcRaareiK7Z
 cQkivb3WvuuwFAC+v6CakxAJR4ol7jVI561W1KuHRGm7cDXyGLuYQfjtz
 SiIxZTvLkjcdMJgRalpefuDIyqT1nAUIysS8Dapnp+nGMmedrfqp1t/m5
 wbaGgvq+N4JGkjzjas1d4l84NVhgG+hFbvY0EoLBTHENT/CvjDEI/bom4
 M2e7Cmycw18O0ahGMgMMvfiDZh1vZRT66jv4JwhzR94W6pAXYrU7Gf41N
 QGznHVZKlEO0eaTPbqGS04LpV6FqmqrNpqeLz6PE5NM8rH3Lw/qQvxt6f g==;
X-CSE-ConnectionGUID: J5z+4AekT++q2XKVcqLL5g==
X-CSE-MsgGUID: Vn4bCIJnQViOBGbM9DS9uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642339"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642339"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:12 -0800
X-CSE-ConnectionGUID: 5ZVc9GlwRN6Z+9gNNpPg3A==
X-CSE-MsgGUID: ztgK8pjhQoqN/RvJ7lZBYg==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:11 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 09/17] drm/i915/display: Add DC Balance flip count
 operations
Date: Thu, 27 Nov 2025 14:46:06 +0530
Message-ID: <20251127091614.648791-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display.c      |  3 +++
 .../gpu/drm/i915/display/intel_display_types.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c          | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h          |  2 ++
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d41ab965c013..1269f841d48b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6863,6 +6863,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
 
+	if (new_crtc_state->vrr.dc_balance.enable)
+		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
+
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
 	 * CRTC enable sequence during modesets.  But when we inherit a
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
index ff65c1167e1b..411ae5da3824 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -632,6 +632,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
@@ -642,6 +656,7 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
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

