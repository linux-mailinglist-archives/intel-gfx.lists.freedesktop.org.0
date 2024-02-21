Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D9D85E71D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6550F10E7C7;
	Wed, 21 Feb 2024 19:20:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYDJzhs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A35610E224
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708543215; x=1740079215;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cSGcTa8vKVMzdk7B6JUtM2yJKAKcJsAbd7OHiiPjuFQ=;
 b=DYDJzhs8x/nohgeNmwZQ1l/YXN1TcsNKTuHTSp83julin/y6NHJvr1H2
 +vuFh+EROinQfI4iV4pHRzsWuK8qxvap1LniU2jDlJWJMgyXfaoseyeXp
 XxOw1usi4RHIK4xw8eEBJQtTJBL4OUixuAsCl8zb59KQOU1ljedLyzp/2
 SCZtuu4qO1yp1xPGQl0tr1XGVac/3n8OYYPZezC8DqlYYj7kIEgXJQWy9
 wD5RAX2vfQUzKkeDK6HChtzwBMtSMSEojACEDY1FptQ681m01AfugWau4
 LgvLPyqDu1reFRSDWBubtQDAKKOPAFBmZBI0ILhXLDDmVRiMNAzIp0h31 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13286345"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="13286345"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:20:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="36024249"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa002.jf.intel.com with ESMTP; 21 Feb 2024 11:20:13 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 1/3] drm/i915/bigjoiner: Refactor bigjoiner state readout
Date: Wed, 21 Feb 2024 21:20:08 +0200
Message-Id: <20240221192010.25413-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
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

Don't call enabled_bigjoiner_pipes twice, lets just move
intel_get_bigjoiner_config earlier, because it is anyway
calling same function.
Also cleanup hsw_enabled_transcoders from irrelevant bigjoiner code.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a140298..916c13a149fd5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3535,7 +3535,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
 	enum transcoder cpu_transcoder;
-	u8 master_pipes, slave_pipes;
 	u8 enabled_transcoders = 0;
 
 	/*
@@ -3586,15 +3585,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 		enabled_transcoders |= BIT(cpu_transcoder);
 
-	/* bigjoiner slave -> consider the master pipe's transcoder as well */
-	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
-	if (slave_pipes & BIT(crtc->pipe)) {
-		cpu_transcoder = (enum transcoder)
-			get_bigjoiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
-		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
-			enabled_transcoders |= BIT(cpu_transcoder);
-	}
-
 	return enabled_transcoders;
 }
 
@@ -3641,6 +3631,15 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	u32 tmp;
 
 	enabled_transcoders = hsw_enabled_transcoders(crtc);
+
+	/* bigjoiner slave -> consider the master pipe's transcoder as well */
+	if (intel_crtc_is_bigjoiner_slave(pipe_config)) {
+		unsigned long cpu_transcoder = (enum transcoder)
+			bigjoiner_master_pipe(pipe_config);
+		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
+			enabled_transcoders |= BIT(cpu_transcoder);
+	}
+
 	if (!enabled_transcoders)
 		return false;
 
@@ -3745,6 +3744,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->shared_dpll = NULL;
 
+	intel_bigjoiner_get_config(pipe_config);
+
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
@@ -3756,7 +3757,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (!active)
 		goto out;
 
-	intel_bigjoiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-- 
2.37.3

