Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DD1995A20
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7460710E60C;
	Tue,  8 Oct 2024 22:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRBtYYqU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BF210E603;
 Tue,  8 Oct 2024 22:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427069; x=1759963069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ezuk9ZVixS0Bdwk+/pYM8vQ6lsIZj7vxUNdV2OyKVBU=;
 b=JRBtYYqUjOjrvTpTOZGwl8AYImkK/zLGcZw99hKZzRYAZngqEBAzJh7x
 9MhrRyol9aGD9GKYc+rSQ+aFTpwkBtY6ixyiMa7iVD9AG9xgr66APFEyH
 vgKzR/3r/IFymPimml9HsSl1nQ/iLXNpV1+z/SMdhkEZlHceDxfjYpK5r
 GV/o3xfLnDDnLzapaF3Y66xZ8Q+lK4aIFgjSd8Hwz/xaY3Ja6e3aOWXTw
 YpwASMD9+WYRGpfrjvcifiqFjkcTrosF4qfY47m1j1YTaojH+mLp2vjl3
 siDHhwSUCbr8WgANrYKnMshecPi9P7fQZVyDm36NpaU1+YUmEKZUEyQ/d Q==;
X-CSE-ConnectionGUID: 2A71NvSLQqKf+oAK7ScVJA==
X-CSE-MsgGUID: bOlRj3FSQYegh7rb/S/wfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037295"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037295"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:49 -0700
X-CSE-ConnectionGUID: TJMXs95XTXqacxZOtDjrfw==
X-CSE-MsgGUID: p62INz4bRYW52m4quLdxaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811846"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose HDCP_LINE_REKEY bit
Date: Tue,  8 Oct 2024 15:37:37 -0700
Message-ID: <20241008223741.82790-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

DISPLAY_VER() >= 30 has the HDCP_LINE_REKEY bit redefined from
bit 12 to bit 14. Create a macro to choose the correct bit based
on DISPLAY_VER().

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..e9b0414590ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
 				     0, HDCP_LINE_REKEY_DISABLE);
 		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
-			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
+			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER) ||
+			 DISPLAY_VER(display) >= 30)
 			intel_de_rmw(display,
 				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
-				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d30459f8d1cb..da65500cd0c8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3832,7 +3832,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
-#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)	(DISPLAY_VER(display) >= 30 ? REG_BIT(15) : REG_BIT(12))
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.45.0

