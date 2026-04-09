Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICboEl8T2Gm9XAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:00:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4B83CFAFA
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FF910E83A;
	Thu,  9 Apr 2026 21:00:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WW8vRW/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA81A10E83A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 21:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775768412; x=1807304412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vbq/FyvzexLLCZHR0+83/NTNHj/Np/2neGiL7uGWDQs=;
 b=WW8vRW/CdC3T/uHpapMpLgqgS0tBaObgOCe2Z2m5LlDl1SlpA0T9bEuy
 VOqrEcca/Jx185+kC87vmhlIBHtOgzVSt4IsjYZgk9ZiDiqBrtTPIihd0
 gNpyi3gz3PYb8xPDx0vLFb3Lfbvdk6JrqAPag1Om+DEZ0TetzJvUqAT7u
 7F8kouMrQwYyRQbtK+jW1kxIz4uWquK7UVKb0AivkZSIuXnXi87wzV/tN
 5GwoUKLpSHNNY+OasS2ESXbkh2Rt8JiMlfieXevWmfMs3ZTHp8xWDA+JA
 szl1Rt2gHu8E1iSrHOsAW4wKe7KOsHZemdavIjQQFu2AuUc6JuKLRktcg A==;
X-CSE-ConnectionGUID: nm8QT4acR0CcwIh5A8qOzA==
X-CSE-MsgGUID: 16NQrP3PS929qZwVQlgGNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76805640"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="76805640"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 14:00:03 -0700
X-CSE-ConnectionGUID: 7TvHt6ZdT8OJvKZOd41a5Q==
X-CSE-MsgGUID: YP5//s2WTW6NP73O8NVuvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="226158819"
Received: from dut4086lnl.fm.intel.com ([10.105.10.39])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 14:00:02 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH] drm/i915/display: Check some INVALID_TRANSCODER cases
Date: Thu,  9 Apr 2026 21:00:02 +0000
Message-ID: <20260409210001.64901-2-jonathan.cavitt@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: BF4B83CFAFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are some cases in intel_ddi.c, such as in intel_ddi_is_audio_enabled
and intel_ddi_compute_config_late, where we attempt to perform a BIT
shift using a passed transcoder enum value.  This value may be -1,
INVALID_TRANSCODER, which can result in undefined behavior if this
occurs.

In the former case, we can simply return false if this is the transcoder
passed (as audio is not enabled on an invalid transcoder).

In the latter case, the likely expected behavior is to set the
crtc_state->sync_mode_slaves_mask to zero, so just do that directly and
avoid a risky bit shift.

The likelihood of either case occurring during normal execution is
unknown and possibly very low.  Regardless, this covers a static analyis
issue.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 178074316a2c..7abeb60779e5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3875,7 +3875,8 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 static bool intel_ddi_is_audio_enabled(struct intel_display *display,
 				       enum transcoder cpu_transcoder)
 {
-	if (cpu_transcoder == TRANSCODER_EDP)
+	if (cpu_transcoder == TRANSCODER_EDP ||
+	    cpu_transcoder == INVALID_TRANSCODER)
 		return false;
 
 	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
@@ -4637,8 +4638,13 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 
 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
 		crtc_state->master_transcoder = INVALID_TRANSCODER;
-		crtc_state->sync_mode_slaves_mask =
-			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
+		if (crtc_state->cpu_transcoder == INVALID_TRANSCODER ||
+		    !port_sync_transcoders)
+			crtc_state->sync_mode_slaves_mask = 0;
+		else
+
+			crtc_state->sync_mode_slaves_mask =
+				port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
 	}
 
 	return 0;
-- 
2.43.0

