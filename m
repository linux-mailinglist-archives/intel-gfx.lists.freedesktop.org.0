Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EWxNMhpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8589E33905A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E0D10EB09;
	Thu, 26 Mar 2026 17:15:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWzDO2jc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A925010EB68;
 Thu, 26 Mar 2026 17:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545345; x=1806081345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BHlJTEXwpuAx8BLbqwAZqt+2ewprC7nUlNsehsGffec=;
 b=iWzDO2jc2FsuNVV0c3nAzY0d+/vROAqkFcQ1t8gZFz1gdHRDL4Ltf/co
 5tB2AenkK+vOb08yOSI9O75iWBfe2C4oBRjYrR3MOXw43khFpIIdNjdvt
 3B6Ktr7z/rvM1+4x8ViZL6THxQkOmmhoOwk3/xsFCodfrVck9s8mKk+47
 uvAAZabmgDiiPj2xFM8WcZnUB5rYCgPoHQ6dqhr9o2lDuA6Z+PPQp+GfS
 0p+eWhETxruLMWXrJZYEH/04zg9B2oq4EltT4PtEx5I9oggkIeAAbdnuj
 XW/qxtkR/CMm2Fg1bmDmfQX87KI+AiVvb7TUs15g4oPCbqWNw6NsvKmnI w==;
X-CSE-ConnectionGUID: qOgtRn4qT7+EHXdWmyRRnQ==
X-CSE-MsgGUID: 5tAGxUW8Q/uqV1lLfclmKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630601"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630601"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:45 -0700
X-CSE-ConnectionGUID: +PAFDx0lSieO/9hbpLhrwA==
X-CSE-MsgGUID: AdkMRCObQbestGEZvumDKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975656"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:43 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 16/19] drm/i915/display: Add helper to enable DC counter
Date: Thu, 26 Mar 2026 22:45:54 +0530
Message-ID: <20260326171557.2065632-17-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8589E33905A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
Needed to retrieve DC residency for DC3CO.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
 4 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index cb3dcd1460b2..15521442e6d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -867,6 +867,11 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 	power_domains->dc_state = val & mask;
 }
 
+void xe3lpd_enable_dc_count(struct intel_display *display)
+{
+	intel_de_write(display, DC_COUNT_EN, DC_COUNT_EN_COUNTER_ENABLE);
+}
+
 static void xe3lpd_enable_dc3co(struct intel_display *display)
 {
 	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 8f5524da2d06..0ce64b894436 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -159,6 +159,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state);
 void gen9_disable_dc_states(struct intel_display *display);
 void bxt_enable_dc9(struct intel_display *display);
 void bxt_disable_dc9(struct intel_display *display);
+void xe3lpd_enable_dc_count(struct intel_display *display);
 
 extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
 extern const struct i915_power_well_ops chv_pipe_power_well_ops;
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 2bace331437c..8b59e1ff2590 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3058,6 +3058,11 @@ enum skl_power_gate {
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
 #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
 
+#define DC_COUNT_EN			_MMIO(0x457B4)
+#define DC_COUNT_EN_COUNTER_ENABLE	REG_BIT(31)
+
+#define DC_STATE_DC3CO_RESIDENCY	_MMIO(0x457B8)
+
 #define D_COMP_BDW			_MMIO(0x138144)
 
 /* Pipe WM_LINETIME - watermark line time */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 90ba932d940a..74d18806d01f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -937,6 +937,9 @@ void intel_dmc_load_program(struct intel_display *display)
 
 	gen9_set_dc_state_debugmask(display);
 
+	if (DISPLAY_VER(display) >= 35)
+		xe3lpd_enable_dc_count(display);
+
 	pipedmc_clock_gating_wa(display, false);
 }
 
-- 
2.43.0

