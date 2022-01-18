Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 755CB492541
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 12:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9797810E2ED;
	Tue, 18 Jan 2022 11:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238F410E6EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 11:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642506943; x=1674042943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ninqfu+0/AfhRGA1p3vUTlp0LxKN/K57Rlpdi3t1vJU=;
 b=EjhD/3xkkrg4tnHZPQmJ7xcqJpjHSkg0e0uTTwejehUS4/dDP1h0OmiH
 F8Ei/8oVCS+B32EgpkJqkFi+iATyOt2CZ6Yywf6/KyqlkrfYUpW1sLyC8
 KGBh1f7i43Yl1hAonPu7V6WmhAPUdI0/YKnD7qI42h4m7tLaLtU2K9rrb
 RlkPevT13On+uWCdwQrr5xSrzy6/4RkzBxH6j4Cc7fpog6dQ2l/36oUAU
 zGa/l+nGcd1pg3vuwxFg0M9/AUlaZe3YkKrTDha1+7WrSRACKnFsBbh6g
 LY6a4Io4bNAKH1sZAp8Oa/gr0CKU5kjxCT4oAO2q8re2iF1zr4qNOKVp7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="232158553"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="232158553"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 03:55:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="693365914"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 18 Jan 2022 03:55:41 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 13:55:43 +0200
Message-Id: <20220118115544.15116-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220118115544.15116-1-stanislav.lisovskiy@intel.com>
References: <20220118115544.15116-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Introduce new Tile 4 format
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
Cc: m@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This tiling layout uses 4KB tiles in a row-major layout. It has the same
shape as Tile Y at two granularities: 4KB (128B x 32) and 64B (16B x 4). It
only differs from Tile Y at the 256B granularity in between. At this
granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has a shape
of 64B x 8 rows.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Acked-by: Nanley Chery <nanley.g.chery@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 include/uapi/drm/drm_fourcc.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index fc0c1454d275..b73fe6797fc3 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -572,6 +572,17 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
 
+/*
+ * Intel Tile 4 layout
+ *
+ * This is a tiled layout using 4KB tiles in a row-major layout. It has the same
+ * shape as Tile Y at two granularities: 4KB (128B x 32) and 64B (16B x 4). It
+ * only differs from Tile Y at the 256B granularity in between. At this
+ * granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has a shape
+ * of 64B x 8 rows.
+ */
+#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 9)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.24.1.485.gad05a3d8e5

