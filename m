Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6426F814E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 13:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 809FD10E5C8;
	Fri,  5 May 2023 11:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B1210E5C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 11:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683285238; x=1714821238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MQk53vK2noTp4D/t0s3QwPzuNDs9va10+uSyM8ZRwmc=;
 b=jp8cGY0joYjj3K3XtQtmY3ex/E49Pllg5T5FkqIuENH2U0HDA3719IWV
 7zfAJkhpYaUuzqRpy+fx2VccQsxsFI/ZZYo9W4qBdGtw37bxVQkfwv1Bg
 1Bj3lhwHLtpMkrtV3A+1dABh1OGf198vTqHN8diGV1Upwv4DeK0G30tDY
 KvxJY0Tw0YhmCpRhYZPYrHYC9qHC/KyeRTtiKZwp9KNuAf1gBGtU9ZDBZ
 mZg+FBxBCa3Jm9eTlZmAvesHJw/j1OO7iiUYhviYRStydJpoO7X1mFf8O
 AuwDhz83GWDHyxpJ0jqxQQYY/qlDRIuPkOinA8qU+tpVrutRPKnmfRqrP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="338372608"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="338372608"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:13:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="647807632"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="647807632"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:13:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 16:39:17 +0530
Message-Id: <20230505110917.1918957-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Update the DDI_BUF_CTL active
 timeout for ADL-P
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
Cc: lucas.demarchi@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For ADL-P the timeout for DDI_BUF_CTL active is 500usec.
Update the same as per Bspec:55424.

Fixes: 5add4575c298 ("drm/i915/ddi: Align timeout for DDI_BUF_CTL active with Bspec")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: <stable@vger.kernel.org> # v6.3+

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 55f36d9d509c..6d8e4d7a784e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -216,8 +216,11 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_tc(dev_priv, phy))
 			timeout_us = 3000;
+		else if (IS_ALDERLAKE_P(dev_priv))
+			timeout_us = 500;
 		else
 			timeout_us = 1000;
+
 	} else {
 		timeout_us = 500;
 	}
-- 
2.25.1

