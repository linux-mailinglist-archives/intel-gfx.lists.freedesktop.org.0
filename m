Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yE21KjKCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4427BCB441
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A2D10E456;
	Mon,  2 Feb 2026 10:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h44LO5US";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF8B10E23B;
 Mon,  2 Feb 2026 10:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029615; x=1801565615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cxn6EeGwMTuTKcnGEqHtvMdWoVPQBh+298qAW3ei4qk=;
 b=h44LO5USL/CP06h3zUn9EOWjNc2JzufpMhPqKP7U9GUAEILmkRlY1Gq+
 jHTzBz5rf5WBb4ACOeyRtxMxU1AnUFgVhF/KrjVaiXttbZBiSdbnyWgwy
 4I8sQSX3fyHBjjf8NcfSdrpMqpHT/IFN5vVjV3CD8KW2C+UgjwYG5etIN
 wAo4YxRrWPnzTFLRdSzimLo8nbwEP5TX3RFpRQcLPN6ByRGOBDR5nsBuG
 P7d+w0FnrmGumixHjmaD0Ya6Yc7mAze72tpO1YP2R5f9UmEaO7VWEEzd7
 PhOmMK4fq5FTGfj63D2aVJJOsXEWykNI8xKg82g9Q/hSyWfGlMV3EDb+T g==;
X-CSE-ConnectionGUID: 4aWJFj+KQCyTdOSYjBiSbQ==
X-CSE-MsgGUID: iGxlvIK1SCGT4Crm971k6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385038"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385038"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:35 -0800
X-CSE-ConnectionGUID: lse7CuUgS2CBfjNrCI/pnQ==
X-CSE-MsgGUID: 4XhLYdDWQqmze5c+FSTCfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419850"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/17] drm/i915/dp: Remove unused joiner helpers
Date: Mon,  2 Feb 2026 16:07:25 +0530
Message-ID: <20260202103731.357416-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
References: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4427BCB441
X-Rspamd-Action: no action

The helpers intel_dp_num_joined_pipes() and intel_dp_needs_joiner() are no
longer used now that joiner selection iterates over all candidates.
Remove them.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 -------------------------
 drivers/gpu/drm/i915/display/intel_dp.h |  4 ---
 2 files changed, 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eecfbbddbb53..933d4d71aef1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1376,43 +1376,6 @@ int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
 	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
 }
 
-static
-bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
-			   struct intel_connector *connector,
-			   int hdisplay, int clock,
-			   int num_joined_pipes)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (!intel_dp_has_joiner(intel_dp))
-		return false;
-
-	num_joined_pipes /= 2;
-
-	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display);
-}
-
-int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-			      struct intel_connector *connector,
-			      int hdisplay, int clock)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (connector->force_joined_pipes)
-		return connector->force_joined_pipes;
-
-	if (HAS_ULTRAJOINER(display) &&
-	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
-		return 4;
-
-	if ((HAS_BIGJOINER(display) || HAS_UNCOMPRESSED_JOINER(display)) &&
-	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
-		return 2;
-
-	return 1;
-}
-
 bool intel_dp_has_dsc(const struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6d409c1998c9..ebaa35d23c9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -153,10 +153,6 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes);
-int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-			      struct intel_connector *connector,
-			      int hdisplay, int clock);
-
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
 	return ~((1 << lane_count) - 1) & 0xf;
-- 
2.45.2

