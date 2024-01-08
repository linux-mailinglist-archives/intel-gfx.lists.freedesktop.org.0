Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ABD826D69
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BCE10E211;
	Mon,  8 Jan 2024 12:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7241110E211
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704715652; x=1736251652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L6Z529SojhJdOQ+3OKY9NHnfbpnvQ5qDCLpv5fFlmqA=;
 b=OVHKcJFMk9mZElDUDxkuI96fbUI/QDHehgz5eCCkK/IXVH/PpIHvWe2I
 eOyvS7j5+p2ALCY0Kl+oMIPmJGEjpOwMcfK7dAoPNH6kP1Y5xfDKlSk+k
 zS23JXJyNWyCcGk0fiDIzkbJHAlLB9bp2eE+hhZ1ak6AwA0Aarkewmv/u
 v5SL9ZATw6B5K0HJrAGMDGcdfyjwI9e6Mz5DUSgG0KAp6FQ2Sj8QWkGy/
 +Fr/HiTY+SGyISFSnXgtOgqE9Te10XtPBjxZ6KlIZvIn9suzXXgLM4h7I
 exA+IZSPROjqp43IzxrHd1mozihYTcLK+z6f6V+S3lP46vkcm1oAqFspm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="19361483"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="19361483"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="757605131"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="757605131"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2024 04:07:30 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/bigjoiner: Refactor bigjoiner state readout
Date: Mon,  8 Jan 2024 14:07:24 +0200
Message-Id: <20240108120725.20057-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
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
index 927d124457b61..eec76ec167069 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3525,7 +3525,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
 	enum transcoder cpu_transcoder;
-	u8 master_pipes, slave_pipes;
 	u8 enabled_transcoders = 0;
 
 	/*
@@ -3576,15 +3575,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
 
@@ -3631,6 +3621,15 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
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
 
@@ -3735,6 +3734,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->shared_dpll = NULL;
 
+	intel_bigjoiner_get_config(pipe_config);
+
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
@@ -3746,7 +3747,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (!active)
 		goto out;
 
-	intel_bigjoiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-- 
2.37.3

