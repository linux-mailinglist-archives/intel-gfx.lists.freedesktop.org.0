Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D0M2BUvxImosfgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 17:54:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCBF64983D
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 17:54:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jacuH6Xk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F5711A95F;
	Fri,  5 Jun 2026 15:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1164D11A95E;
 Fri,  5 Jun 2026 15:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780674888; x=1812210888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SVUWLFDCuMYL/zrJbY4PKrn8bVb2tYbh/BDSPwE1z78=;
 b=jacuH6Xk0lf3sKNQVZDO73EtS1hpq7A10JfukUERifjfRlu8B1NAW7hL
 QG68VzrOJOxVcgu4WroxU0hEwhgEpqWYi1iwyw+aXPRY/fhjIFu62MfzQ
 e+cgdErlLCbjb69FwibtARLg5Gwli8kAAuEAZqk74KVd1LZYgy2Tsozbd
 Kin33Ca0o8g/W4w+/4cgQZPHd+ryDLFu7E8veoJ6JGYCv/mDJ9wWiwX9J
 ZVrc7zfHqMpTAuyV4WgvMp/AwnyBGBjswEU4nEojG3f0/cq4RZpVk2ISi
 FNsCBG8JFUx5wM+Pp1llZfcnMzpoOqmvCwehO3SHEUFh5yU6bj7sTsnD0 Q==;
X-CSE-ConnectionGUID: QiipbDGyS++Q79WG4H+sLA==
X-CSE-MsgGUID: bs+mCS5DSNSh90E5yvgdRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81256422"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="81256422"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 08:54:47 -0700
X-CSE-ConnectionGUID: 7cI8T6EWRc+a1qC1rnb03Q==
X-CSE-MsgGUID: wHs1HKUGS12BgH5jCk98rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="238526090"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 08:54:45 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@linux.intel.com,
	imre.deak@intel.com
Subject: [PATCH v4] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Date: Fri,  5 Jun 2026 21:23:59 +0530
Message-ID: <20260605155359.4116572-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CCBF64983D

The DC_STATE_EN register has read-only status bits that are set by
hardware on some platforms. These bits may cause the read-back
verification loop in gen9_write_dc_state() to spuriously retry.

Mask the RO bits from the read-back comparison to prevent
unnecessary retries.

Changes in v2:
- Rename patch from
  "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
bits"
  to
  "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
- Mask only RO bits rather than masking all non DC state bits
  in DC_STATE_EN.  As the register has also some clear-on-write flags,
  like 'Display DC*CO State Status DSI'(Imre Deak)

Changes in v3:
- Limit ro mask to read-back comparison.

Changes in v4:
- Add bit definitions (Jani Nikula)

BSpec: 49437,69115
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 24 +++++++++++++++----
 .../gpu/drm/i915/display/intel_display_regs.h |  4 ++++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 04bd0dde5bed..bb0272f59d97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -726,12 +726,28 @@ static void assert_can_disable_dc9(struct intel_display *display)
 	  */
 }
 
+static u32 dc_state_ro_mask(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 20)
+		return DC_STATE_EN_CSR_MASK_CMTG_1 | DC_STATE_EN_CSR_MASK_CMTG_0;
+	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
+		return DC_STATE_EN_CSR_MASK_CMTG_0;
+
+	return 0;
+}
+
 static void gen9_write_dc_state(struct intel_display *display,
 				u32 state)
 {
 	int rewrites = 0;
 	int rereads = 0;
 	u32 v;
+	/*
+	 * Mask out RO status bits from read-back comparison.
+	 * HW may set these bits independently, so exclude them
+	 * to prevent the verify loop from retrying due to RO bits mismatch.
+	 */
+	u32 ro_mask = dc_state_ro_mask(display);
 
 	intel_de_write(display, DC_STATE_EN, state);
 
@@ -743,7 +759,7 @@ static void gen9_write_dc_state(struct intel_display *display,
 	do  {
 		v = intel_de_read(display, DC_STATE_EN);
 
-		if (v != state) {
+		if ((v & ~ro_mask) != (state & ~ro_mask)) {
 			intel_de_write(display, DC_STATE_EN, state);
 			rewrites++;
 			rereads = 0;
@@ -753,10 +769,10 @@ static void gen9_write_dc_state(struct intel_display *display,
 
 	} while (rewrites < 100);
 
-	if (v != state)
+	if ((v & ~ro_mask) != (state & ~ro_mask))
 		drm_err(display->drm,
-			"Writing dc state to 0x%x failed, now 0x%x\n",
-			state, v);
+			"Writing dc state to 0x%x failed, now 0x%x (ro_mask=0x%x)\n",
+			state, v, ro_mask);
 
 	/* Most of the times we need one retry, avoid spam */
 	if (rewrites > 1)
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..061bff0ee911 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3078,6 +3078,10 @@ enum skl_power_gate {
 #define  DC_STATE_EN_DC9		(1 << 3)
 #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
 #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
+/* display version 20+ */
+#define  DC_STATE_EN_CSR_MASK_CMTG_1	REG_BIT(11)
+/* display version 13+, except dg2 */
+#define  DC_STATE_EN_CSR_MASK_CMTG_0	REG_BIT(10)
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
-- 
2.43.0

