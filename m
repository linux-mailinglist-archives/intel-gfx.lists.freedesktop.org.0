Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96608841162
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72A4112A6B;
	Mon, 29 Jan 2024 17:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092B3112A62
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550932; x=1738086932;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zv8S0p5juj9Ckv9dhV/2P1eTcAzFQH3I+1COUqWcEDk=;
 b=R7jZWLHQrgYOlTyLgUiiPeDBqfRCG0UT7Er2a/LH4wdIFQuXTWP1RuZg
 0PdsXzjjKIiLLOkTyfYUWDqB9sIsOWt9DPYaebVCu4uZc/DG5S9W6ntva
 MK7chMc9luRs8kgtE5T6hPqNsEXyyhPTYe1adfqaNz8R6EAFeHX7Dqx3W
 KO6rEfVg1+akKnWwSmzS877BAr8nEZbhNmgEcNUeBmB3ddlcEUwrstRGl
 /9ZmQtbP17NSTiz2SRGy+NzLfENoE+R0hqXmqGxPfi56vm62MOX2GH820
 Xbfs3K2Cwdd8ortOJCcODftxZzrNL73J/S8Idz1DDfwdujmhPAUYWL1zi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407809"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407809"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157890"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157890"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:21 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA
Date: Mon, 29 Jan 2024 19:55:32 +0200
Message-Id: <20240129175533.904590-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129175533.904590-1-imre.deak@intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
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

Disable the workaround inserting an SF symbol between the last DSC EOC
symbol and the subsequent BS symbol. The WA is enabled by default -
based on the register's reset value - and Bspec requires disabling it
explicitly. Bspec doesn't provide an actual WA ID for this.

Bspec: 50054, 65448, 68849

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0f4cd634d7dce..e0b75aa18ae33 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -428,6 +428,15 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
+		u32 set = 0;
+
+		intel_de_rmw(dev_priv,
+			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+			     clear, set);
+	}
+
 	val = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
 	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b43d1145fa22f..9873daa16c6a1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4620,6 +4620,7 @@
 #define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
-- 
2.39.2

