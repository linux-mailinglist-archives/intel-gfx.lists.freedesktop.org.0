Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62883B8D513
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB3310E325;
	Sun, 21 Sep 2025 04:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l10Hon61";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE2D10E33E;
 Sun, 21 Sep 2025 04:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430154; x=1789966154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4wzkC0hx5pM/Uf5kaYs8ee9Z1mW0te9bhV4S9whKiB0=;
 b=l10Hon61ll3Uzqnv4J9LZdo+R1cMkkj4bSkpGei+LTNzcEkm8zhNrtPR
 PTW5+/I4qkAUevNYh8h/XWCs2ZOqXvwmWRfQ9p7j0OuZnm9H5JIzbDF//
 yuyWD8uva/aW/GdI70W3K+3gxoHWwKYb4+7th359gH9uVZl7yQnd/wSne
 lQGxxhqUQ9nN9CF+kE8aoyxRvxmoxw9HS1WahwizZlQcBJgPfKBC6R+PV
 IyoljX6VnKIAApTIlHlQzr0gPCliGKR9YNdJImMx9+KM33WnTxoNI9UXt
 yxrRL/73avQV6zGVk/fqOmyLWTTsjBg3KpiFhCdJBpIZXQqe9a6Xl/LUk Q==;
X-CSE-ConnectionGUID: /TDJIaxRR8C9Az0920m++w==
X-CSE-MsgGUID: P8ZgkY9TRde+k8CVa7blYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154747"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154747"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:13 -0700
X-CSE-ConnectionGUID: OSvDg7DcQ4qKMZvVE7K5Xg==
X-CSE-MsgGUID: tomNyfspQ5+7BXpEAPXCDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097736"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Date: Sun, 21 Sep 2025 10:05:34 +0530
Message-ID: <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
However, from PTL onwards, it waits for the start of the safe window,
defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
This change was introduced to move the SCL window out of the vblank region,
supporting modes with higher refresh rates and smaller vblanks.

As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
SCL lines earlier than the undelayed vblank start. Since we use
intel_dsb_wait_vblanks() to time the send push operation, this causes
issues when SCL lines are non-zero.

Instead of relying on the helper, instruct the DSB to wait from
(undelayed vblank start - SCL) to (delayed vblank start - SCL) before
sending the push. This approach works for both pre-PTL and PTL+ platforms.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h     |  2 ++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bfeec3706f35..8d78037d5a2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7265,7 +7265,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				new_crtc_state->dsb_color);
 
 	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
-		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+		intel_dsb_wait_for_scl_start(state, new_crtc_state->dsb_commit);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 400dcc87a992..e94a05cc8c82 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -826,6 +826,22 @@ void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
 	intel_dsb_wait_usec(dsb, usecs);
 }
 
+void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
+	int undelayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vdisplay;
+	int delayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vblank_start;
+	int start, end;
+
+	start = undelayed_vblank_start - crtc_state->set_context_latency;
+	end = delayed_vblank_start - crtc_state->set_context_latency;
+
+	intel_dsb_wait_scanline_out(state, dsb, start, end);
+}
+
 /**
  * intel_dsb_commit() - Trigger workload execution of DSB.
  * @dsb: DSB context
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 1cb5ba1a0534..5985d0024dae 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -73,5 +73,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);
 
 void intel_dsb_irq_handler(struct intel_display *display,
 			   enum pipe pipe, enum intel_dsb_id dsb_id);
+void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb);
 
 #endif
-- 
2.45.2

