Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GCLEWU/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68F95E94FD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD32110E944;
	Wed, 27 May 2026 19:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h0thJdLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FDE10E945;
 Wed, 27 May 2026 19:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908449; x=1811444449;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uELendxsGHmmIZpsJg3xz1a42I3EU5h+66kmOfu2qos=;
 b=h0thJdLT4uN81/lFk01VPkYH9/nnl4dL8AlI9kmiqEhPINVff7ocFqhX
 +nXUrKFle+9WAe4ImMr0+IAWys6cbQ8SsF6CGAFOir8bomN20ql5Nz1GK
 /rgiZUB/HSKtAha0/tmYPt0DsFTtNkLKeuY+ExPAoPSFiP/WbzfzNw8hT
 P8heSLZPwFdJDODpihFUaY4jgxg1GpBTQi755o5hXcMzfpU8l1cEMsnRB
 kSvIeO4aSYjpkB7Kkf12jjoo+E5lPZb/x3cH5PRoZQ2EM/BY5FBvWcn5f
 yr9KwcE4Y3P3bygIfSAygifK4zBH8DDJr6oyzuJ7/j0QeNaAMaYoSUzHu g==;
X-CSE-ConnectionGUID: 2+ezgCWiS2qGBhX0LiLhrw==
X-CSE-MsgGUID: EwB/W8bdTYOMgWZ7YMGfOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602152"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602152"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:48 -0700
X-CSE-ConnectionGUID: 0Ufz2vfLQvW1918VnhWPjA==
X-CSE-MsgGUID: gsYx8K9uRuOSohH+v4Vjmg==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:47 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI 13/17] drm/i915/display: Add helper to enable DC counter
Date: Thu, 28 May 2026 00:30:00 +0530
Message-ID: <20260527190004.118730-14-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: D68F95E94FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 3ea080d0e21e..0e7e6a2b1547 100644
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
index fee9ce085075..d9efe5b0ba46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3090,6 +3090,11 @@ enum skl_power_gate {
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

