Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB15A61EBB7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:20:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B7410E20F;
	Mon,  7 Nov 2022 07:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C3F10E1F6;
 Mon,  7 Nov 2022 07:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667805629; x=1699341629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrqckHE4kmVkDY5EgavL9kTx8MS41QtLBSOS3x+/SDE=;
 b=XUnXJ+IFYUM7G/yJgPkG0mrquuRJrxEuMuPBCRElMHuWjF6eUoLFAD4n
 f8a9Kdb8aHdCgtbovx8UBvvxHtgoRfZPDr6QPkeCY+uBFXDDXzvRmpKqC
 u8ud1DmxA7fU4rnxlObeiboa9MhvbPnAc4ctY4tWsjqojGyAY4J7k+NMf
 LbXFoTt2leiLkQ6RhkVEB876iVmYfDYBZsFInluxsCA6hr3yQ91BKPDwE
 GtsmuRKDIwubS83tc0qWa3owvDKWdUyWnV4b6KTir/ymy5sQ1eko5O5n6
 vNegxl85J65DZSQOYvRDTkwMRzHrMIcozquX7Buu1wi/XgZPlQFvcGL92 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="372463359"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="372463359"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:20:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="704767269"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="704767269"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:20:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:50:38 +0530
Message-Id: <20221107072045.628895-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
References: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 08/15] drm/i915/mtl: Add HDMI2.1 bits in
 PORT_BUF_CTL_1
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

This patch adds bits related to HDMI2.1 in PORT_BUF_CTL_1 that
is needed to be programmed for D2D Interface for Ports in
IO expansion Die.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
index dfe156141d73..efba0ce90229 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
@@ -66,14 +66,22 @@
 							 [PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))
 
 #define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port))
+#define  XELPDP_PORT_BUF_D2D_LINK_ENABLE		REG_BIT(29)
+#define  XELPDP_PORT_BUF_D2D_LINK_STATE			REG_BIT(28)
 #define  XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
 #define  XELPDP_PORT_REVERSAL				REG_BIT(16)
+#define  XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK		REG_GENMASK(19, 18)
+#define  XELPDP_PORT_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 0)
+#define  XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)
+#define  XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)
 
+#define  XELPDP_PORT_BUF_PHY_IDLE			REG_BIT(7)
 #define  XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
 #define  XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
 #define  XELPDP_TCSS_POWER_STATE			REG_BIT(4)
 #define  XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
 #define  XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+#define  XELPDP_PORT_HDMI_FRL_SHFTR_EN			REG_BIT(0)
 
 #define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
 #define  XELPDP_LANE0_PIPE_RESET			REG_BIT(31)
-- 
2.25.1

