Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCAF6D3E8E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 10:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EE110E197;
	Mon,  3 Apr 2023 08:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507FF10E197
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 08:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680508974; x=1712044974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H/wzy8JA5TTCfZWXcEre1Elk4eulinSsZUymxFSGa4o=;
 b=I0G29uOJKj2aEqqsgB2F2tx65vaIOk3WSodYbnrGrZJnCimY3lCMwxxP
 l88I0+bhWxd3SHdM+Dyfd/3pHch8rITZ725wLEosoiecq5wKLJ8TmBGlf
 E4bj7fZueK58XJ5kIkfXgOeqojOFz78/XpKd2sNyTxlcihMvS83LUP3dw
 4j5JUFxhiug8UbHWNlxy6DHnb/vUsMXP8d1pZrmoMJiprZCS+UGIs4SL1
 lxKkdtezgrJ5BNJIEnw0t2Efa5xP7piimSMSoQJuJ6llzvp9evlkPGodF
 HGF2ywiLUiiT4JTkvbBxuHAJFXXscyGxHniV8e4cSHqoWt4D9DSf+fTpA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="404591130"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="404591130"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 01:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="750407605"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="750407605"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 03 Apr 2023 01:02:34 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Apr 2023 13:31:54 +0530
Message-Id: <20230403080154.1239873-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Increase AUX timeout for
 Type-C
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

Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
Workaround: Increase the timeout.

WA: 14017271110
Bspec: 55480

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937..357617b9b725 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -252,6 +252,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   bool timeout_expected)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 
 	/*
@@ -264,6 +265,20 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 		return;
 	}
 
+	/*
+	 * WA: 14017271110
+	 * Type-C Phy are taking longer than expected for AUX IO Power Enabling.
+	 * Increase timeout to 500ms.
+	 */
+	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
+		if (intel_de_wait_for_set(dev_priv, regs->driver,
+					  HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
+			drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
+				    intel_power_well_name(power_well));
+			return;
+		}
+	}
+
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
 				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
-- 
2.25.1

