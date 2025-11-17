Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0FFC63FEC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C5510E37D;
	Mon, 17 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXGKtJYh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3377D10E379;
 Mon, 17 Nov 2025 12:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381391; x=1794917391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E9fylZ2AGBCZZk5sS35BPpj/D1irqOMY3iWbvDOazOw=;
 b=EXGKtJYhDgeW7skA4GYfHdp9Gbrwvmi+YMW0Q11Isfmy4njT+gkgv82s
 +JqtMtdW75h2eyxIzLwXNeHyJN9L5zEqvXQ1dmk0VrwlGD9I61E4NHEtF
 sjtQ/TaExfx02qC1romDwGHtGdDsic2RbYbOk9JL43HP6PxmitNVWFaXQ
 8TexG92F1cQcvz0UVmIr/knis2PplS7qI99dq79V+iWcunENuCqQYZDsv
 jLVqxfpSoGvJgIzA1XzG1gT2kW6WwbKJd/zUZleKVZKKOVSlLnqKg4rQn
 Cp8fMMWzuOyt3O5GdQ1WoLzv71IQu1lz/yd41goV0x+E7KPCK7eqaoQA5 w==;
X-CSE-ConnectionGUID: mtgl59UYRbOTGDBEIAXdKg==
X-CSE-MsgGUID: LPkSNOKsQmChE/3ui2XdNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945783"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945783"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:51 -0800
X-CSE-ConnectionGUID: xyfZvD47T4CCCMSAcE03QQ==
X-CSE-MsgGUID: 4bMFeroOSJOCd788cHoktA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:49 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 4/8] drm/i915/cmtg: program vrr registers of cmtg
Date: Mon, 17 Nov 2025 17:12:12 +0530
Message-Id: <20251117114216.1522615-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
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

Enable vrr if it is enabled on cmtg registers.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 19 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  5 +++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 5e9aaa50b38f..3dfb691913cb 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -17,6 +17,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_vrr_regs.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -213,6 +214,7 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 vctl;
 
 	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
 		       intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder)));
@@ -226,6 +228,23 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 		       intel_de_read(display, TRANS_VBLANK(display, cpu_transcoder)));
 	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
 		       intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder)));
+
+	vctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
+	if (vctl & VRR_CTL_VRR_ENABLE) {
+		u32 vmax, flipline, vmin;
+
+		vmax = intel_de_read(display, TRANS_VRR_VMAX(display, cpu_transcoder));
+		flipline = intel_de_read(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder));
+		if (vmax != flipline)
+			return;
+
+		vmin = intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder));
+
+		intel_de_write(display, TRANS_VRR_VMAX_CMTG(cpu_transcoder), vmax);
+		intel_de_write(display, TRANS_VRR_VMIN_CMTG(cpu_transcoder), vmin);
+		intel_de_write(display, TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder), flipline);
+		intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), vctl);
+	}
 }
 
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 47403bbcac7d..37dee7165852 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -33,4 +33,9 @@ enum cmtg {
 #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
 #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
 
+#define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) * 0x100)
+#define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 + (id) * 0x100)
+#define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) * 0x100)
+#define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) * 0x100)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

