Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMn0Hwx922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DBB3E379D
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B047A10E2AA;
	Sun, 12 Apr 2026 11:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xg7FD5Xg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4CD10E2A8;
 Sun, 12 Apr 2026 11:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992074; x=1807528074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A52dxTAwLxv6QdSYXFFUCMwI1saF3yPqhZKrWZJjo2o=;
 b=Xg7FD5XgotX3MQwiXG3dGryaKfbkJT13tGItuvga+g9LqicljOu3vj/5
 bCjYsqTo1dBT7kPUdCToJ6wqMwv9s3mhSdcSRr+/XGyim33U2DVsAf8DA
 bZg9Va0KBJjsVL+DoXNrHQpkwvdHzL0g1VL+gdXIQCDkypHXLhu+T8pL3
 nBkR/F8eZWLGrQRTzaoBEaHkmhWjThke4EAl2Z0oLjcP4PdAIlKSENIKy
 KEx+uRUbLkzh15idnVviRwPeeL2ORaElKp2QMv50IDiRnfVaqskG7P4YZ
 4kITHPfWLdftRe9XV4L+tvXzAuEtr3rrSBaN26NQvFoKKltzJlr2CX+VM w==;
X-CSE-ConnectionGUID: Vpr/3yC4RWeIqYYOy0fJVg==
X-CSE-MsgGUID: 700tnED9TBWBLgVRDal7pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115117"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115117"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:07:53 -0700
X-CSE-ConnectionGUID: gEeS+b1HSUy/NMKYAHOeFA==
X-CSE-MsgGUID: cPmxj6JUQeu5Hhom749B3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507722"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:07:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 04/13] drm/i915/cmtg: Program VRR registers of CMTG
Date: Sun, 12 Apr 2026 16:07:03 +0530
Message-Id: <20260412103712.4021213-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 31DBB3E379D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Program the VRR registers of CMTG, as the VRR timing generator
will always be enabled for NVL.

v2: Use sw state instead of reading from hardware. [Jani]
v3: Program cmtg vrr control and timing registers along with
vrr transcoder registers.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    | 20 +++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      |  5 +++
 4 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index a3db1368bd83..c5ef9de2e408 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -16,6 +16,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_vrr_regs.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -281,3 +282,35 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
 	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
 		       crtc_state->set_context_latency);
 }
+
+void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_de_write(display, TRANS_VRR_VMIN_CMTG(cpu_transcoder), crtc_state->vrr.vmin);
+	intel_de_write(display, TRANS_VRR_VMAX_CMTG(cpu_transcoder), crtc_state->vrr.vmax);
+	intel_de_write(display, TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder), crtc_state->vrr.flipline);
+}
+
+void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 vrr_ctl;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	vrr_ctl = VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN |
+		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
+
+	/* TODO: The code below may need to be revisited once CMRR is enabled */
+	if (crtc_state->cmrr.enable)
+		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), vrr_ctl);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 53a44f505dd2..c92e3a62ff0d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,8 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index f7fc812d8ef0..b50ada371262 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -51,4 +51,24 @@
 							    _TRANS_SET_CTX_LATENCY_CMTG_A, \
 							    _TRANS_SET_CTX_LATENCY_CMTG_B)
 
+#define _TRANS_VRR_CTL_CMTG_A		0x6F420
+#define _TRANS_VRR_CTL_CMTG_B		0x6F520
+#define TRANS_VRR_CTL_CMTG(trans)	_MMIO_TRANS((trans), \
+						     _TRANS_VRR_CTL_CMTG_A, _TRANS_VRR_CTL_CMTG_B)
+#define _TRANS_VRR_VMAX_CMTG_A		0x6F424
+#define _TRANS_VRR_VMAX_CMTG_B		0x6F524
+#define TRANS_VRR_VMAX_CMTG(trans)	_MMIO_TRANS((trans), \
+						     _TRANS_VRR_VMAX_CMTG_A, \
+						     _TRANS_VRR_VMAX_CMTG_B)
+#define _TRANS_VRR_VMIN_CMTG_A		0x6F434
+#define _TRANS_VRR_VMIN_CMTG_B		0x6F534
+#define TRANS_VRR_VMIN_CMTG(trans)	_MMIO_TRANS((trans), \
+						     _TRANS_VRR_VMIN_CMTG_A, \
+						     _TRANS_VRR_VMIN_CMTG_B)
+#define _TRANS_VRR_FLIPLINE_CMTG_A	0x6F438
+#define _TRANS_VRR_FLIPLINE_CMTG_B	0x6F538
+#define TRANS_VRR_FLIPLINE_CMTG(trans)	_MMIO_TRANS((trans), \
+						     _TRANS_VRR_FLIPLINE_CMTG_A, \
+						     _TRANS_VRR_FLIPLINE_CMTG_B)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fae1186a90b2..ce71cf35fba5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -7,6 +7,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
@@ -324,6 +325,8 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
+
+	intel_cmtg_set_vrr_timings(crtc_state);
 }
 
 static
@@ -922,6 +925,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+
+	intel_cmtg_set_vrr_ctl(crtc_state);
 }
 
 static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
-- 
2.29.0

