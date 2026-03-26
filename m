Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GkQBq5pxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57AE338FD3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2471E10E14D;
	Thu, 26 Mar 2026 17:15:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U50fpvwn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C3110E9AE;
 Thu, 26 Mar 2026 17:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545324; x=1806081324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NbgeFOUuhjR7Yz3L85/BeEvYd4efohenPfSvaRW3czs=;
 b=U50fpvwnEk8F7g5OD0ug11xg5BaNf99bItiS/6gJJ5h53yUTGaAgChK+
 ejB1A3wBbEloy71RFVav6DlaY1oxQVU23zOcBSWlVhoMq+BIYM7WT54iX
 zUsn7tm2RQ8iynsqwF041CLOoGjioVwF8DASyTqxmCyJuTLgsxUmcD+Gs
 UGYNsv7y8KSAHEpUrQsf8oZFGL2Kb2JhPc1gWxi+prYVczo0Ek2TpYCvS
 i2PWo1gB8J/TPyGxfnwK4pRzEAXIyAXlRY4MBHkSvRN/KXDOelw6vhojU
 x6Nq/J7UlELdRnZAYaMvCNqpY0/zjV7nyrh+j6tjW9U5ryWEdLMhglry3 w==;
X-CSE-ConnectionGUID: rd7fPp9nSrWmUz3WAh8qFQ==
X-CSE-MsgGUID: YFE0xoGwTuWjTXEBs/NDTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630559"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630559"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:17 -0700
X-CSE-ConnectionGUID: Xp3qTIhUR+2H0W8zRgroaA==
X-CSE-MsgGUID: h+v/luzpS/O9fMoWpfDfXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975520"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:15 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 02/19] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
Date: Thu, 26 Mar 2026 22:45:40 +0530
Message-ID: <20260326171557.2065632-3-dibin.moolakadan.subrahmanian@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B57AE338FD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On platforms prior to xe3, DC3CO was controlled via a standalone enable
bit. Starting with xe3 DC3CO is encoded as part of the existing
DC_STATE_EN_UPTO_DC* field.

No functional change, as DC3CO is not enabled on platforms prior to xe3.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ec96b141c74c..0afae5c2f62b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
 	static const u32 states[] = {
 		DC_STATE_EN_UPTO_DC6,
 		DC_STATE_EN_UPTO_DC5,
-		DC_STATE_EN_DC3CO,
+		DC_STATE_EN_UPTO_DC3CO,
 		DC_STATE_DISABLE,
 	};
 	int i;
@@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 
 	switch (requested_dc) {
 	case 4:
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6;
 		break;
 	case 3:
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC5;
 		break;
 	case 2:
 		mask |= DC_STATE_EN_UPTO_DC6;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6d5f07f7f590..9a948f5e2164 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -773,7 +773,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
 	mask = DC_STATE_EN_UPTO_DC5;
 
 	if (DISPLAY_VER(display) >= 12)
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6
 					  | DC_STATE_EN_DC9;
 	else if (DISPLAY_VER(display) == 11)
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
@@ -1023,7 +1023,7 @@ static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
 static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
+	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC3CO) == 0 &&
 		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 5838338f495a..d0196d4ad234 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3044,13 +3044,13 @@ enum skl_power_gate {
 /* GEN9 DC */
 #define DC_STATE_EN			_MMIO(0x45504)
 #define  DC_STATE_DISABLE		0
-#define  DC_STATE_EN_DC3CO		REG_BIT(30)
 #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
 #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
 #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
 #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
 #define  DC_STATE_EN_DC9		(1 << 3)
 #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
+#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
 #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 73a3101514f3..9f403b7820ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 	 * the DMC and requires a DC exit for proper access.
 	 */
 	switch (dc_state) {
-	case DC_STATE_EN_DC3CO:
+	case DC_STATE_EN_UPTO_DC3CO:
 		ranges = xe3lpd_dc3co_dmc_ranges;
 		break;
 	case DC_STATE_EN_UPTO_DC5:
-- 
2.43.0

