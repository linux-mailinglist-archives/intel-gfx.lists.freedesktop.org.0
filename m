Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB54BAD20A7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BAB10E3AC;
	Mon,  9 Jun 2025 14:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yx4cwg4j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2BB10E3AB;
 Mon,  9 Jun 2025 14:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478307; x=1781014307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K9B1KQaOKHXf/Vorw0wlS3yIp8Z0pboYQyXiziYNqLg=;
 b=Yx4cwg4jm9dRLZTdPGFdYwIL2UqctOxweAWFxJ+anQ+StNq+Rk4vgM0d
 0MeIOzJHiEphcNnFyFa1l+qbT8rpvk2+yRq2bYHPgSYjNyy/62J4WjpNb
 2MeOMR+Kjl0kjtWCNXCU7Gh499VYciUUsP1SRSYavwSUVsSe8MVzfvah+
 4Hp6/WbnMfDDcvlM0UaBmf8VY9eT50JaM7FhA1C3tAGO5D5YngDbMk9ea
 HJ0sME28vDCbzunlZ4T2zabwwXpkbyeKpSuCOpSjXeU7Dbgz9vzmyOaR3
 AEaBFy5WolwC/GYTQHFbmnNqql/n6Ae7U4HPIWyi7Y6s5ANrhYoKQa7js w==;
X-CSE-ConnectionGUID: zryNpSmuQICzM6kWbYJQkA==
X-CSE-MsgGUID: oXbfkpvLT4S58r+zTGHwkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360867"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360867"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:47 -0700
X-CSE-ConnectionGUID: rwbsgV52R8iMGjRVfmpPxQ==
X-CSE-MsgGUID: 2gydCA2uRG+Ku2Srj0+2zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765846"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 17/21] drm/i915/flipq: Implement Wa_18034343758
Date: Mon,  9 Jun 2025 17:10:42 +0300
Message-ID: <20250609141046.6244-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement the driver side of Wa_18034343758, which is supposed to
prevent the DSB and DMC from accessing registers in parallel, and
thus potentially corrupting the registers due to a hardware issue
(which should be fixed in PTL-B0).

The w/a sequence goes as follows:
DMC starts the DSB
 |                 \
DMC halts itself    | DSB waits a while for DMC to have time to halt
 .                  | DSB executes normally
 .		    | DSB unhalts the DMC at the very end
 .             	   /
DMC resumes execution

v2: PTL-B0+ firmware no longer has the w/a since the hw got fixed
v3: Do the w/a on all PTL for now since we only have the A0 firmware
    binaries which issues the halt instructions unconditionally

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  8 ++++++
 drivers/gpu/drm/i915/display/intel_flipq.c   | 27 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h   |  2 ++
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04492cb9446a..4b69121ed9b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7238,6 +7238,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7268,6 +7272,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
+
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_unhalt_dmc(new_crtc_state->dsb_commit, crtc);
 	}
 
 	if (intel_color_uses_chained_dsb(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 2f5100c47059..3a5a1fdb876b 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -386,3 +386,30 @@ void intel_flipq_add(struct intel_crtc *crtc,
 
 	intel_flipq_sw_dmc_wake(crtc);
 }
+
+/* Wa_18034343758 */
+static bool need_dmc_halt_wa(struct intel_display *display)
+{
+	/*
+	 * FIXME exclude PTL-B0+ once we have firmware
+	 * for it without the halt instructions.
+	 */
+	return DISPLAY_VER(display) == 20 ||
+		DISPLAY_VER(display) == 30;
+}
+
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (need_dmc_halt_wa(display))
+		intel_dsb_wait_usec(dsb, 2);
+}
+
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (need_dmc_halt_wa(display))
+		intel_dsb_reg_write(dsb, PIPEDMC_CTL(crtc->pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
index 195ff0dd83f5..2d4386a16197 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -29,5 +29,7 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     enum intel_dsb_id dsb_id,
 		     struct intel_dsb *dsb);
 int intel_flipq_exec_time_us(struct intel_display *display);
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 #endif /* __INTEL_FLIPQ_H__ */
-- 
2.49.0

