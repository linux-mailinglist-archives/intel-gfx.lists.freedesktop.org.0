Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAamK66Ye2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AD6B2DF3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED29C10E8C3;
	Thu, 29 Jan 2026 17:28:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jkyzacAV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A806510E8BC;
 Thu, 29 Jan 2026 17:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707689; x=1801243689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HIsUMvX/pwgXdKR38pAWfrhcnqDLo1yc2SZS3DpUR/g=;
 b=jkyzacAV4/n6JJGFvJVmC1rAar4fWt4oeg7fny2cF5dLDjJXBDN05Pys
 JhbxtpLG3DtEOxq3ada/d6MhMykWWmBJuD8p0MEmQE3r330zoG4rB8/zh
 D//BQa6JtxuVRe/0lW6yEQrhJMD/kO5mG8C8SYruHbjXvZu3F+IQIJw4J
 GV8fkzo3PzVQ/48w6e0nEni9pUm+gR2o2m9ZSc72yw420pIeukAUvTwCD
 57dfu3gjI1t9Txv96nFtr9gknUfMZV3Pn+R7CEfR2KOpzx3ZqeIjsJ0ay
 003AcQXXI13HWQWK8/hFtCXH+sSLoZ/6y66tcjnJHgEZ0LtJ1Wtb1gpHD g==;
X-CSE-ConnectionGUID: qqLFc346Q9u3zvUVv4Qo6A==
X-CSE-MsgGUID: EzlW4ifKRdaW2bd+td4GKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926917"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926917"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:09 -0800
X-CSE-ConnectionGUID: YJOyk2CgTlGbfupFgQ0FCA==
X-CSE-MsgGUID: /eaTt6N5QO6T8zgIOKyjbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361070"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/16] drm/i915/dp: Remove unused joiner helpers
Date: Thu, 29 Jan 2026 22:41:49 +0530
Message-ID: <20260129171154.3898077-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 62AD6B2DF3
X-Rspamd-Action: no action

The helpers intel_dp_num_joined_pipes() and intel_dp_needs_joiner() are no
longer used now that joiner selection iterates over all candidates.
Remove them.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 -------------------------
 drivers/gpu/drm/i915/display/intel_dp.h |  4 ---
 2 files changed, 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index febfea641e56..ae1aef445cf7 100644
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

