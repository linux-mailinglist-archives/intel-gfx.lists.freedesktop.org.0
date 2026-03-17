Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XE5ZI57zuGkNmQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:24:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A291F2A4470
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B6810E077;
	Tue, 17 Mar 2026 06:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ms5j0NDH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEFF10E077;
 Tue, 17 Mar 2026 06:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773728666; x=1805264666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oGe2lHFbaF5LJY268L1b0fIv8UWr+GLURzvBLmHz1V8=;
 b=Ms5j0NDHVjqxl8d8whjr3jlefcOnsxVYGo1OGIyOoDHBvINE56VszAlB
 LvQNSqbQqixAc/GB7V86XtsCWDDhMej2C0xq0HOAKlceIjj5Lh09FfZng
 WlX1PfKCbDx1py3dbGv+XueRAolciyU+hKctdWYZQH8e/aqASg/YxcItn
 2DoW6MtK4ZTzEgRy4YfH1BjpM9wooLoHW3WE5FFItIbvkwUdQEu2aXdbW
 5AiOSB5FmhwRoZpCjtFyN2/hwLHyyPXAjtJcxi1YIFAgkUE3CPCaXuOSw
 zLAsv7LjyjZgAGpXBG8WMbRSW5IrLh1qmnwINtLGDk9oI4prh7BhSYqBB w==;
X-CSE-ConnectionGUID: rWZUH6TQSBCIpNy13RgEOQ==
X-CSE-MsgGUID: Y8HQgB2BT1OtThqslvoeYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="92324167"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="92324167"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:24:25 -0700
X-CSE-ConnectionGUID: CayonRddR263qdFzhLNMVQ==
X-CSE-MsgGUID: +V0VkEXhQ7ezL+rCjRdAqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221186921"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:24:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jonathan.cavitt@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 14 DA14260 as
 a quirk
Date: Tue, 17 Mar 2026 08:24:02 +0200
Message-ID: <20260317062402.1888624-1-jouni.hogander@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A291F2A4470
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new quirk (QUIRK_DISABLE_PANEL_REPLAY) for disabling Panel Replay as
quirk for problematic setups. Apply this newly added quirk on Dell XPS 14
DA14260 if specific panel model is installed.

We are observing problems with Dell XPS 14 DA14260. This device has certain
LGD panel model which seems to be problematic. We have seen other LGD panel
model with same OUI is working fine. Due to this we can't apply the quirk
only based on panel OUI. There are also cases where same device model has
differing panel model. We don't want to disable Panel Replay on such
devices. Best we can do is to apply the quirk based on both device model
and panel model.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7521
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c    |  7 +++++++
 drivers/gpu/drm/i915/display/intel_quirks.c | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c13116e6f17f..b319e5bd6274 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -49,6 +49,7 @@
 #include "intel_hdmi.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_quirks.h"
 #include "intel_snps_phy.h"
 #include "intel_step.h"
 #include "intel_vblank.h"
@@ -609,6 +610,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 	if (intel_dp->mst_detect == DRM_DP_MST)
 		return;
 
+	if (intel_has_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY)) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay support not currently available for this setup\n");
+		return;
+	}
+
 	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
 				    &connector->dp.panel_replay_caps.dpcd,
 				    sizeof(connector->dp.panel_replay_caps.dpcd));
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 1abbdd426e58..8f1bf8f418ec 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -86,6 +86,14 @@ static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
 	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
 }
 
+static void quirk_disable_panel_replay(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	intel_set_dpcd_quirk(intel_dp, QUIRK_DISABLE_PANEL_REPLAY);
+	drm_info(display->drm, "Applying disable Panel Replay quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -251,7 +259,14 @@ static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
 		.sink_oui = SINK_OUI(0x38, 0xec, 0x11),
 		.hook = quirk_fw_sync_len,
 	},
-
+	/* Dell XPS 14 DA14260 */
+	{
+		.device = 0xb080,
+		.subsystem_vendor = 0x1028,
+		.subsystem_device = 0x0db9,
+		.sink_oui = SINK_OUI(0x00, 0x22, 0xb9),
+		.hook = quirk_disable_panel_replay,
+	},
 };
 
 void intel_init_quirks(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 06da0e286c67..77e490caed0d 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -21,6 +21,7 @@ enum intel_quirk_id {
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
 	QUIRK_FW_SYNC_LEN,
 	QUIRK_EDP_LIMIT_RATE_HBR2,
+	QUIRK_DISABLE_PANEL_REPLAY,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.43.0

