Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD303639965
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Nov 2022 06:21:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4980D10E188;
	Sun, 27 Nov 2022 05:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1A910E186
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Nov 2022 05:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669526500; x=1701062500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nSDwlW7sqckV3B0XG8QB3MU3YZBD57doNxHVSXfwSJo=;
 b=H21RgAnEwy312zQpctt8/P9d7G0rByvnlDl4Llf1NcyvuZ0hCgk+PW1q
 2EnTDs8M2Ic/ak7dRmG7L9zyH9twFwyHKg2iQDUhWZy8wAOrL/MsERXh7
 p8nDL98hWTN7fAYNKjkWlq6F4Btu9+wTUlh7AlFvhAVv4PbjNRoN1/X47
 GPEJGDEh/lXOPRBYuK5N54mh0JBNJM5XBnUwy8oqDIaiqS4c6rI4RwjR+
 Po+MopRNNtfraf6LP1/yGtfk1xLq347pK8Un3IH280pN4E44/l5kmfMwF
 yWzuc34Iz2gDAklUAOb9+F3iB/L2Tg6396qDprA2L7id4kG2uKBVHbh7B Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="315801840"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="315801840"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="748984450"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="748984450"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Nov 2022 10:52:31 +0530
Message-Id: <20221127052232.3942831-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
References: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ddi: Align timeout for DDI_BUF_CTL
 active with Bspec
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

For Gen12+ wait for 1ms for Combo Phy and 3ms for TC Phy for
DDI_BUF_CTL to be active for TC phy. (Bspec:49190)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0f1ec2a98cc8..9e16db920bf2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -186,6 +186,8 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 				      enum port port)
 {
 	int ret;
+	int timeout_us;
+	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
 	if (DISPLAY_VER(dev_priv) < 10) {
@@ -193,8 +195,17 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
+	if (IS_DG2(dev_priv))
+		timeout_us = 1200;
+	else if (DISPLAY_VER(dev_priv) >= 12 && intel_phy_is_tc(dev_priv, phy))
+		timeout_us = 3000;
+	else if (DISPLAY_VER(dev_priv) >= 12)
+		timeout_us = 1000;
+	else
+		timeout_us = 500;
+
 	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
-			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
+			  DDI_BUF_IS_IDLE), timeout_us, 10, 10);
 
 	if (ret)
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
-- 
2.25.1

