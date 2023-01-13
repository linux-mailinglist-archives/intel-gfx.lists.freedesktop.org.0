Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759ED6695CE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 12:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB4D10E9EF;
	Fri, 13 Jan 2023 11:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2ADD10E9F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 11:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673610023; x=1705146023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iqGUpffcZq9kygAOBqahNf3As8ovv0GMIH50Yd6Mxos=;
 b=NT5vFrbtuJOGai7dEYpHBGeD3sN9rB1sur8idjpxJTq4zHqPKMecTDSl
 onbpdxLp81jGCsyqjwyhrn+hFwf5jOD3ZMycHTSOhXreN5asOx8Jq6gPO
 hSw9hMgsp2wEl0cIummbKCVoTx2bsyVmX68TuDerTHpvJCFkj1L8JBkxv
 eL9y/oEhm7p6dz0rVYn44+KCSq1jPO9PFjobEk2uprhZ3BjsGgH2yb+7/
 4R6XF78pRjXNvtwPaaOb+fjVZ+/5dg0VHcPKek/G+lWOShoPZ1fJZOwi1
 7qomCWwylYYXLmcR8F3X0AP8E7/UmqoEtsrpoAiUus4dERMPmLOBgIvMN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="351209091"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="351209091"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 03:40:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="765990197"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="765990197"
Received: from bwerner-mobl.ger.corp.intel.com (HELO kveik.ger.corp.intel.com)
 ([10.252.39.116])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 03:40:19 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Jan 2023 13:39:05 +0200
Message-Id: <20230113113905.130405-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: update src and dst scaler limits
 for display ver 12 and 13
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

BSpec: 50441
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:
   * Added Bspec tag


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

