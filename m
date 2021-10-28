Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D65243F34D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 01:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224746E849;
	Thu, 28 Oct 2021 22:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BCB46E849
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 22:59:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230397973"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="230397973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 15:58:37 -0700
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="495540948"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 15:58:36 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu, 28 Oct 2021 16:04:49 -0700
Message-Id: <20211028230449.115832-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Implement workaround 16013190616
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

New workaround added to specification, requiring bit 15 of
GEN8_CHICKEN_DCPR_1 to be programed before power well 1 is enabled.

BSpec: 54369
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h                    | 7 ++++---
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6637760d24e0c..344e3d6967020 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -435,6 +435,11 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 
 		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
 						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
+
+		/* Wa_16013190616:adlp */
+		if (IS_ALDERLAKE_P(dev_priv) && pg == SKL_PG1)
+			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0, DISABLE_FLR_SRC);
+
 		/*
 		 * For PW1 we have to wait both for the PW0/PG0 fuse state
 		 * before enabling the power well and PW1/PG1's own fuse
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fd58757e846a6..541c16aee90da 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8310,9 +8310,10 @@ enum {
 #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
 
 #define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
-#define   SKL_SELECT_ALTERNATE_DC_EXIT	(1 << 30)
-#define   ICL_DELAY_PMRSP		(1 << 22)
-#define   MASK_WAKEMEM			(1 << 13)
+#define   SKL_SELECT_ALTERNATE_DC_EXIT	REG_BIT(30)
+#define   ICL_DELAY_PMRSP		REG_BIT(22)
+#define   DISABLE_FLR_SRC		REG_BIT(15)
+#define   MASK_WAKEMEM			REG_BIT(13)
 
 #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
 #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
-- 
2.33.1

