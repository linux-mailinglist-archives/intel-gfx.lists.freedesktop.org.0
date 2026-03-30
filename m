Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLjkDIjcymkQAwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0DE360F1B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2609210E7EF;
	Mon, 30 Mar 2026 20:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CH0Pro1E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6493310E7ED;
 Mon, 30 Mar 2026 20:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774902402; x=1806438402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yWKdVGWLcS+oZWd3ZVeNGT1vMsArlHT2W4fmmXMxxSc=;
 b=CH0Pro1EKttxnSmB394lMXYB/k6wS+ey2BwO3Gq/IIhdUYBaeRy/CJ7T
 7bEyB4AjsKGGYutBsewZVBV+xb4AF29PUPpaIX5gNJ4mbIgzYvpxt9j+A
 4wTbZYpUWXNg4JJd2ZBdHJBezW7hO10oRW2mxe5xyaE9Gaad7yi98r6jO
 6CwTi4vhyNuO6+SXRJTghnlgSFXyvu8Myo1zImKkx1gQL2lUyMNro3cow
 AzebPvZVV3oIIeN/O+K4T+2Ox2Xp5nUYi6iVx+pcCSjAWp6QVU3WeBKGz
 MIuABvVDab/zCmosQBEc5XFmiVW3tmj6h3J+4J+ObNZqQszFcptJNd2X8 Q==;
X-CSE-ConnectionGUID: DmToTNRtRfScGndqCB/6eA==
X-CSE-MsgGUID: BicqC/1rSvK6HH9h2Nnvzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="79806014"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="79806014"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:42 -0700
X-CSE-ConnectionGUID: +fRRSs6VR0eLpp3YYiYEeA==
X-CSE-MsgGUID: nmJdgXQZT6e2NMDboa1QtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="231085631"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 2/2] hax: drm/i915: Disable TPS4 support to force
 POST_LT_ADJ_REQ usage
Date: Mon, 30 Mar 2026 23:26:29 +0300
Message-ID: <20260330202629.28616-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
References: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2A0DE360F1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Disable TPS4 in favor of POST_LT_ADJ_REQ for testing purposes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f78..5da3f8a1defa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -796,6 +796,13 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 	source_tps4 = intel_dp_source_supports_tps4(display);
 	sink_tps4 = dp_phy != DP_PHY_DPRX ||
 		    drm_dp_tps4_supported(intel_dp->dpcd);
+
+	/* hax */
+	if (dp_phy == DP_PHY_DPRX &&
+	    drm_dp_post_lt_adj_req_supported(intel_dp->dpcd) &&
+	    crtc_state->port_clock != 810000)
+		sink_tps4 = false;
+
 	if (source_tps4 && sink_tps4) {
 		return DP_TRAINING_PATTERN_4;
 	} else if (crtc_state->port_clock == 810000) {
-- 
2.52.0

