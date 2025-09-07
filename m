Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16514B4796F
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 09:47:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B1310E44B;
	Sun,  7 Sep 2025 07:46:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3m9HJSb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D4A10E3B6;
 Sun,  7 Sep 2025 07:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757231196; x=1788767196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HLyEr/ELh282rCnpwTz8ZUvLhExUhMts6ADwZgxSDAI=;
 b=R3m9HJSb4NNhUs2bpJI1hmMtTu7V6CeTqUYDP7HkNbnBqRaQZc0OAnR9
 ejHQeEtVd031jWpckd3qYJiUxDfTVBreI/Sm/lrm22SNoY47pkFcxN97p
 WsCIWbC4jYaTvv059PmGblnJ/Mf787ab5y6Y8Djtok4Piw9hYbQOWVtUJ
 pzwVL9eeAnZQPd704RRuhjBvwbQ/QvOSmvCznEN9nZzf2TOICDGihDAGd
 geqAdglHaNqEK4tKTUlK0+VjCGAseRi0wlSxayRCUGDk0LhsYmm5VBsHX
 pgvk7ErV4LXaLigWVvjUgR7+huQpy+6DCzLcTBNiVDGuApxo7ztCS1BRv A==;
X-CSE-ConnectionGUID: YpRYO/szToCgOB9P8TptYg==
X-CSE-MsgGUID: MPjH9Xb4S1uJuPiNFuvMNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70220299"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70220299"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:36 -0700
X-CSE-ConnectionGUID: 84+8Z1o0TpK/K/GK3/srdA==
X-CSE-MsgGUID: Jc77xIHSRC+WkgAQ/3XeHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176874026"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 00:46:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/14] drm/i915/dsb: Align flipdone with delayed vblank using
 guardband wait
Date: Sun,  7 Sep 2025 13:02:38 +0530
Message-ID: <20250907073241.19632-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
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

Currently the guardband is same as vblank length and undelayed vblank
and the vblank and the flipdone with dsb interrupt are already aligned
for the fixed refresh rate case.

As we move towards a shorter optimized guardband we need to wait for the
delayed vblank before the DSB interrupt to align the flipdone event with
the delayed vblank.

Introduce a helper intel_dsb_wait_for_delayed_vblank() to wait for the
scanline range [delayed_vblank_start, vmin/vmax vtotal], depending on
whether fixed refresh rate mode or variable refresh rate mode is active,
before triggering the DSB interrupt.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h     |  3 +++
 3 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 787bb6ebdc75..fb072275b1c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7447,6 +7447,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..6b3a4d25a6c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -1026,3 +1026,19 @@ void intel_dsb_irq_handler(struct intel_display *display,
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GOSUB programming error\n",
 			crtc->base.base.id, crtc->base.name, dsb_id);
 }
+
+void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
+				       struct intel_dsb *dsb)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc = dsb->crtc;
+	int start, end;
+
+	crtc_state = intel_pre_commit_crtc_state(state, crtc);
+	start = intel_vrr_vmin_vblank_start(crtc_state);
+	end = crtc_state->vrr.enable ?
+	      intel_vrr_vmax_vtotal(crtc_state) :
+	      intel_vrr_vmin_vtotal(crtc_state);
+
+	intel_dsb_wait_scanline_in(state, dsb, start, end);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index c8f4499916eb..6eb810aad18f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -74,4 +74,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);
 void intel_dsb_irq_handler(struct intel_display *display,
 			   enum pipe pipe, enum intel_dsb_id dsb_id);
 
+void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
+				       struct intel_dsb *dsb);
+
 #endif
-- 
2.45.2

