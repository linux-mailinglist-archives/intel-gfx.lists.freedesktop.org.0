Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF4CC3904E
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 04:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3197510E321;
	Thu,  6 Nov 2025 03:47:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gIk0lDG5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D15510E312;
 Thu,  6 Nov 2025 03:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762400856; x=1793936856;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/yDhqu+70UOByXGEKCn1Vlavvz3WkBkpVVPL0RHTw6Y=;
 b=gIk0lDG5C3aiVICvixNcr/jQtEPUIUiofnEfdgxEp0tk4/sgkP4BXNtD
 /8AS834oPb2869l/0LUEAaYkawT55HR69GLcgPYUS5yI9ymVCP6kEuqxX
 KuN283VgNWrouJ4NEU1Qf98/DSl3UjaYT2P19D2FDdQH1xzxfSkTEbZOI
 QEhP6HFQTKrRmmkF1/O50e/lrcDZaGg5uOsD/Q5IB0Cb8jJ79Q/k9Rb1G
 X+EcV8NJwy0yAWwcdZVqh1vVXtx+IO/h7BlkV9ZanN2vPcU2DFuwgaeoW
 whC8RxgAa/w2RA/Wtv0+d6z8i27IsWSyXN4p0p9rF+xyuBK5NdyNcToRE w==;
X-CSE-ConnectionGUID: nZMLjfEwR7uVkg6TAeOiaQ==
X-CSE-MsgGUID: WApU+SnWSnqKV+UMtD28Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63539959"
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="63539959"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 19:47:36 -0800
X-CSE-ConnectionGUID: VuShRrlrSDWopmpdYs4wJQ==
X-CSE-MsgGUID: Kh1HADSQR3u8B5z4ahljpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="187806847"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 05 Nov 2025 19:47:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Add register definitions for common SDP
Date: Thu,  6 Nov 2025 09:17:28 +0530
Message-Id: <20251106034729.259128-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

From: Arun R Murthy <arun.r.murthy@intel.com>

Add registers definitions for common SDP transmission line

Bspec: 74384
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9d71e26a4fa2..f8c1865a575d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1916,6 +1916,31 @@
 							 _VLV_VIDEO_DIP_DATA_B, \
 							 _CHV_VIDEO_DIP_DATA_C)
 
+/* SDP Re-architecture */
+#define _CMN_SDP_TL_A			0x6020C
+#define _CMN_SDP_TL_B			0x6120C
+#define _CMN_SDP_TL_C			0x6220C
+#define _CMN_SDP_TL_D			0x6320C
+#define CMN_SDP_TL(display, trans)	_MMIO_TRANS2(display, (trans), _CMN_SDP_TL_A)
+#define  TRANSMISSION_LINE_ENABLE	REG_BIT(31)
+#define  BASE_TRANSMISSION_LINE_MASK	REG_GENMASK(12, 0)
+#define  BASE_TRANSMISSION_LINE(x)	REG_FIELD_PREP(BASE_TRANSMISSION_LINE_MASK, x)
+
+#define _CMN_SDP_TL_STGR_CTL_A			0x60214
+#define _CMN_SDP_TL_STGR_CTL_B			0x61214
+#define _CMN_SDP_TL_STGR_CTL_C			0x62214
+#define _CMN_SDP_TL_STGR_CTL_D			0x63214
+#define CMN_SDP_TL_STGR_CTL(display, trans)	_MMIO_TRANS2(display, (trans), _CMN_SDP_TL_STGR_CTL_A)
+#define  VSC_EXT_STAGGER_MASK			REG_GENMASK(11, 8)
+#define  VSC_EXT_STAGGER(x)			REG_FIELD_PREP(VSC_EXT_STAGGER_MASK, x)
+#define  VSC_EXT_STAGGER_DEFAULT		0x2
+#define  PPS_STAGGER_MASK			REG_GENMASK(7, 4)
+#define  PPS_STAGGER(x)				REG_FIELD_PREP(PPS_STAGGER_MASK, x)
+#define  PPS_STAGGER_DEFAULT			0x1
+#define  GMP_STAGGER_MASK			REG_GENMASK(3, 0)
+#define  GMP_STAGGER(x)				REG_FIELD_PREP(GMP_STAGGER_MASK, x)
+#define  GMP_STAGGER_DEFAULT			0x0
+
 #define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	0x60210
 #define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	0x61178
 #define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	0x611f8
-- 
2.34.1

