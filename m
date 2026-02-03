Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BvACY0CgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA707DA6C4
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D3D10E68F;
	Tue,  3 Feb 2026 14:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LfmTAkAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9753110E68D;
 Tue,  3 Feb 2026 14:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128008; x=1801664008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YU/Z57PZ32g2+0jAt1JDVL/a0B+ooyuCIKdS18adZX4=;
 b=LfmTAkAgV3DwxHNkTnhHY3nkE5Fh36ApLJ2Co9q/der7R+dfl9kp5iuH
 BbeeOmQbONOw9nLQ1Kt4cIf6n4aW5UYihY1Y/spafZSGimH27bzIxAbgi
 8wWsOhfgzH3HtdkskNKKdKwpYG3Nqsw5GxqZo8+ylDKBi0H/RNNhitqa4
 GemBg6PIjzXzAe84R+3lFmgndP3nRnWNi5td2V8wqmrpt8og2g0FIRecT
 Suv1Pv+IJzgAIM6pLtGK0zHfDibYbF5rZ7zwb0pWSgUzGUmWhFWUh6TmF
 n42OJzJPBLvtDFxpbWewZGKKAeC2b8t0eYyO/PcT3Z3Vx+bk8Mgl5ec5/ A==;
X-CSE-ConnectionGUID: HEr5qpJqSIugDXuwg8RVKA==
X-CSE-MsgGUID: XhfymeyuQwuJdOft+Eee8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156443"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156443"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:27 -0800
X-CSE-ConnectionGUID: RmsFHhbNQjeLbwGt/WB01g==
X-CSE-MsgGUID: GI3TV6gCQhOFgnSQO7NpUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956302"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:25 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 04/10] drm/i915/cmtg: program vrr registers of cmtg
Date: Tue,  3 Feb 2026 19:14:01 +0530
Message-Id: <20260203134407.2823406-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BA707DA6C4
X-Rspamd-Action: no action

Enable vrr if it is enabled on cmtg registers.

v2: Use sw state instead of reading from hardware. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h     |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c           |  4 ++++
 4 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 4220eeece07f..26adf70cdd00 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -17,6 +17,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_vrr.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -220,6 +221,17 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder), crtc->cmtg.vtotal);
 	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder), crtc->cmtg.vblank);
 	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder), crtc->cmtg.vsync);
+
+	if (intel_vrr_possible(crtc_state) && intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_VRR_VMIN_CMTG(cpu_transcoder),
+			       crtc_state->vrr.vmin - 1);
+		intel_de_write(display, TRANS_VRR_VMAX_CMTG(cpu_transcoder),
+			       crtc_state->vrr.vmax - 1);
+		intel_de_write(display, TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder),
+			       crtc_state->vrr.flipline - 1);
+		intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder),
+			       crtc->cmtg.vrr_ctl);
+	}
 }
 
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index eb24827d22f5..eab90415d0da 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -27,4 +27,9 @@
 #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
 #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
 
+#define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) * 0x100)
+#define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 + (id) * 0x100)
+#define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) * 0x100)
+#define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) * 0x100)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index defb54dd0bbe..a87f3ec10aea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1574,6 +1574,7 @@ struct intel_crtc {
 		bool enable;
 		u32 htotal, hblank, hsync;
 		u32 vtotal, vblank, vsync;
+		u32 vrr_ctl;
 	} cmtg;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9d814cc2d608..2c1ae685400f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -892,6 +892,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	u32 vrr_ctl;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
@@ -907,6 +908,9 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
+	if (crtc->cmtg.enable)
+		crtc->cmtg.vrr_ctl = vrr_ctl;
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
-- 
2.29.0

