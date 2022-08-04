Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B63F589A77
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 12:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBB094B3A;
	Thu,  4 Aug 2022 10:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5BB949E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 10:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659608996; x=1691144996;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q6ky68wkWS4uY9aHrw0XE7CIiJEsqw9Fp4HHuUYr/p0=;
 b=c6M9vKTOj7kSDYEGqvBxHt6HuxRwf23yDHHJiXFoI6RpayUNJ9xGiU8S
 Ki+c2lQzkIrhWnmUafTacOWJ7GB5sMlA72atgWUGUzFmlP4Ti6sAaxi5A
 PA9emf95PITMUkChm3Wbme5DFyyPtxN/3VYOrNs4xk1pd/038NugAEzUE
 jspNjJd+Qj+JFXUiwq3NiDvQ+aZ0TtSQeP9LaisErThB43qLxoRM+oinc
 pxG0tVZRvdZ7/xWwGn4B/4rPtGXUO6QuWlGHaqRcQZgwOLou2mF/9Fpdz
 WDrfWHxgswcKv8/bQggPiTnIUr8UVg2QOrVL2gwqTftqwAClFZX/ivfUY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="291119902"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="291119902"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 03:29:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="553673009"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 03:29:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Aug 2022 15:59:11 +0530
Message-Id: <20220804102911.1346064-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/combo_phy: Add Workaround to avoid
 flicker with HBR3 eDP Panels
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

WA_14014367875 : When Display PHY is configured in continuous
DCC calibration mode, the DCC (duty cycle correction) for the clock
erroneously goes through a state where the DCC code is 0x00 when it is
supposed to be transitioning from 0x10 to 0x0F. This glitch causes a
distortion in the clock, which leads to a bit error. The issue is known
to be causing flickering with eDP HBR3 panels.

The work around configures the DCC in one-time-update mode.
This mode updates the DCC code one time during training and then
it does not change.  This will prevent on-the-fly updates so that the
glitch does not occur.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 64890f39c3cc..1b8bdc47671d 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -242,9 +242,10 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
 
+		/* WA_14014367875 Set DCC calibration mode to Read once*/
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
 				     DCC_MODE_SELECT_MASK,
-				     DCC_MODE_SELECT_CONTINUOSLY);
+				     ~DCC_MODE_SELECT_MASK);
 	}
 
 	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
@@ -366,8 +367,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
 
 			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
+
+			/* WA_14014367875 Set DCC calibration mode to Read once*/
 			val &= ~DCC_MODE_SELECT_MASK;
-			val |= DCC_MODE_SELECT_CONTINUOSLY;
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
 		}
 
-- 
2.25.1

