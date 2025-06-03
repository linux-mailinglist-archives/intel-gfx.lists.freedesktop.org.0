Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8F0ACC8C9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9977810E906;
	Tue,  3 Jun 2025 14:09:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OIoThyM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5632310E8FE;
 Tue,  3 Jun 2025 14:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959749; x=1780495749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ri2VqiXFu0Zv91zfPYwpD/8RFB9jE0dHimTJQ5eLxaQ=;
 b=OIoThyM4cS3DraVz7v0Cx5kGNQRvTKDXS/SMdHhcIqyzNj7h0n7kF+TT
 ztTgdSHuE8tToSJjI4jtBuCi+/2R8mf0xfSsHVbBZ1Gdb7TY5c3IfhU5o
 ncMWbPEcryVNOw2MmuCcB9QWEXi4Bfot6RWPL9m6T3JMTut0HjrtVY/p2
 FW+0q4XBMuPd06JC8WMo6mHUseJNty7wEs0Ehbtjg0v5wbjsIa54hmOiV
 2E7Ju0PwRUXLX31AF2lCLjjoFU0raIUMqLyWVxkaw+ZFd3Y2MgV8761lY
 eB0Q4OgdDfu8V/xApn980DpvxVtuE8BSQ8iRuc8g0SlamQEAWOdOQJ59w g==;
X-CSE-ConnectionGUID: HVGxxVjjSUeMBNTeMZWEBQ==
X-CSE-MsgGUID: e8fKUDInTh+e7M+WuWtTgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265857"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265857"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:09:09 -0700
X-CSE-ConnectionGUID: Mod7QJHkTJuw0Gz5EXCNtg==
X-CSE-MsgGUID: kpHKw2TiQN25Gp0aU0ZVoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155711"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:09:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:09:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 09/12] drm/i915/flipq: Implement Wa_18034343758
Date: Tue,  3 Jun 2025 17:08:33 +0300
Message-ID: <20250603140836.21432-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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
index 7e09df541dac..e4ffe252d041 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7237,6 +7237,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7267,6 +7271,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
index 331a56dad58e..434f9d854c40 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -382,3 +382,30 @@ void intel_flipq_add(struct intel_crtc *crtc,
 
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

