Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sz/ADUkBKGpg7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFD865FD37
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lCKoG2y3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C01510E32A;
	Tue,  9 Jun 2026 12:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E265910E329;
 Tue,  9 Jun 2026 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006663; x=1812542663;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NB3WQUet3X+mh5mP+5jZAfT8Td0seTZu1G6HX+tr5V0=;
 b=lCKoG2y3msN+OrEJpGketvb1c5OKdp9NwevXZybGx6pPAqMDBaxwE4O8
 ajS9p9sr4TfEYn9Ju4ooZD9GBx+hOYsk6FVxesuoqzxvmIrphQnN/aqGf
 cOK1FDuUPwnAcv8d4T6kuj7JEYnbOAuUkrvnhpc1LglusJrn1YtQc8dzu
 09thTvr4YtWl5iFthGNgY2Dq1DAbcGpz6WS9MMgBMYo3C+f4GuZRBv/jV
 CYCAOktkY7oSdYMz3dU6vt5h2PsC0iRmaigwrIZfdk+PyHW/wc5d7pBOL
 yr6E1e/Wi7LOzU+UKbza4crOTYxD8y6ACI10S5aj+IYwuFe7pQmdzXCyn w==;
X-CSE-ConnectionGUID: R858/ZLTTUuqfdJqkXfJiQ==
X-CSE-MsgGUID: 6allslNORaq6NRJit/LHGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340439"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340439"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:22 -0700
X-CSE-ConnectionGUID: jTA2MMNMQgm63sZbeU3vJQ==
X-CSE-MsgGUID: d0dBWe+aR5WCkt75nD7C1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988468"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:22 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 32/36] drm/i915/display: Add helper to enable DC counter
Date: Tue,  9 Jun 2026 17:32:46 +0530
Message-ID: <20260609120250.867750-33-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBFD865FD37

Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
Needed to retrieve DC residency for DC3CO.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
 4 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 9c8ea14a5cff..4f7144d72dc6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -866,6 +866,11 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 	power_domains->dc_state = val & mask;
 }
 
+void xe3lpd_enable_dc_count(struct intel_display *display)
+{
+	intel_de_write(display, DC_COUNT_EN, DC_COUNT_EN_COUNTER_ENABLE);
+}
+
 static void assert_can_enable_dc3co(struct intel_display *display)
 {
 	drm_WARN_ONCE(display->drm,
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
index 2255d9d31ca4..329909e3f70a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3086,6 +3086,11 @@ enum skl_power_gate {
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
index 4785001644f5..a133785c815b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -941,6 +941,9 @@ void intel_dmc_load_program(struct intel_display *display)
 
 	gen9_set_dc_state_debugmask(display);
 
+	if (DISPLAY_VER(display) >= 35)
+		xe3lpd_enable_dc_count(display);
+
 	pipedmc_clock_gating_wa(display, false);
 }
 
-- 
2.43.0

