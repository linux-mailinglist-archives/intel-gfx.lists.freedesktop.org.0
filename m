Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B366553BE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 19:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B28310E1D2;
	Fri, 23 Dec 2022 18:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DE710E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 18:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671821851; x=1703357851;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7ilzjziaIfp1/ogV8Zimjjy55DxnO9ZVgDINHQn51QU=;
 b=Jy0oNcD1VOzMzDJlH/IZTo3qDpPOXuE/sI3Bz+TAfMAXhxzvmQCFH7hZ
 yYz7MNvHmiiTKiA/HP3rcwBsK1BLg4HmnPPrUFWLuDBn+IeRdyxRXaOq2
 daO+NQbqN/OtCoXu4nUvuER/cVpqZhSRX7Hqy3T5AiptWkfswWfVm0heb
 0lGFyGdwozJs1Hu0Z7YWj/HbBzV6Jyheaiba8LRylG5wz1TIEyNjFo61Z
 Pstd8yidIJ5sIs9Dz4ODB9GCR8feqQs2eMLemogvykIDowzepKNoF6gQc
 kSzloTbvn8aMuuAXdvkjRDad7V+jFoSWfuH3QqxTQTnsZtQ8gw2o9o0mu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="382627230"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="382627230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 10:57:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="715544151"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="715544151"
Received: from cmoala-mobl1.ger.corp.intel.com (HELO kveik.ger.corp.intel.com)
 ([10.252.62.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 10:57:29 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Dec 2022 20:57:19 +0200
Message-Id: <20221223185719.56565-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: update src and dst scaler limits for
 display ver 12 and 13
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

The bspec has been updated and now display versions 12 and 13 support
source width up to 5120 pixels, source height up to 8192 lines,
destination width up to 8192 and destination height up to 8192.

Update the code accordingly.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 01e881293612..473d53610b92 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 #define ICL_MAX_SRC_H 4096
 #define ICL_MAX_DST_W 5120
 #define ICL_MAX_DST_H 4096
+#define TGL_MAX_SRC_W 5120
+#define TGL_MAX_SRC_H 8192
+#define TGL_MAX_DST_W 8192
+#define TGL_MAX_DST_H 8192
 #define MTL_MAX_SRC_W 4096
 #define MTL_MAX_SRC_H 8192
 #define MTL_MAX_DST_W 8192
@@ -173,11 +177,16 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		max_src_h = SKL_MAX_SRC_H;
 		max_dst_w = SKL_MAX_DST_W;
 		max_dst_h = SKL_MAX_DST_H;
-	} else if (DISPLAY_VER(dev_priv) < 14) {
+	} else if (DISPLAY_VER(dev_priv) < 12) {
 		max_src_w = ICL_MAX_SRC_W;
 		max_src_h = ICL_MAX_SRC_H;
 		max_dst_w = ICL_MAX_DST_W;
 		max_dst_h = ICL_MAX_DST_H;
+	} else if (DISPLAY_VER(dev_priv) < 14) {
+		max_src_w = TGL_MAX_SRC_W;
+		max_src_h = TGL_MAX_SRC_H;
+		max_dst_w = TGL_MAX_DST_W;
+		max_dst_h = TGL_MAX_DST_H;
 	} else {
 		max_src_w = MTL_MAX_SRC_W;
 		max_src_h = MTL_MAX_SRC_H;
-- 
2.39.0

