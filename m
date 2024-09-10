Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E439738A6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E85A10E7D7;
	Tue, 10 Sep 2024 13:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0LAOxWl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BC610E7D4;
 Tue, 10 Sep 2024 13:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974977; x=1757510977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCw5yGeMv0uu8gIQP++4ewCgbgAY65N01suK1cpa0IM=;
 b=C0LAOxWl4zUdOak/Caci7S6ieGZnuWJnrm8HNkJqZ3XLVk9ptx0U6MiI
 Q4OQv4iIxPw+1AThuMjYV2mmj/f/B26+e1bKgbxgTFLs5L2Rz6l6AJGPe
 14F96z6SXEf2mQh0kcDX3pASEXE33LuSVJJy7hk6sHxWatjmmag9OXueS
 t5q5GmXuGdpApzUsHIwz4cHWUOkN9CQg+4nDcgFL4R9PBgTv2F101LR7D
 ZTNbb3a38yQAZgViiOnfsbbL1NJxaV8XyWNWET9v3D2nIOJUSDJvdBuLz
 bpFc/kjmWHcUdOclHKawEmWmPAJTBlyknDXsjACR/rFzBbBHl14Zjvghp A==;
X-CSE-ConnectionGUID: ICjbgcskQDeZxrun6PZpGg==
X-CSE-MsgGUID: Itab0uAYSeqhLkKO9eFvyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24870360"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24870360"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:37 -0700
X-CSE-ConnectionGUID: dDZ/Ify1Q/2TDdv9m2A2WA==
X-CSE-MsgGUID: eod1t5/fTcC8ld5cNOqkMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67796235"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 07/11] drm/i915/reg: fix PCH transcoder timing and
 data/link m/n style
Date: Tue, 10 Sep 2024 16:28:51 +0300
Message-Id: <90b1145453050797d3030bc2e5e24da18f34bdda.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Adhere to the style described at the top of i915_reg.h.

v2: Rebase with the indentation fixed (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 77 ++++++++++++++++++---------------
 1 file changed, 43 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1eede96a5415..b617de6b6928 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3160,33 +3160,76 @@
 /* transcoder */
 
 #define _PCH_TRANS_HTOTAL_A		0xe0000
+#define _PCH_TRANS_HTOTAL_B		0xe1000
+#define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
 #define  TRANS_HTOTAL_SHIFT		16
 #define  TRANS_HACTIVE_SHIFT		0
+
 #define _PCH_TRANS_HBLANK_A		0xe0004
+#define _PCH_TRANS_HBLANK_B		0xe1004
+#define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _PCH_TRANS_HBLANK_B)
 #define  TRANS_HBLANK_END_SHIFT		16
 #define  TRANS_HBLANK_START_SHIFT	0
+
 #define _PCH_TRANS_HSYNC_A		0xe0008
+#define _PCH_TRANS_HSYNC_B		0xe1008
+#define PCH_TRANS_HSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HSYNC_A, _PCH_TRANS_HSYNC_B)
 #define  TRANS_HSYNC_END_SHIFT		16
 #define  TRANS_HSYNC_START_SHIFT	0
+
 #define _PCH_TRANS_VTOTAL_A		0xe000c
+#define _PCH_TRANS_VTOTAL_B		0xe100c
+#define PCH_TRANS_VTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VTOTAL_A, _PCH_TRANS_VTOTAL_B)
 #define  TRANS_VTOTAL_SHIFT		16
 #define  TRANS_VACTIVE_SHIFT		0
+
 #define _PCH_TRANS_VBLANK_A		0xe0010
+#define _PCH_TRANS_VBLANK_B		0xe1010
+#define PCH_TRANS_VBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VBLANK_A, _PCH_TRANS_VBLANK_B)
 #define  TRANS_VBLANK_END_SHIFT		16
 #define  TRANS_VBLANK_START_SHIFT	0
+
 #define _PCH_TRANS_VSYNC_A		0xe0014
+#define _PCH_TRANS_VSYNC_B		0xe1014
+#define PCH_TRANS_VSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VSYNC_A, _PCH_TRANS_VSYNC_B)
 #define  TRANS_VSYNC_END_SHIFT		16
 #define  TRANS_VSYNC_START_SHIFT	0
+
 #define _PCH_TRANS_VSYNCSHIFT_A		0xe0028
+#define _PCH_TRANS_VSYNCSHIFT_B		0xe1028
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)
 
 #define _PCH_TRANSA_DATA_M1	0xe0030
