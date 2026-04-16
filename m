Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALy1KbpQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BCA409CDA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD8A10E7D2;
	Thu, 16 Apr 2026 03:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8F7FKzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC11D10E7D0;
 Thu, 16 Apr 2026 03:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308404; x=1807844404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WsE+Ok9yLVzjqH0RbnAwzzlmj9T/E5lLe39/MJcKcOM=;
 b=l8F7FKzBcYjK2e3sv27HwNbTLN5SYf5DyiYkVE4XzdThKAGK3xJW8o5m
 /IGCtFJgSljGRLgJs89u0LtgnWaqtzAozxIfnlS4ovwpE67sQ4xRQBfQg
 s9Z+irbvzupwnEelmVq7tURM5rWEKKlfownZxpPKdgvGEYfZhZSlzEOsG
 cpVMjLC0LiuOcDUYAUvr8YKvpAvZtVvCebNMHmBpPc+c/7Fj/0qfOWV+B
 hXkWHYbyMH4cmLeJN2cCUjakmkUSYPfQobUo/wOpsb8hDALA56yOdbmPI
 RfbXRQRUDjnym2xvlkpPBidgrH5CqmsZxAF4/iCKin/PtRoiVMF6e0H4b Q==;
X-CSE-ConnectionGUID: 90GY+FYBRqWerl97EGmvpw==
X-CSE-MsgGUID: tQauZ1aoRBe4l0YnzBuTjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997534"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997534"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:03 -0700
X-CSE-ConnectionGUID: zydf9y0DRPG0SMk6xF4OAA==
X-CSE-MsgGUID: jk41WgnoRhOZrVflvEbO4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755063"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/12] drm/i915/dp: Add helper to get AS SDP Transmission Line
Date: Thu, 16 Apr 2026 08:14:54 +0530
Message-ID: <20260416024504.1925195-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 61BCA409CDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a DP helper to compute the Adaptive Sync SDP transmission line
and use it when programming the EMP_AS_SDP_TL register.

Currently the AS SDP transmission line is programmed to the T1 position.
This can be extended in the future to support programming the T2 position
as well.

While at it, improve the documentation: the AS SDP transmission line
corresponds to the T1 position, which maps to the start of the VSYNC
pulse.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.c |  5 +++--
 drivers/gpu/drm/i915/display/intel_dp.c  | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  2 ++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.c b/drivers/gpu/drm/i915/display/intel_dip.c
index 2e3f303de74b..2ec07148801e 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.c
+++ b/drivers/gpu/drm/i915/display/intel_dip.c
@@ -8,6 +8,7 @@
 #include "intel_dip.h"
 #include "intel_dip_regs.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 
 u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 {
@@ -31,10 +32,10 @@ void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 		return;
 	/*
 	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * only for Adaptive Sync SDP to Vsync start.
+	 * only for Adaptive Sync SDP.
 	 */
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		intel_de_write(display,
 			       EMP_AS_SDP_TL(display, cpu_transcoder),
-			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+			       EMP_AS_SDP_DB_TL(intel_dp_get_as_sdp_transmission_line(crtc_state)));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..cab7db9902e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7415,3 +7415,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 	return true;
 }
+
+int intel_dp_get_as_sdp_transmission_line(const struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
+	 * Transmission Line, which corresponds to the start of the
+	 * VSYNC pulse.
+	 *
+	 * Use the T1 position for now.
+	 */
+	return crtc_state->vrr.vsync_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2849b9ecdc71..e10f21c06fe9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
+int intel_dp_get_as_sdp_transmission_line(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

