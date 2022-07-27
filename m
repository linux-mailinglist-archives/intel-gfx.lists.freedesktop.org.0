Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3543D582C54
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 18:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA559BC267;
	Wed, 27 Jul 2022 16:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A22BBBFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658940328; x=1690476328;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cIr34vlKPG+Sa7iYWNFXWrGQLmmLQSUr+IX6+xFlPKE=;
 b=JaSOC5+nldCPizA65BW+tgQ4KbQuOcgrZbUDySfsZd/NKxvBeezibk4P
 BsHEl+BIVqcjE6aXtoll9sS8tXXmW49LqItkZ+TYrXl5HjwZF9apvrZ2u
 iGVAAOUOaXx/IIq6RyNmBuAb/a9qgpTFuMTPutWhlumx1obl//V1uauIY
 OJ23UEftLmYng3jqiA76Jl/CB6jUsUO+zxnpxjEa3rnctquyPIT1U9hBF
 AnQouxZyEbh9MX0nFlTbz8u3svPdjdgBKXFpN11eGEoW3/poikLiAzPF8
 Cb4yuRJDOhwS89HBEJdV3yurUZYsHCkwnpGBX3HppahF8ReHllepuPDns Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271325475"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271325475"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:45:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="633271841"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:45:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 19:45:23 +0300
Message-Id: <20220727164523.1621361-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220727164523.1621361-1-imre.deak@intel.com>
References: <20220727164523.1621361-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/d13: Add Wa_16015201720 disabling
 clock gating for PIPEDMC-A/B
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

Add a workaround making sure that PIPEDMC-A/B is enabled when the
firmware needs these on D13 platforms to save/restore the registers
backed by the PW_1 and PW_A power wells.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 7 +++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 22f65a9968c6a..13aaa3247a5a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1615,6 +1615,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
 			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
 
+	/* Wa_16015201720:adl-p,dg2 */
+	if (DISPLAY_VER(dev_priv) == 13) {
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_A),
+			     0, PIPEDMC_GATING_DIS);
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_B),
+			     0, PIPEDMC_GATING_DIS);
+	}
+
 	/* 1. Enable PCH reset handshake. */
 	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3168d7007e101..bf5c39d9f9530 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1916,6 +1916,13 @@
 #define CLKGATE_DIS_PSL(pipe) \
 	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_A, _CLKGATE_DIS_PSL_B)
 
+#define _CLKGATE_DIS_PSL_EXT_A		0x4654C
+#define _CLKGATE_DIS_PSL_EXT_B		0x46550
+#define   PIPEDMC_GATING_DIS		REG_BIT(12)
+
+#define CLKGATE_DIS_PSL_EXT(pipe) \
+	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_EXT_A, _CLKGATE_DIS_PSL_EXT_B)
+
 /*
  * Display engine regs
  */
-- 
2.34.1

