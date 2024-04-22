Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675CB8AC457
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CC91127E8;
	Mon, 22 Apr 2024 06:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BOkoa8vL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1BE01127E8;
 Mon, 22 Apr 2024 06:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768013; x=1745304013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmZXSfo+2gUBO8H9cYskK+TmOFyBh8iX7fIo7R3e+CA=;
 b=BOkoa8vLIXWGBSqo+ZYXU4H4ZgZXxRZjWvVAS++riUi0Ag8uYswxndk5
 f9+Dh2/Yh8G1o0jnOlSXViafs2N2Sbu9D+JO5jSBm7YJnIUCJ8+BEXXKC
 DAo9P9DAKR4aLgwbsHN1EvqDqQ/yKUjGI5KpMy8DXjHKdDoSHddujjw2w
 lCVFBMc/EUdqhaBRjIyxEeE51cudDDvprVS+NmDX/0ez3WdfInHW6kfbt
 VBCrQXC92RUo1SNqqorXZS6ss0OshMDP2QgCowfqy/OVaqPzHuckjYJ13
 A6De2orJGtF5BP6+jcR+JERf62lPTn74F0COlmaCTIDyAdRCUsmG16chs Q==;
X-CSE-ConnectionGUID: yaFVtD9ESQq06bAetR8dLg==
X-CSE-MsgGUID: uYCvXik+RPmNvqwkbRNlvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208565"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208565"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:13 -0700
X-CSE-ConnectionGUID: kAFF2taOSP2wQC8ICam6kg==
X-CSE-MsgGUID: uZeiQwMpRu+kWhNFe4ekvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896392"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:11 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 05/19] drm/i915/xe2hpd: Properly disable power in port A
Date: Mon, 22 Apr 2024 12:10:24 +0530
Message-Id: <20240422064038.1451579-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: José Roberto de Souza <jose.souza@intel.com>

Xe2_HPD has a different value to power down port A.

BSpec: 65450
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5cf5d9b59708..33a612892d94 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2900,17 +2900,28 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 		intel_cx0pll_enable(encoder, crtc_state);
 }
 
+static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (intel_encoder_is_c10phy(encoder))
+		return CX0_P2PG_STATE_DISABLE;
+
+	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+		return CX0_P2PG_STATE_DISABLE;
+
+	return CX0_P4PG_STATE_DISABLE;
+}
+
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
-	bool is_c10 = intel_encoder_is_c10phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    is_c10 ? CX0_P2PG_STATE_DISABLE :
-					    CX0_P4PG_STATE_DISABLE);
+					    cx0_power_control_disable_val(encoder));
 
 	/*
 	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
-- 
2.25.1

