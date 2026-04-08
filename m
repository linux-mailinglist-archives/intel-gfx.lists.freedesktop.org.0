Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMBkD6lK1mkFDQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4733BC18C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E8E10E635;
	Wed,  8 Apr 2026 12:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0FEqb9P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6EB510E62E;
 Wed,  8 Apr 2026 12:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651494; x=1807187494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQpV1CZr4Rd7SDt1t8q0k2rfH6fbxaOTxXduZVFTMWI=;
 b=c0FEqb9PEskqNxnu+BU0uKHGjYPeQQegZci/2ZEGKRsQR5X4h7eJE9Qj
 KvfBoIXAexa+vLArg5bM2KgyPiUHOltceTQ2FuSKp/fyYyklrvCLwzFG3
 lgI7lLA+7NZeock+52QHykaBT5P7JojWW8KWvPcD+xKiXprFokFZoFj41
 uHLDqSVFvsoXxHVIzufincWv+crzLg3Q4uDkLyQbVxzPOoNzHJFsdclIV
 I+50frri37JxrqChS5nSa+gn8pOFjcS1pqJY+Tvis3J2MdGbYoHXAT0Xe
 5SP3i/HA7nfVzaoLJa6d6tGa2RP1HGybSsD1hQbpME5rjYt89QFU3jHFw w==;
X-CSE-ConnectionGUID: RV0T8JGeR1a+t8NgVncoqA==
X-CSE-MsgGUID: LsNnkUVQT027dWjq5QgO/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80519068"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80519068"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:34 -0700
X-CSE-ConnectionGUID: /C1G2T+1QBmv394iwTUj/g==
X-CSE-MsgGUID: iZplLemhSJy6wOZRBFCRrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251782028"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 3/9] drm/i915:
 s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
Date: Wed,  8 Apr 2026 15:31:08 +0300
Message-ID: <20260408123115.15716-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
References: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: DD4733BC18C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename the current intel_atomic_check_crtcs() to
intel_atomic_check_crtcs_late() to indicate it is indeed
done rather late during intel_atomic_check(). I'll be
introducing a similar function that will get called earlier
and I want to use the typical foo() vs. foo_late() naming
there.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 58a654ca0d20..aa9e6639f914 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4255,8 +4255,8 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int intel_crtc_atomic_check(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc)
+static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
+					struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
@@ -5814,7 +5814,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
-static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
+static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
@@ -5824,7 +5824,7 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
 
-		ret = intel_crtc_atomic_check(state, crtc);
+		ret = intel_crtc_atomic_check_late(state, crtc);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[CRTC:%d:%s] atomic driver check failed\n",
@@ -6546,7 +6546,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_atomic_check_crtcs(state);
+	ret = intel_atomic_check_crtcs_late(state);
 	if (ret)
 		goto fail;
 
-- 
2.52.0

