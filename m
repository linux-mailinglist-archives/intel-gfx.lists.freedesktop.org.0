Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D16B999565
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF26010EA07;
	Thu, 10 Oct 2024 22:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDDRTa4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DDD10E9F8;
 Thu, 10 Oct 2024 22:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600202; x=1760136202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NzDrpUDzDv1a1yA5bRgXVMX1lLIzsq5xdUniwBRp9tE=;
 b=ZDDRTa4tkZoKNQ3UWY6C7zXtm+L2tr13/VKjq03yHHeeTeaFNDRYmgZM
 NnGmDpdpvMnNhNF7ZzLaG7ymybMrXOcckf3FyaDGhfjlL+ZDWc4sPG8mU
 o34ehKYzbfM+4VHC+E2bJvcqdZthPeN6yoPZFu0BN3qB+3eDm6FjVkRYT
 jji3J8fialReKCdHdnxonIC+8wbOr7o2R7O7Y3eaMjOhupaNUpj9l+0Oj
 P3LNH0VF8S4LHc2TnCrk0wdMIKM108Lz1FeY8gByhfssPMbe/I8GgaUvA
 8C0iRKlY5QajYLG5Ia6kuhYApVr8zXAPpe1noFtWCukU7GqUii8nEPG9y Q==;
X-CSE-ConnectionGUID: Mc0S+WqQR4SIG4gkKpPsbA==
X-CSE-MsgGUID: ItgMI3TlRquKEe5Q1jnTtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380872"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380872"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:22 -0700
X-CSE-ConnectionGUID: W446wDBKQMeDX83+dCGwnQ==
X-CSE-MsgGUID: 9O4DABmHQSS+UKBycd6/Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732051"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:21 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v2 06/10] drm/i915/xe3lpd: Include hblank restriction for
 xe3lpd
Date: Thu, 10 Oct 2024 15:43:07 -0700
Message-ID: <20241010224311.50133-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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

hblank restriction now includes all of xe3.

v2: add additional definition instead of function, commit message typo
fix and update.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
 drivers/gpu/drm/i915/i915_reg.h           | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..46d5019499a8 100644
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
+				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d30459f8d1cb..fc30e0056b07 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3833,6 +3833,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
 #define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
+#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.45.0

