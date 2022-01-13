Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF2A48DD19
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:47:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F1310E4E3;
	Thu, 13 Jan 2022 17:47:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6584610E4E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 17:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642096030; x=1673632030;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ycShh+m0FdhlSFegjmSDwT8nCfNx8A+fGs9+XEBxjbk=;
 b=DhsQhHEK4/5VNwn3VondK4rvDWex6sarqu1bBimqQfKrSFKKE23n+ex/
 pomUvxB344SA3GwwKBYGOhRFxhGz73clrNHUmJ6nEPh7VouVZgVPH8S2M
 5rL5kyDuw9gpQwcmgUmcCRfLTIChywPpbsLba6StwMTp229qWKbtznjvn
 c96cefaNUkBQjftRAjWuOMOLey2t7AkHt38eWaJQuC0aG+cbdrccz52ic
 TezFQe7MvccKHvJYOnXkwsKZt8vw7xaZpCk/2M1A8gWCP03OSwOXvjzYt
 U8vBGsjxXqEb4d9TIADqXigNlAT9GsAvFZFxIktRdhG2edoc0CDUPhrPP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224761244"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224761244"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:47:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="623933383"
Received: from unknown (HELO josouza-mobl2.intel.com) ([10.230.19.131])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:46:58 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 09:48:26 -0800
Message-Id: <20220113174826.50272-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/adlp: Implement new step in
 the TC voltage swing prog sequence
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TC voltage swing programming sequence was updated with a new step.

BSpec: 54956
Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 22 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  8 ++++++--
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6ee0f77b79274..4e93eac926a56 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1300,6 +1300,28 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		intel_de_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port),
 			     DKL_TX_DP20BITMODE, 0);
+
+		if (IS_ALDERLAKE_P(dev_priv)) {
+			u32 val;
+
+			if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+				if (ln == 0) {
+					val = DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(0);
+					val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(2);
+				} else {
+					val = DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(3);
+					val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(3);
+				}
+			} else {
+				val = DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(0);
+				val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(0);
+			}
+
+			intel_de_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port),
+				     DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK |
+				     DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
+				     val);
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7c4013a0db615..ef6bc81800738 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10085,8 +10085,12 @@ enum skl_power_gate {
 						     _DKL_PHY2_BASE) + \
 						     _DKL_TX_DPCNTL1)
 
-#define _DKL_TX_DPCNTL2				0x2C8
-#define  DKL_TX_DP20BITMODE				(1 << 2)
+#define _DKL_TX_DPCNTL2					0x2C8
+#define  DKL_TX_DP20BITMODE				REG_BIT(2)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK	REG_GENMASK(4, 3)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
 #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
 						     _DKL_PHY1_BASE, \
 						     _DKL_PHY2_BASE) + \
-- 
2.34.1

