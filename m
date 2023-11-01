Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CEC7DDF6B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D5D10E6B7;
	Wed,  1 Nov 2023 10:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B522510E6B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698834664; x=1730370664;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lJ5GfM7GKzF3FTy5FSEC6iU2Xeo5KWiueUdLQ8DWwwI=;
 b=gs/zLgFlGiH9yStwo2Ich4ThPWKfhIj7RE5IutJWbMoautNzNB0YdNi5
 QfPhahVD8xC+H2Gh3vlP785I6kjBgg4xnJTtfJikWJFEXg74x5G1C5cEc
 SsWWDBIe6ROKN2MiyGGzSbhLr/fmTDaMB9czPpVHO99bjMLMV1QYBmRJ9
 QOr9Qm3bhEJFNW/dA9n8vu6KRbmS4Sr8K2x4jS/7Dj2NfOni1FTeQUfg+
 B++kl/rkLeAjHXYGm7ZuvHp+mNTZyxI6u6D8lWvI3sMyS61v/9xZw66O0
 pJPUIROG4EXJM7zJRH/h6xV/hUH9bLTDYfJzAsnegHRPO+QVjl6xv8cs5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="367817684"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="367817684"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:31:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="764541450"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="764541450"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 01 Nov 2023 03:31:02 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:31:01 +0200
Message-Id: <20231101103101.156505-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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

It is possible that sticky bits or error bits are left on
message bus status register. Reading and then writing the
value back to messagebus status register clears all possible
sticky bits and errors.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b2ad4c6172f6..f439f0c7b400 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -195,6 +195,13 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
+	/*
+	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
+	 * any error sticky bits set from previous transactions
+	 */
+	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);
+
 	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       XELPDP_PORT_M2P_COMMAND_READ |
@@ -262,6 +269,13 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
+	/*
+	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
+	 * any error sticky bits set from previous transactions
+	 */
+	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);
+
 	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
-- 
2.34.1

