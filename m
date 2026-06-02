Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yo5XCUK/HmryCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:32:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BB062D8CF
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:32:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Plu+CY6+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C4810EFBC;
	Tue,  2 Jun 2026 11:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37EE10EFA2;
 Tue,  2 Jun 2026 11:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780399934; x=1811935934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oV0o3UxniiF1PmPxd3CG+hy2mKngzalvy18mNLnIK4o=;
 b=Plu+CY6+Z/QFMRfbU1nP26phs/zmB447zl6fKMxyDvBOOFh6gLTqH89z
 Zurs+djbG0lX/fOqvBmYliH4FqFQnmCZZ+ZGhZtumQciQFj5E+/+7Rb3n
 DgWwW1z3pseNcOLk3SzZv97elvka41zlnN5PQ8TiH0tHBmUbee/HqU8ie
 sTxOlpEptLSLs9VtWYgoBwTds+6Z2SN0/AHqsOMqSXHs4W2/FjVZRwr54
 N0VIHJ4MJankjyDGfUb9HEw0jVnjCvm3kjxiaBPj8uQcR8x9vJ1+11juh
 RJGtMSki9tp0xRPX3IUOOxjqcj/jRW9w7oqshzdRYhZi+6Cdxb32G05+t A==;
X-CSE-ConnectionGUID: EL5PGGRuR6Sl1pxxmMhw8A==
X-CSE-MsgGUID: kqxGixOJQ+eTJu+BS40Vmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="92667113"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="92667113"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 04:32:13 -0700
X-CSE-ConnectionGUID: v3tTf7JySESt5gQQM2MBcg==
X-CSE-MsgGUID: Tn9xK4wIRiSRKF8Z2Ds+jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="243991786"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 04:32:11 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	uma.shankar@intel.com,
	jani.nikula@linux.intel.com
Subject: [PATCH v3] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Date: Tue,  2 Jun 2026 17:01:34 +0530
Message-ID: <20260602113134.2477070-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[131.252.210.177:from];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DNSWL_BLOCKED(0.00)[131.252.210.177:from,198.175.65.12:received,10.190.239.19:received,10.64.159.147:received];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68BB062D8CF

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

BSpec: 49437,69115
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 24 +++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 04bd0dde5bed..ab0200701a73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -726,12 +726,28 @@ static void assert_can_disable_dc9(struct intel_display *display)
 	  */
 }
 
+static u32 dc_state_ro_mask(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 20)
+		return BIT(10) | BIT(11);
+	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
+		return BIT(10);
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
-- 
2.43.0

