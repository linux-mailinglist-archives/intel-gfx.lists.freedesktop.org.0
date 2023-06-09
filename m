Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0949D7299E7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 14:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C00E10E693;
	Fri,  9 Jun 2023 12:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E55E10E693
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686313629; x=1717849629;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TEG62EAb2O7zrRm1lEPFssNE+s2zBzU7pto+fEvy+zY=;
 b=dX8VmwAXpX85O99rdnJUtvY8iTicD4sSaTVMgDpJNrVsNmOcR8DgOPaU
 sASxkJbd7MSiRrxI1uDxFGadZjXdnTc7rhfiUjyA8j9H0CvQ2N4l95NSp
 4m3BAWAv3MktmRhBNr8+JAB6NeCmrhJTQqEJxiBCq7ADVvE5s363iWcKV
 6sV2i9zGjwuoj8+0IfpKKoVvFooyNxUSLkwGhoHkvn4g1Zj3vgbqN5Cyq
 5uS4O3ixv5pY7MkJKRUcd4VlRZZI4YZjVPihhrQsxGC6Uiac89fjHreH5
 DmMJpKh+RD/0BGuDXc1cbdRfHakHIvU5svf35AeRQ/JnSrOqvTrl/v9s9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="385946634"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; 
 d="scan'208,223";a="385946634"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:27:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="823053760"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; 
 d="scan'208,223";a="823053760"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jun 2023 05:27:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 15:21:30 +0300
Message-Id: <20230609122130.69794-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Cleanup usage of phy lane reset
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

From PICA message bus we wait for acknowledgment from
read/write commands. In case of an error, we reset the
bus for the next command.

Current implementation ends up resetting message bus twice
in cases where error is not the timeout. Since, we only need
to reset message bus once, let's move reset to corresponding
timeout error and drop the excess reset function calls from
read/write functions.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0600fdcd06ef..f235df5646ed 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -116,6 +116,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
+		intel_cx0_bus_reset(i915, port, lane);
 		return -ETIMEDOUT;
 	}
 
@@ -158,10 +159,8 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 		       XELPDP_PORT_M2P_ADDRESS(addr));
 
 	ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_READ_ACK, lane, &val);
-	if (ack < 0) {
-		intel_cx0_bus_reset(i915, port, lane);
+	if (ack < 0)
 		return ack;
-	}
 
 	intel_clear_response_ready_flag(i915, port, lane);
 
@@ -202,6 +201,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 				  int lane, u16 addr, u8 data, bool committed)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
+	int ack;
 	u32 val;
 
 	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
@@ -230,10 +230,9 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 	}
 
 	if (committed) {
-		if (intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val) < 0) {
-			intel_cx0_bus_reset(i915, port, lane);
-			return -EINVAL;
-		}
+		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
+		if (ack < 0)
+			return ack;
 	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)) &
 		    XELPDP_PORT_P2M_ERROR_SET)) {
 		drm_dbg_kms(&i915->drm,
-- 
2.34.1

