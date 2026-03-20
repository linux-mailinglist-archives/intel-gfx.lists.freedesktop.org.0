Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nvKcFIv/vGmo5QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:04:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF502D6F11
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2924210EA8D;
	Fri, 20 Mar 2026 08:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9hN9q3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0603110EA8C;
 Fri, 20 Mar 2026 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773993864; x=1805529864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nrfzngWAmfG7J6CZIWATTIMZmcatGj5Vb9kCpbSCNo0=;
 b=k9hN9q3/iC1nOvYmodec83W0wtxjwcAU0rJ6ZNhLLFIZuNiC1QO0wPTJ
 BOcL/5WX2+itE7vCZ312doaaqwHaFzAp0/pXlRGqNAU5mi3Dv/i0DZ/8Q
 lQtbiKpdJMj5T0jugajoqSBKG7TyKewGXyLKHqChlFSliS1XqemYYzT9m
 TeO9zPgyn93Ga5qtR3SlaHRU+M/P3RCuQ4hmDaxp0U8w7X3H8eBRvBdod
 U2U+2f5ez/Y8M/Y57Vf+C+K9npeMF/5X1xYL54rgLwNLJc/qGMJN5pLQB
 dhLY5UM92P1bxdIZuHDCBDp5eU0IZP7R+Y21jIcqKaQUopStHmU2G8IvV Q==;
X-CSE-ConnectionGUID: /LojOS/FSg6nIgfEOcFfjA==
X-CSE-MsgGUID: q0cqToaUSbaAVCfT+UPP5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="85391213"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="85391213"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:04:24 -0700
X-CSE-ConnectionGUID: RQfdRxyLR628kkTFmDjIsQ==
X-CSE-MsgGUID: okmcoCLXTTauidA1p5DOFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="246243573"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.16])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 01:04:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
Date: Fri, 20 Mar 2026 10:04:03 +0200
Message-ID: <20260320080403.1396926-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9CF502D6F11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dell seems to be changing device ID even within same device model. Due to
this we need to ignore device ID when applying quirk for Dell XPS 14
DA14260. Do this by adding DEVICE_ID_ANY and assign it to Dell XPS 14
DA14260 quirk. Also apply the quirk only for eDP Panel Replay.

Fixes: 45c77d4bf8d4 ("drm/i915/psr: Disable Panel Replay on Dell XPS 14 DA14260 as a quirk")
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_quirks.c | 16 ++++++++++------
 drivers/gpu/drm/i915/display/intel_quirks.h |  2 +-
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b319e5bd6274..2f1b48cd8efd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -610,7 +610,8 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 	if (intel_dp->mst_detect == DRM_DP_MST)
 		return;
 
-	if (intel_has_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY)) {
+	if (intel_dp_is_edp(intel_dp) &&
+	    intel_has_dpcd_quirk(intel_dp, QUIRK_DISABLE_EDP_PANEL_REPLAY)) {
 		drm_dbg_kms(display->drm,
 			    "Panel Replay support not currently available for this setup\n");
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 8f1bf8f418ec..883f297d4b83 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -86,11 +86,11 @@ static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
 	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
 }
 
-static void quirk_disable_panel_replay(struct intel_dp *intel_dp)
+static void quirk_disable_edp_panel_replay(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	intel_set_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY);
+	intel_set_dpcd_quirk(intel_dp, QUIRK_DISABLE_EDP_PANEL_REPLAY);
 	drm_info(display->drm, "Applying disable Panel Replay quirk\n");
 }
 
@@ -116,6 +116,8 @@ struct intel_dpcd_quirk {
 
 #define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
 
+#define DEVICE_ID_ANY		0
+
 /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
 struct intel_dmi_quirk {
 	void (*hook)(struct intel_display *display);
@@ -261,11 +263,11 @@ static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
 	},
 	/* Dell XPS 14 DA14260 */
 	{
-		.device = 0xb080,
+		.device = DEVICE_ID_ANY,
 		.subsystem_vendor = 0x1028,
 		.subsystem_device = 0x0db9,
 		.sink_oui = SINK_OUI(0x00, 0x22, 0xb9),
-		.hook = quirk_disable_panel_replay,
+		.hook = quirk_disable_edp_panel_replay,
 	},
 };
 
@@ -277,7 +279,8 @@ void intel_init_quirks(struct intel_display *display)
 	for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
 		struct intel_quirk *q = &intel_quirks[i];
 
-		if (d->device == q->device &&
+		if ((d->device == q->device ||
+		     q->device == DEVICE_ID_ANY) &&
 		    (d->subsystem_vendor == q->subsystem_vendor ||
 		     q->subsystem_vendor == PCI_ANY_ID) &&
 		    (d->subsystem_device == q->subsystem_device ||
@@ -300,7 +303,8 @@ void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
 	for (i = 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
 		const struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
 
-		if (d->device == q->device &&
+		if ((d->device == q->device ||
+		     q->device == DEVICE_ID_ANY) &&
 		    (d->subsystem_vendor == q->subsystem_vendor ||
 		     q->subsystem_vendor == PCI_ANY_ID) &&
 		    (d->subsystem_device == q->subsystem_device ||
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 77e490caed0d..83214eb94b0c 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -21,7 +21,7 @@ enum intel_quirk_id {
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
 	QUIRK_FW_SYNC_LEN,
 	QUIRK_EDP_LIMIT_RATE_HBR2,
-	QUIRK_DISABLE_PANEL_REPLAY,
+	QUIRK_DISABLE_EDP_PANEL_REPLAY,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.43.0

