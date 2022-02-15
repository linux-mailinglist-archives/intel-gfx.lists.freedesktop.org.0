Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A21E4B6322
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 06:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602E410E32D;
	Tue, 15 Feb 2022 05:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABA610E31D;
 Tue, 15 Feb 2022 05:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644904311; x=1676440311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wp6YvS1jHm1j7g6EtLEki2qX31mXR8EVNk3lpFta4UE=;
 b=NtX2CmkhYzk3lHFYQRjJ0TFYTOG73xQJZjO78NBcaf7GzyG0+37a+/48
 XIsl/JXsRbSql44BMl0qTGFwOFv3uaprMuk6HtoJmGpwixBe1xGiUEWFM
 RA+kymZS5qntJjDF3IoNLX5Gt58nZL0FMQTHBziib/rBP1BpaVNvfJodc
 MIPk8vS4iz6YgoiwkMgLi2yvq8sFhgUqb/7P5sj9DKvKBPaj16E5wbd1C
 cvxnW504zXcTa57CuOZBCDpkI7zniBsu3HlviL/iUoA8GKOah4okDNkSv
 rxmE7V3rccwZF+vdBnSY60SdhWf6C9y5BfeQwBSbf4CeBgsxpQrAtYcKv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="233802248"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="233802248"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 21:51:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="544109315"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 21:51:48 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Tue, 15 Feb 2022 11:21:54 +0530
Message-Id: <20220215055154.15363-4-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220215055154.15363-1-ramalingam.c@intel.com>
References: <20220215055154.15363-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Fix for PHY_MISC_TC1 offset
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

From: Jouni Högander <jouni.hogander@intel.com>

Currently ICL_PHY_MISC macro is returning offset 0x64C10 for PHY_E
port. Correct offset is 0x64C14.

Fix this by handling PHY_E port seprately.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index c60575cb5368..f08061c748b3 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -32,7 +32,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		if (!intel_phy_is_snps(i915, phy))
 			continue;
 
-		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
+		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
 			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
 				phy);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4d12abb2d7ff..354c25f483cb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9559,8 +9559,10 @@ enum skl_power_gate {
 
 #define _ICL_PHY_MISC_A		0x64C00
 #define _ICL_PHY_MISC_B		0x64C04
-#define ICL_PHY_MISC(port)	_MMIO_PORT(port, _ICL_PHY_MISC_A, \
-						 _ICL_PHY_MISC_B)
+#define _DG2_PHY_MISC_TC1	0x64C14 /* TC1="PHY E" but offset as if "PHY F" */
+#define ICL_PHY_MISC(port)	_MMIO_PORT(port, _ICL_PHY_MISC_A, _ICL_PHY_MISC_B)
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))
 #define  ICL_PHY_MISC_MUX_DDID			(1 << 28)
 #define  ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN	(1 << 23)
 #define  DG2_PHY_DP_TX_ACK_MASK			REG_GENMASK(23, 20)
-- 
2.20.1

