Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3053A8C2795
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555BF10EDA5;
	Fri, 10 May 2024 15:23:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boteQ0EL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E3910EDA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354630; x=1746890630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AXXtWqKx6/b7+YL91ezU7bQL1vTDqnpe6C6ukucJw6g=;
 b=boteQ0EL5h/xSvfDPTIbUloC473/dhjm3p8dye/sbs9BtUK8FkXCkF7W
 lFmlbO8t0y0fNrbbWBVFBPqY/xvmsIsK2l9xcQ/Y+SSwftTSxMMSBqo35
 Y1KJJHXf8jtE0G4G5Bw2IeU4Wv8k0LRGh70cGe/T3/9oWaTziRdvP4Jim
 9MLKdq3V/paSP125nf4e/i4NZZ0RLzXY55Y7iGdxBUc39Ji0GRSaMOBgs
 4gE3BrFqj3sxnxM6/iqe0d0U7mwChVn+Qn8phk/evrgR4dpeUhE5txMQ+
 aYaFZhtXzb4bgUx/ihQg6meme+k4fjF1kvk9TuMz63QHH0+hD+0lDVb2S Q==;
X-CSE-ConnectionGUID: tx1oLgqaRkyAWWRCb9yVaw==
X-CSE-MsgGUID: YV30tN7+SSig0IVngHsE4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468861"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468861"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:49 -0700
X-CSE-ConnectionGUID: CBfgTloRRu+acmvszo+F0A==
X-CSE-MsgGUID: VarcDeO8SMukqPv+msDTQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594930"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 05/16] drm/i915/gvt: Use the proper PLANE_AUX_DIST() define
Date: Fri, 10 May 2024 18:23:18 +0300
Message-ID: <20240510152329.24098-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Stop hand rolling PLANE_AUX_DIST() and just use the real thing.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
CC: Zhi Wang <zhi.wang.linux@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c         | 24 ++++++++++-----------
 drivers/gpu/drm/i915/gvt/reg.h              |  1 -
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 24 ++++++++++-----------
 3 files changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6c857beb5083..6b02612ddef5 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2678,20 +2678,20 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(PLANE_NV12_BUF_CFG(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(PLANE_NV12_BUF_CFG(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
 
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 1)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 2)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 3)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_A, 4)), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 0), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 1), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 2), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_A, 3), D_SKL_PLUS, NULL, NULL);
 
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 1)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 2)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 3)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_B, 4)), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 0), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 1), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 2), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_B, 3), D_SKL_PLUS, NULL, NULL);
 
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 1)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 2)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 3)), D_SKL_PLUS, NULL, NULL);
-	MMIO_DH(_MMIO(_REG_701C0(PIPE_C, 4)), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 0), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 1), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 2), D_SKL_PLUS, NULL, NULL);
+	MMIO_DH(PLANE_AUX_DIST(PIPE_C, 3), D_SKL_PLUS, NULL, NULL);
 
 	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 1)), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(_MMIO(_REG_701C4(PIPE_A, 2)), D_SKL_PLUS, NULL, NULL);
diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/reg.h
index d8216c63c39a..e8a56faafe95 100644
--- a/drivers/gpu/drm/i915/gvt/reg.h
+++ b/drivers/gpu/drm/i915/gvt/reg.h
@@ -57,7 +57,6 @@
 
 #define VGT_SPRSTRIDE(pipe)	_PIPE(pipe, _SPRA_STRIDE, _PLANE_STRIDE_2_B)
 
-#define _REG_701C0(pipe, plane) (0x701c0 + pipe * 0x1000 + (plane - 1) * 0x100)
 #define _REG_701C4(pipe, plane) (0x701c4 + pipe * 0x1000 + (plane - 1) * 0x100)
 
 #define SKL_FLIP_EVENT(pipe, plane) (PRIMARY_A_FLIP_DONE + (plane) * 3 + (pipe))
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 3b79c1c84b79..cf45342a6db0 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1006,18 +1006,18 @@ static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 1));
 	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 2));
 	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 3));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 1)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 2)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 3)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 4)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 1)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 2)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 3)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 4)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 1)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 2)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 3)));
-	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 4)));
+	MMIO_D(PLANE_AUX_DIST(PIPE_A, 0));
+	MMIO_D(PLANE_AUX_DIST(PIPE_A, 1));
+	MMIO_D(PLANE_AUX_DIST(PIPE_A, 2));
+	MMIO_D(PLANE_AUX_DIST(PIPE_A, 3));
+	MMIO_D(PLANE_AUX_DIST(PIPE_B, 0));
+	MMIO_D(PLANE_AUX_DIST(PIPE_B, 1));
+	MMIO_D(PLANE_AUX_DIST(PIPE_B, 2));
+	MMIO_D(PLANE_AUX_DIST(PIPE_B, 3));
+	MMIO_D(PLANE_AUX_DIST(PIPE_C, 0));
+	MMIO_D(PLANE_AUX_DIST(PIPE_C, 1));
+	MMIO_D(PLANE_AUX_DIST(PIPE_C, 2));
+	MMIO_D(PLANE_AUX_DIST(PIPE_C, 3));
 	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 1)));
 	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 2)));
 	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 3)));
-- 
2.43.2

