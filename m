Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94BC63E8C4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 05:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6638510E0A5;
	Thu,  1 Dec 2022 04:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4212E10E0A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 04:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669867763; x=1701403763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F26BpplY5opaz+SsTP5YQfQS49KFu/41fQyyoWfp9nk=;
 b=Ev2SHrQMhaIq9jSoaQmZsZjFEOmuYPFNvaDeEkIIOmpFwf7czryq07iP
 eP352c7A1M9Z8BjGx0QUgc2NmyNErPiCScRNL1hnkDCElPIrob0u1QhuP
 65FA+g4E3YCokLlaugVX7N4MTSKCW1F5VD1NuHQ6DrAjpXXCAgzAUdiv0
 sSkEsSKaqYVNO/1l+rHlmvCJkyfoNuuGZ0gvssI2g/hFe/PsAHCzYaiaj
 uzy9RyCEejoyI2miFf6rY8jro7gtiDmVDwaUJXaJo11vkTbLfbehLUUTT
 E74S4vcNRDm1RjQllLHlQiJCMPJXx/bPA0mnl/v06w2lj0RZqiL3orzQQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377745868"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377745868"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 20:09:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750629291"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="750629291"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 20:09:20 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Dec 2022 09:40:19 +0530
Message-Id: <20221201041019.533830-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221127052232.3942831-2-ankit.k.nautiyal@intel.com>
References: <20221127052232.3942831-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/ddi: Align timeout for
 DDI_BUF_CTL active with Bspec
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

v2: Minor refactoring for better readability. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f9a2410fc4c..c916bd3707c2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -185,6 +185,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 				      enum port port)
 {
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+	int timeout_us;
 	int ret;
 
 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
@@ -193,8 +195,19 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		if (IS_DG2(dev_priv))
+			timeout_us = 1200;
+		else if (intel_phy_is_tc(dev_priv, phy))
+			timeout_us = 3000;
+		else
+			timeout_us = 1000;
+	} else {
+		timeout_us = 500;
+	}
+
 	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
-			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
+			  DDI_BUF_IS_IDLE), timeout_us, 10, 10);
 
 	if (ret)
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
-- 
2.25.1

