Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKwyBb4mzmnIlQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B672B385DCE
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2955E10F15F;
	Thu,  2 Apr 2026 08:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTtHlzux";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECAD810F15F;
 Thu,  2 Apr 2026 08:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775118011; x=1806654011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mhyl2acK6gV+hYyTEcNBNyld9COktqBszwckMKxWXXM=;
 b=fTtHlzuxFy52nqb3WhJLoyiEyYrhe5o/rEFItjyJz8lG9Sauly+h6rcz
 Wp1z1RNQXC4Ln4cEC/S2ezNTIRL8I3vyabm1Aas6pBkZMDKaCACzw3adi
 N4McXMwVJLTYLMk8JMeixIubunS7RbESymWzb+Tp8PT3PWDdh1F4FgQ3z
 ncmlp5vT+R1gGuXAxgvFHwPrlRNmrFXn7X8j/8vzqxBUxr3MOGGJIzm/P
 7yVS9IIvPCECh2iM4GQHKFg08Sq/6Z05jLirKk2MtSbQHsbEfPJdBIzV5
 Hi+TQldqQsDi5gXomgnmZlfcSxoN6ljf3f30zsFb9/USFuBk9YHX8c2G5 Q==;
X-CSE-ConnectionGUID: 8yZlAxz2Rg+zkio7YWH5Rw==
X-CSE-MsgGUID: NVoGG6RgQBmmtqNsiP9gEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80060532"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="80060532"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:11 -0700
X-CSE-ConnectionGUID: fd1fQ2FiTxOMVT4Ntt1Wxw==
X-CSE-MsgGUID: DPAJdMMMQ1a9ojm71Wx+Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226776228"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/23] drm/i915/dp: Add member to intel_dp to store AS SDP v2
 support
Date: Thu,  2 Apr 2026 13:34:14 +0530
Message-ID: <20260402080425.548702-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B672B385DCE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DP v2.1 SCR advertises support for FAVT payload fields parsing in DPCD
0x2214 Bit 2. This indicates the support for Adaptive-Sync SDP version 2
(AS SDP v2), which allows the source to set the version in HB2[4:0] and the
payload length in HB3[5:0] of the AS SDP header.

DP v2.1 SCR also introduces ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR in the
Panel Replay Capability DPCD 0x00b1 (Bit 3). When this bit is set, the sink
does not support asynchronous video timing while in a Panel Replay Active
state and the source is required to keep transmitting Adaptive-Sync
SDPs. The spec mandates that such sinks shall support AS SDP v2.

Infer AS SDP v2 support from these capabilities and store it in
struct intel_dp for use by subsequent feature enablement changes.

v2: Include parsing ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR bit to
    determine AS SDP v2 support. (Ville)
v3: Use helper to determine asynch video timing support.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..efc609eef4f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1870,6 +1870,7 @@ struct intel_dp {
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
 	bool as_sdp_supported;
+	bool as_sdp_v2_supported;
 
 	struct drm_dp_tunnel *tunnel;
 	bool tunnel_suspended:1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cec0f3d03c2f..9fd768447f28 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6306,6 +6306,36 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 					       false);
 }
 
+static bool
+intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
+{
+	u8 rx_features;
+
+	/*
+	 * The DP spec does not explicitly provide the AS SDP v2 capability.
+	 * So based on the DP v2.1 SCR, we infer it from the following bits:
+	 *
+	 * DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED indicates support for
+	 * FAVT, which is explicitly defined to use AS SDP v2.
+	 *
+	 * DP_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR indicates that the sink
+	 * does not support asynchronous video timing while in PR Active,
+	 * requiring the source to keep transmitting Adaptive-Sync SDPs. The
+	 * spec mandates that such sinks shall support AS SDP v2.
+	 */
+	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
+				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
+				  &rx_features) == 1) {
+		if (rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED)
+			return true;
+	}
+
+	if (!intel_psr_pr_async_video_timing_supported(intel_dp))
+		return true;
+
+	return false;
+}
+
 static void
 intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 {
@@ -6313,6 +6343,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 
 	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
 		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
+
+	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
+					intel_dp_sink_supports_as_sdp_v2(intel_dp);
 }
 
 static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
-- 
2.45.2

