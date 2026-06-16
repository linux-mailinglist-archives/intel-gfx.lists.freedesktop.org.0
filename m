Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzBzGZRFMWpPfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:46:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DA68F874
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:46:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WYdbjRRQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C38610EB55;
	Tue, 16 Jun 2026 12:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD0910EB53;
 Tue, 16 Jun 2026 12:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613967; x=1813149967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4yV9degdVREo0DUzZnOyXdkjaCOpkDy/d9JFkbvNfpA=;
 b=WYdbjRRQp+1X03Rh4gg0wAF/9wV4jg2Vu9ro1eKykiA3t28nEDefHUal
 8IRtklZpIBe+ebyaStnb+xf1NWgzooMxZnkYmzh0rEge4f12sZeUK7pHy
 JzL8UJ4foLGtajFI+958DGqD8itsy9Psb9RPtOQQdaA1R7kBsT2i1fOG3
 7zG1MCpgF8AnsZjcouFhX0H5DciBJzi94BBqWHD9ZlOS5iyxWSIc7LHZS
 NRrYrgAQlSikaEWA59Y7kixQrc/UJTmtNsOpY24CnYYYVrm2hZh4ns3kM
 PzB4nLDvnNQXuavLo93v2kAjhwm3JwLH8W0vcfJb+/Whd7CwqcgZaj5LV A==;
X-CSE-ConnectionGUID: QoNj2QFUSau88oxRYg+C+A==
X-CSE-MsgGUID: zf6EL809SN6fLDo/jYFp1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513299"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513299"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:46:07 -0700
X-CSE-ConnectionGUID: mlmyRpvdQ9uaPuqPFvtxnw==
X-CSE-MsgGUID: XaZcFnc8RXmjR4SEON03yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876414"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:46:06 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 39/39] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Date: Tue, 16 Jun 2026 18:14:15 +0530
Message-ID: <20260616124416.2442161-40-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E85DA68F874

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
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 24 +++++++++++++++----
 .../gpu/drm/i915/display/intel_display_regs.h |  4 ++++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 4f7144d72dc6..6e8e67a86896 100644
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
index 329909e3f70a..6a7b8b2715d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3081,6 +3081,10 @@ enum skl_power_gate {
 #define  DC_STATE_EN_UPTO_DC5		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 1)
 #define  DC_STATE_EN_UPTO_DC6		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 2)
 #define  DC_STATE_EN_UPTO_DC3CO	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 3)
+/* display version 20+ */
+#define  DC_STATE_EN_CSR_MASK_CMTG_1   REG_BIT(11)
+/* display version 13+, except dg2 */
+#define  DC_STATE_EN_CSR_MASK_CMTG_0   REG_BIT(10)
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
-- 
2.43.0

