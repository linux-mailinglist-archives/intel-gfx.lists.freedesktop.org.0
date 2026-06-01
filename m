Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COvQIpJKHWphYgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:02:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E736361C0AF
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9130D113018;
	Mon,  1 Jun 2026 09:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BDIBT9ta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F77113018;
 Mon,  1 Jun 2026 09:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780304526; x=1811840526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jRDqMAdiSbx7xnoHe0BUpqeeOo+ZPCoxiFf1usbCG3M=;
 b=BDIBT9tatJ670uqFkatZ2QmqYthqMpFRWzkSx/wjIMQPkjUz7Q/5Ig5d
 4SFB0KDjD2TGFaQuUrUFUetZHr820uudT2lRoDHONy8NvlsoAkT6EbI39
 lXcxwuNeExAv0bFFNhi+UmCxKM2S6x8litSZCA57O3dPhyH/ORg80oc6E
 Y9a8t/JM7W62pvolObFvYkLKeWA9SrOxAY6ce4poMiLJgnn/5GDifWK8F
 2tzyESu6XNScpYjgSI01vA5dg/2tA1ileq78i5u3PXfjrn9T7t2kZvH6e
 6lhf+UBjlU6BR/NJQD5ZtXx9QWLKd5FJ7Ab7nd5goaAOkl5wtEpu6CGBx g==;
X-CSE-ConnectionGUID: 3Hq5pERaSiqBvY33wGOPUg==
X-CSE-MsgGUID: Fc/yi4NYRGaqlJTN/szcOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="98625278"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="98625278"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:02:06 -0700
X-CSE-ConnectionGUID: VvrRJ9a1TqK89sUgZyawTw==
X-CSE-MsgGUID: lYMVD3L8QfqDy5Khz9+VKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="245348305"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:02:04 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	uma.shankar@intel.com
Subject: [PATCH v2] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Date: Mon,  1 Jun 2026 14:31:31 +0530
Message-ID: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <<20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
References: <<20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E736361C0AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DC_STATE_EN register has read-only status bits that are set by
hardware on some platforms. These bits may cause the read-back
verification loop in gen9_write_dc_state() to spuriously retry.

Mask the RO bits from both the write value and the read-back comparison
to prevent unnecessary retries.

Changes in v2:
- Rename patch from
  "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
bits"
  to
  "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
- Mask only RO bits rather than masking all non DC state bits
  in DC_STATE_EN.  As the register has also some clear-on-write flags,
  like 'Display DC*CO State Status DSI'(Imre Deak)

BSpec: 49437,69115
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 04bd0dde5bed..4bc9e3ef738e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -726,14 +726,33 @@ static void assert_can_disable_dc9(struct intel_display *display)
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
+	u32 ro_mask = dc_state_ro_mask(display);
+	u32 val = state;
+
+	/*
+	 * Mask out RO status bits from both the write value and the read-back
+	 * comparison. HW may set these bits independently, so exclude them
+	 * to prevent the verify loop from retrying due to RO bits mismatch.
+	 */
+	val &= ~ro_mask;
 
-	intel_de_write(display, DC_STATE_EN, state);
+	intel_de_write(display, DC_STATE_EN, val);
 
 	/* It has been observed that disabling the dc6 state sometimes
 	 * doesn't stick and dmc keeps returning old value. Make sure
@@ -741,10 +760,10 @@ static void gen9_write_dc_state(struct intel_display *display,
 	 * we are confident that state is exactly what we want.
 	 */
 	do  {
-		v = intel_de_read(display, DC_STATE_EN);
+		v = intel_de_read(display, DC_STATE_EN) & ~ro_mask;
 
-		if (v != state) {
-			intel_de_write(display, DC_STATE_EN, state);
+		if (v != val) {
+			intel_de_write(display, DC_STATE_EN, val);
 			rewrites++;
 			rereads = 0;
 		} else if (rereads++ > 5) {
@@ -753,7 +772,7 @@ static void gen9_write_dc_state(struct intel_display *display,
 
 	} while (rewrites < 100);
 
-	if (v != state)
+	if (v != val)
 		drm_err(display->drm,
 			"Writing dc state to 0x%x failed, now 0x%x\n",
 			state, v);
-- 
2.43.0

