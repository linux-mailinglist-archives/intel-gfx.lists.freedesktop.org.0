Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AE1650950
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 10:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A629810E23E;
	Mon, 19 Dec 2022 09:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B7210E15B
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 09:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671441884; x=1702977884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wvXjMemvkCpffhSbKGOx8QLmu40UeooCPgUZKnO4GpA=;
 b=jRVbMphtH3Gtso/pEEr+HE8XOyqxU6A2E+jVnZmc0lr2g/tUckJd7kWd
 D6lrMgYOVPv8ni3CVQnAL2BQtOqM9PGaIvdrUa8VnmHmGz3QhClekc/yk
 5aAxEb/Nub3+LHrnacdhAIvKdbPEy2uDa2I7jW1jdT9vpP0N+q7RxbfUl
 yWhlCat2Lb0UarFbRta4mlMefCvwKTRdtZfxr+v4T8NFsuDitw3kzdjqt
 ZwhPcE/1WaEDEpUQZWM7Q9vwMMBLRi9wYpw1lpS9UO/YvCcteOq0yfSHQ
 9W4Qf+U4+QlhT8wURJrPmUr/IT8pcxgUJZilayaqW3tW3lZaJDg/N6sla g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="383652139"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="383652139"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:24:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="719055693"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="719055693"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:24:39 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 10:24:27 +0100
Message-Id: <20221219092428.2515430-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/vlv: fix pixel overlap
 register update
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To update properly bits in the register the mask should be used
to clear old value and then the result should be or-ed with new
value, for such updates there is separate helper intel_de_rmw.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 662bdb656aa304..f5268997a3e172 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -649,23 +649,17 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 	enum port port;
 
 	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
-		u32 temp;
+		u32 temp = intel_dsi->pixel_overlap;
+
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-			for_each_dsi_port(port, intel_dsi->ports) {
-				temp = intel_de_read(dev_priv,
-						     MIPI_CTRL(port));
-				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
-					intel_dsi->pixel_overlap <<
-					BXT_PIXEL_OVERLAP_CNT_SHIFT;
-				intel_de_write(dev_priv, MIPI_CTRL(port),
-					       temp);
-			}
+			for_each_dsi_port(port, intel_dsi->ports)
+				intel_de_rmw(dev_priv, MIPI_CTRL(port),
+					     BXT_PIXEL_OVERLAP_CNT_MASK,
+					     temp << BXT_PIXEL_OVERLAP_CNT_SHIFT);
 		} else {
-			temp = intel_de_read(dev_priv, VLV_CHICKEN_3);
-			temp &= ~PIXEL_OVERLAP_CNT_MASK |
-					intel_dsi->pixel_overlap <<
-					PIXEL_OVERLAP_CNT_SHIFT;
-			intel_de_write(dev_priv, VLV_CHICKEN_3, temp);
+			intel_de_rmw(dev_priv, VLV_CHICKEN_3,
+				     PIXEL_OVERLAP_CNT_MASK,
+				     temp << PIXEL_OVERLAP_CNT_SHIFT);
 		}
 	}
 
-- 
2.34.1

