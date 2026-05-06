Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHL8NhU8+2nUXwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:03:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 314F04DAADD
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B124A10ED9C;
	Wed,  6 May 2026 13:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M65FiPC5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4037210E012;
 Wed,  6 May 2026 13:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778072594; x=1809608594;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EmMaPZ4Xddl2ISTF1gQVpGj/Wv6XlieMjeoPfLyzsu8=;
 b=M65FiPC5NaRBAVecjpWhphREx1Xv0jRIA5mZIytpSSQqGvfCVKIRYToB
 DIm6BDEcTluJBxymWgNovpcl3ebuxoXD2TVqQ8m7i0p4E+1MySng9lOO5
 /gjkbBzu5v0BCpML/xPCCtKaPTai1jbzxEm+Qmfs5oOCc4ZYQH8bIEnh+
 wAFlslJNrHHuMY8xFK6z3Z/8arx3/oQjxuXCePJuqLrlLkHdJITuROMX9
 fPLS8BFCVddIgEfPIwTQF0O68jWmOUDIi0IXH1HSe94v1mowVelmTl+XI
 eL95Zgru1Qm+q7wQkeX0xAjluHBvXb2f7cCLnrbJb8YwQe7hEWkzKG0Dl g==;
X-CSE-ConnectionGUID: QuJjJxSOSyCzWHgAd6l9zg==
X-CSE-MsgGUID: zVDwKSScT3SbA55CfPpN5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="90457864"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="90457864"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:03:13 -0700
X-CSE-ConnectionGUID: QmiaaKHlQT+OMNkD1j13Pg==
X-CSE-MsgGUID: vrRT+400TWWOuwoF7J3chw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="237953803"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:03:11 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	uma.shankar@intel.com,
	imre.deak@intel.com
Subject: [PATCH] drm/i915/display: Use rmw in gen9_write_dc_state() to
 preserve non-DC bits
Date: Wed,  6 May 2026 18:33:21 +0530
Message-ID: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: 314F04DAADD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

gen9_write_dc_state() verifies DC_STATE_EN by reading it back, but it
was comparing the full register value instead of only the DC state bits.
That could trigger false failure messages and unnecessary retries when
unrelated bits differed.

Use intel_de_rmw() to update only the DC state bits and compare only
the masked DC state bits in the read-back check and retry logic.

BSpec: 49437,69115
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6fbfd46461b0..75471898e323 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -727,13 +727,13 @@ static void assert_can_disable_dc9(struct intel_display *display)
 }
 
 static void gen9_write_dc_state(struct intel_display *display,
-				u32 state)
+				u32 state, u32 mask)
 {
 	int rewrites = 0;
 	int rereads = 0;
 	u32 v;
 
-	intel_de_write(display, DC_STATE_EN, state);
+	intel_de_rmw(display, DC_STATE_EN, mask, state);
 
 	/* It has been observed that disabling the dc6 state sometimes
 	 * doesn't stick and dmc keeps returning old value. Make sure
@@ -742,9 +742,8 @@ static void gen9_write_dc_state(struct intel_display *display,
 	 */
 	do  {
 		v = intel_de_read(display, DC_STATE_EN);
-
-		if (v != state) {
-			intel_de_write(display, DC_STATE_EN, state);
+		if ((v & mask) != (state & mask)) {
+			intel_de_rmw(display, DC_STATE_EN, mask, state);
 			rewrites++;
 			rereads = 0;
 		} else if (rereads++ > 5) {
@@ -753,16 +752,16 @@ static void gen9_write_dc_state(struct intel_display *display,
 
 	} while (rewrites < 100);
 
-	if (v != state)
+	if ((v & mask) != (state & mask))
 		drm_err(display->drm,
 			"Writing dc state to 0x%x failed, now 0x%x\n",
-			state, v);
+			state & mask, v & mask);
 
 	/* Most of the times we need one retry, avoid spam */
 	if (rewrites > 1)
 		drm_dbg_kms(display->drm,
 			    "Rewrote dc state to 0x%x %d times\n",
-			    state, rewrites);
+			    state & mask, rewrites);
 }
 
 static u32 gen9_dc_mask(struct intel_display *display)
@@ -855,15 +854,13 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 	if (!dc6_was_enabled && enable_dc6)
 		intel_dmc_update_dc6_allowed_count(display, true);
 
-	val &= ~mask;
-	val |= state;
 
-	gen9_write_dc_state(display, val);
+	gen9_write_dc_state(display, state, mask);
 
 	if (!enable_dc6 && dc6_was_enabled)
 		intel_dmc_update_dc6_allowed_count(display, false);
 
-	power_domains->dc_state = val & mask;
+	power_domains->dc_state = state & mask;
 }
 
 static void tgl_enable_dc3co(struct intel_display *display)
-- 
2.43.0

