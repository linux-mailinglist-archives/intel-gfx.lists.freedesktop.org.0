Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CX9EcOpFWpGXgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2DF5D7225
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB5510E654;
	Tue, 26 May 2026 14:10:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JnfteK9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBB310E65B;
 Tue, 26 May 2026 14:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804609; x=1811340609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hi/L3jaiiBSkGnilITlQhJuu3AaXxlLw/EnJ8fHCh/Y=;
 b=JnfteK9fyQwGev5sKtOBY+eFOl9hYCM/W5Ue1qV8I+LSeHQxMFRJrPV+
 CbA5HQCO4W8owztm/4RKbPghwKi++QKSl8SPV7P95xk7EDqJtOBMRkdfd
 uJhMJaD00FjKmpygIBc9G7KJvbuXSFDVy5Dw5AMjeaR3YRJepGWwGBAal
 zQ2wjvzUKfH/Mj3iBr/ZwjQ+8jxIXGO8nP0n8NlwWlgbzeXs+nnc1hCqJ
 QqXoKz+lY8/23RAXu/10ibmJ6mNCwADyGYcYrzq/Fk7BxgnZ8BC0wjw9K
 1JFP63v7sKlEEb2s/b1hYyD+AUTQTPA229UR5bIblwElbg61+FOY35w6q Q==;
X-CSE-ConnectionGUID: LWoua0J+SmyJdVPWvUTowQ==
X-CSE-MsgGUID: eiaXyXiZT3+lL8k4Ouawww==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041769"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041769"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:10:08 -0700
X-CSE-ConnectionGUID: 0vhlXOFWTKWH3y5tBY73ig==
X-CSE-MsgGUID: 0ck+qHWaRkKdyD0soAyhmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578205"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:10:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 12/15] drm/i915/cmtg: Add CMTG scan line programming
Date: Tue, 26 May 2026 19:08:08 +0530
Message-Id: <20260526133811.2621675-13-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260526133811.2621675-1-animesh.manna@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 1A2DF5D7225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Enable the hardware based guardband calculations which allows
DC3co to remain enabled when timings are changing from one fixed
refresh rate to another fixed refresh rate.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 2 ++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 09ab91dc9bfe..a0413013ec43 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -185,6 +185,7 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
 		     CMTG_SECONDARY_MODE, 0);
+	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), CMTG_HW_GB_ENABLE, 0);
 
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_ENABLE, 0);
 
@@ -400,6 +401,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
+	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index a4a2a2fe6b66..18dcb665df04 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -32,4 +32,10 @@
 #define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27, 16)
 #define CMTG_HW_GB_UP_LW_BG_DIFF_MASK		REG_GENMASK(31, 28)
 
+#define _CMTG_SCANLINE_GB1_A		0x456A0
+#define _CMTG_SCANLINE_GB1_B		0x456C0
+#define CMTG_SCANLINE_GB1(trans)	_MMIO_TRANS((trans), \
+						    _CMTG_SCANLINE_GB1_A, _CMTG_SCANLINE_GB1_B)
+#define  CMTG_HW_GB_ENABLE		REG_BIT(31)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

