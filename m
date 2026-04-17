Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBfQJ0gK4mmE0wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:24:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E076141A149
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 12:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DF910E215;
	Fri, 17 Apr 2026 10:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvupPBqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA0910E215;
 Fri, 17 Apr 2026 10:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776421445; x=1807957445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9N1usB9UwuGdvVCWn9wM6WTJPDPBK6OE7Hz2Y0xrWVU=;
 b=EvupPBqhkipz6eCDhl9bPYcNYUlzNORcXt0WmRhtx+EhczoKS6iz7PDs
 hAOBCCnoO0N5Q3htJepstgJFh0pKghP/6CKF9795679zY3+tDU5pqeivP
 r4OQnGK/snIjWPvHVMZv2IkgCCpLb477QH6MsSzf8j0jF8hMxZhaR3NwE
 2WI308ArsvHsDCxE7wdheOk+mxr8nBjWXNGacdqmO99jYaZNPNw9L8U+J
 +S2jc1G12ZcklVFnN50ObiMfBtYB45nof/j5rOC9HtRY7qcqxYAPSYqyv
 TAjtOc2V5vO1EMBRT5+GKDdaxM1+zmvkfiYBFIu9XWPoNgtJNVZhIMTzf Q==;
X-CSE-ConnectionGUID: m2KdBwT7QAWuZhLGIgEQJQ==
X-CSE-MsgGUID: j+Onug5sTOKFGOsbSZz9Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77556006"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77556006"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:24:05 -0700
X-CSE-ConnectionGUID: /O4L3HIUQtOaIxSHw4LfXQ==
X-CSE-MsgGUID: VFAk/AMESdaDQUJdFMwG9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="230137537"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.179])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:24:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026 as a
 quirk
Date: Fri, 17 Apr 2026 13:23:50 +0300
Message-ID: <20260417102350.28328-1-jouni.hogander@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: E076141A149
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new quirk (QUIRK_DISABLE_PSR2) for disabling PSR2 as a quirk for
problematic setups. Apply this newly added quirk on Xiaomi Book Pro 14
2026.

v2: logging adjusted

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/7677
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c    | 3 +++
 drivers/gpu/drm/i915/display/intel_quirks.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h | 1 +
 3 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 63c19958a9e3..d1bae7d32617 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -695,6 +695,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 
 	connector->dp.psr_caps.sync_latency = intel_dp_get_sink_sync_latency(intel_dp);
 
+	if (intel_has_quirk(display, QUIRK_DISABLE_PSR2))
+		return;
+
 	if (DISPLAY_VER(display) >= 9 &&
 	    connector->dp.psr_caps.dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = connector->dp.psr_caps.dpcd[1] &
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 883f297d4b83..d1c428eeb608 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -94,6 +94,12 @@ static void quirk_disable_edp_panel_replay(struct intel_dp *intel_dp)
 	drm_info(display->drm, "Applying disable Panel Replay quirk\n");
 }
 
+static void quirk_disable_psr2(struct intel_display *display)
+{
+	intel_set_quirk(display, QUIRK_DISABLE_PSR2);
+	drm_info(display->drm, "PSR2 support not currently available for this setup, applying disable PSR2 quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -250,6 +256,9 @@ static struct intel_quirk intel_quirks[] = {
 
 	/* Dell XPS 13 7390 2-in-1 */
 	{ 0x8a52, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
+
+	/* Xiaomi Book Pro 14 2026 */
+	{ 0xb081, 0x1d72, 0x2424, quirk_disable_psr2 },
 };
 
 static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 83214eb94b0c..970a4fe52faf 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -22,6 +22,7 @@ enum intel_quirk_id {
 	QUIRK_FW_SYNC_LEN,
 	QUIRK_EDP_LIMIT_RATE_HBR2,
 	QUIRK_DISABLE_EDP_PANEL_REPLAY,
+	QUIRK_DISABLE_PSR2,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.43.0

