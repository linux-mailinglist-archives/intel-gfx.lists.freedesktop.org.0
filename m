Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rwYzBJmMImoZaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0BB646819
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="iMi07/24";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0550811A5CA;
	Fri,  5 Jun 2026 08:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C9711A5C6;
 Fri,  5 Jun 2026 08:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780649110; x=1812185110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hy0LX1k2Ox24RTfWYQdNqsMfaScOUyNjLWpvYS9DtfE=;
 b=iMi07/24tbXe70hXf1WXGbgaU9hgqiJMoQpx/G0qyf4VC+FDP5+PxJ96
 CYnSjgH7vdSLkj2mqE31bQCADZhyM6HG7DmmhpAQxGV11dOtKUxlr+igG
 B+1EgxiCt4CPopYH7vmQ96YzetwBmE38zQNZ7CbxsIoNwWnU6LFjiaLjY
 Wgdt4DhvOuFbQn/wRqSLYDs612hG48HQqHa6FcL6mVjfBYCEYs0V+0XYs
 yewP7WF1dpQ0EEI1IX0BeO9BUMK/Yj0TAeJjznybxn5J8wjG/+I7amjIJ
 XLVbflA2Hdc6IbxlWaa2RV+FiJIR8UQkSmirS0vnP9ypIazmHliC7axi2 g==;
X-CSE-ConnectionGUID: KMW6XW4ATROCmZ+ErknCyg==
X-CSE-MsgGUID: K/Vk+vGMTgWGgPolQuZV7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81666410"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81666410"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:09 -0700
X-CSE-ConnectionGUID: ITlby3VnRuWrBNT7pPTHxA==
X-CSE-MsgGUID: ampXLUAaQtuxgWWeWGj5dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="246624126"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:07 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v5 02/14] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
Date: Fri,  5 Jun 2026 14:14:09 +0530
Message-ID: <20260605084421.3912865-3-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE0BB646819

On platforms prior to xe3, DC3CO was controlled via a standalone enable
bit. Starting with xe3, DC3CO is encoded as part of the existing
DC_STATE_EN_UPTO_DC* field.

No functional change, as DC3CO is not enabled on platforms prior to xe3.

Changes in v2:
- Update commit header (Uma Shankar)

Changes in v5:
- Update bit mask to reflect DC3CO (Manna Animesh)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 4 ++--
 drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e51dfcd5dce..271d50d5da3f 100644
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
index 2f0d0a77c1a2..71ea2ecc8c88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -772,7 +772,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
 	mask = DC_STATE_EN_UPTO_DC5;
 
 	if (DISPLAY_VER(display) >= 12)
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6
 					  | DC_STATE_EN_DC9;
 	else if (DISPLAY_VER(display) == 11)
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
@@ -1022,8 +1022,8 @@ static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
 static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
-		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
+	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC3CO) == 0 &&
+		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK) == 0);
 }
 
 static void gen9_assert_dbuf_enabled(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..bacc5d7fac39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3070,14 +3070,14 @@ enum skl_power_gate {
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
-#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
+#define  DC_STATE_EN_UPTO_DC3CO	(3 << 0)
+#define  DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK   0x3
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index b007343721e1..ab4e0e9573df 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -267,7 +267,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
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

