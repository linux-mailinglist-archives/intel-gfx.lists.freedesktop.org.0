Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE9jGo1RcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DA350D4D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CE610E6B5;
	Wed, 21 Jan 2026 04:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XH6uM9AB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BB210E6CA;
 Wed, 21 Jan 2026 04:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968585; x=1800504585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sbn3j0AH/hr//TZvIGMuzhNJCUK+ZxVxYj4BmuA1zns=;
 b=XH6uM9ABEE/TH03uifaH+XpQUChDYt2JF+bC4W/qXxFprnZgigGc9pby
 QC6gwpzBreKqs6RRSlErwzCS9v7UAsLP4/AdteGNGcNuFYsCeCvRQd2TM
 AV58veUfh8pMpqJN5PVJn9Y/wpqEGBcp+yw0saI3YZJq6k7P/dcVQUJGq
 7eSUqPD1m8I3UUMNVugaKsQstmm6DKBPqL4/P0x2rOELBOPhXZgXZwZHl
 kFeYhUo/6a7KM0UTlDdkuHWFl2IOZcmvznZY6BMWlZAmK/E59WU6Znk4X
 +12MPcc8yuw6e3Xq1QOjUmfH/028tedSewLznQRFiu1Yy+znvM5UXaVmL g==;
X-CSE-ConnectionGUID: I0Cek++yQn29yEpBWkiayA==
X-CSE-MsgGUID: qkLpcAHxQd+2M2H2xt81ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299970"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299970"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:45 -0800
X-CSE-ConnectionGUID: X5G23+qoR8WfZqjPKJgyZQ==
X-CSE-MsgGUID: EeJiS0iKSJKUVE4Qlwa8Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330986"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:45 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/14] drm/i915/dp: Refactor dsc_slice_count handling in
 intel_dp_mode_valid()
Date: Wed, 21 Jan 2026 09:23:28 +0530
Message-ID: <20260121035330.2793386-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 02DA350D4D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make dsc_slice_count closer to the block where it is used and promote it
from u8 to int. This aligns it with upcoming DSC bubble pixel-rate
adjustments, where the slice count participates in wider arithmetic.

Currently, for non-eDP (DP/DP_MST) cases  the slice count is computed only
inside intel_dp_dsc_mode_valid() and is not used by the caller. Once DSC
bubble handling is added, dp_mode_valid() will need access to its own local
slice count for non-eDP cases as well.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ed81cf4adb9b..9f73a1307b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1464,7 +1464,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	u16 dsc_max_compressed_bpp = 0;
-	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
@@ -1508,6 +1507,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
+		int dsc_slice_count = 0;
 
 		status = MODE_CLOCK_HIGH;
 
@@ -1534,6 +1534,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (intel_dp_has_dsc(connector)) {
 			int pipe_bpp;
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       target_clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			/*
 			 * TBD pass the connector BPC,
 			 * for now U8_MAX so that max BPC on that platform would be picked
@@ -1548,12 +1553,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 				dsc_max_compressed_bpp =
 					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
 
-				dsc_slice_count =
-					intel_dp_dsc_get_slice_count(connector,
-								     target_clock,
-								     mode->hdisplay,
-								     num_joined_pipes);
-
 				dsc = dsc_max_compressed_bpp && dsc_slice_count;
 			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 				unsigned long bw_overhead_flags = 0;
-- 
2.45.2

