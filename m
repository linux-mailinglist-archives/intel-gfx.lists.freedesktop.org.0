Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C3A645CF1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 15:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1C410E109;
	Wed,  7 Dec 2022 14:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9D610E109
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 14:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670424813; x=1701960813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DZzBVWkhapROOCdN7EL9Mg+mbswx5RRk1qIZKlOgKhg=;
 b=UZcCJhz2zOp12kQ1gjwXz8P72PijEQdDNknZJ+44wZq6AHUfUqZL199a
 1SmjPLrQp9+Ut5B8pi6fOJNx0tmEOIYEQLA7rmVOhwKLzIjliMjT/+XfA
 GhdOAvLdcb4xM8P7I6Wdd35HrnIMUR1JncjIIetayAX5FisU8NY6eZrPx
 pEZHDB3Cu7Su5zP0jJY45TXIv1OZpFTrpBP2eBXT3SeB9ruWDzpaDSfQm
 T0IgDm8ATClaogcCLxYE0PEk2O5aTA1gQy0nznPEXXuX+puPiw5JXEyq5
 NwPXMSrBpR0mnX7RRwN8Rli2NwN1gnncL+skxabjj1Qa+5LqpuNuEoaJE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="314554399"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="314554399"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:53:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715209678"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715209678"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:53:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 20:24:36 +0530
Message-Id: <20221207145436.1510625-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201041019.533830-1-ankit.k.nautiyal@intel.com>
References: <20221201041019.533830-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/ddi: Align timeout for
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

v2: Minor refactoring for better readability.

v3: Rebased and retained the order of checking platforms. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f9a2410fc4c..c40302486b0d 100644
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
 
+	if (IS_DG2(dev_priv)) {
+		timeout_us = 1200;
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
+		if (intel_phy_is_tc(dev_priv, phy))
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