+#define _PCH_TRANSB_DATA_M1	0xe1030
+#define PCH_TRANS_DATA_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M1, _PCH_TRANSB_DATA_M1)
+
 #define _PCH_TRANSA_DATA_N1	0xe0034
+#define _PCH_TRANSB_DATA_N1	0xe1034
+#define PCH_TRANS_DATA_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N1, _PCH_TRANSB_DATA_N1)
+
 #define _PCH_TRANSA_DATA_M2	0xe0038
+#define _PCH_TRANSB_DATA_M2	0xe1038
+#define PCH_TRANS_DATA_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M2, _PCH_TRANSB_DATA_M2)
+
 #define _PCH_TRANSA_DATA_N2	0xe003c
+#define _PCH_TRANSB_DATA_N2	0xe103c
+#define PCH_TRANS_DATA_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N2, _PCH_TRANSB_DATA_N2)
+
 #define _PCH_TRANSA_LINK_M1	0xe0040
+#define _PCH_TRANSB_LINK_M1	0xe1040
+#define PCH_TRANS_LINK_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M1, _PCH_TRANSB_LINK_M1)
+
 #define _PCH_TRANSA_LINK_N1	0xe0044
+#define _PCH_TRANSB_LINK_N1	0xe1044
+#define PCH_TRANS_LINK_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N1, _PCH_TRANSB_LINK_N1)
+
 #define _PCH_TRANSA_LINK_M2	0xe0048
+#define _PCH_TRANSB_LINK_M2	0xe1048
+#define PCH_TRANS_LINK_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M2, _PCH_TRANSB_LINK_M2)
+
 #define _PCH_TRANSA_LINK_N2	0xe004c
+#define _PCH_TRANSB_LINK_N2	0xe104c
+#define PCH_TRANS_LINK_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N2, _PCH_TRANSB_LINK_N2)
 
 /* Per-transcoder DIP controls (PCH) */
 #define _VIDEO_DIP_CTL_A         0xe0200
@@ -3292,40 +3335,6 @@
 
 #define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
 
-#define _PCH_TRANS_HTOTAL_B		0xe1000
-#define _PCH_TRANS_HBLANK_B		0xe1004
-#define _PCH_TRANS_HSYNC_B		0xe1008
-#define _PCH_TRANS_VTOTAL_B		0xe100c
-#define _PCH_TRANS_VBLANK_B		0xe1010
-#define _PCH_TRANS_VSYNC_B		0xe1014
-#define _PCH_TRANS_VSYNCSHIFT_B		0xe1028
-
-#define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
-#define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _PCH_TRANS_HBLANK_B)
-#define PCH_TRANS_HSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HSYNC_A, _PCH_TRANS_HSYNC_B)
-#define PCH_TRANS_VTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VTOTAL_A, _PCH_TRANS_VTOTAL_B)
-#define PCH_TRANS_VBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VBLANK_A, _PCH_TRANS_VBLANK_B)
-#define PCH_TRANS_VSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VSYNC_A, _PCH_TRANS_VSYNC_B)
-#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)
-
-#define _PCH_TRANSB_DATA_M1	0xe1030
-#define _PCH_TRANSB_DATA_N1	0xe1034
-#define _PCH_TRANSB_DATA_M2	0xe1038
-#define _PCH_TRANSB_DATA_N2	0xe103c
-#define _PCH_TRANSB_LINK_M1	0xe1040
-#define _PCH_TRANSB_LINK_N1	0xe1044
-#define _PCH_TRANSB_LINK_M2	0xe1048
-#define _PCH_TRANSB_LINK_N2	0xe104c
-
-#define PCH_TRANS_DATA_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M1, _PCH_TRANSB_DATA_M1)
-#define PCH_TRANS_DATA_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N1, _PCH_TRANSB_DATA_N1)
-#define PCH_TRANS_DATA_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M2, _PCH_TRANSB_DATA_M2)
-#define PCH_TRANS_DATA_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N2, _PCH_TRANSB_DATA_N2)
-#define PCH_TRANS_LINK_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M1, _PCH_TRANSB_LINK_M1)
-#define PCH_TRANS_LINK_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N1, _PCH_TRANSB_LINK_N1)
-#define PCH_TRANS_LINK_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M2, _PCH_TRANSB_LINK_M2)
-#define PCH_TRANS_LINK_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N2, _PCH_TRANSB_LINK_N2)
-
 #define _PCH_TRANSACONF              0xf0008
 #define _PCH_TRANSBCONF              0xf1008
 #define PCH_TRANSCONF(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSACONF, _PCH_TRANSBCONF)
-- 
2.39.2

