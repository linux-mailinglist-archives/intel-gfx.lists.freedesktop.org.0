Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMr9KNhmAWpvXwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FF750823C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AD310E487;
	Mon, 11 May 2026 05:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATbHD5yh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7070010E481;
 Mon, 11 May 2026 05:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476757; x=1810012757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdtgCU8L5RM97eprdKwvHOi8MJpfK8m7Ubpnf2qk3qA=;
 b=ATbHD5yh/Ix61ZcI3RCSjtw4j90oUYyX4Hre08S6R7InY5aS7YvTaz4B
 VqFZW5pvxAzVJvdQPGHWS+uo9kQ5aIUULNjNwciAt2ZjFjYQJUkMO8P2f
 ZfHlZMtmUUzPN7KF3oLAAcS71Rp0VniRcBmQr/rGemTBWBEl2YYE6/KTZ
 6jO/7f3HGddsfmebHxKSCy6tQ886lGeku6VvhvP0SKT9dmE5IzmECdDlH
 Ww4oeah0q5saS8UL8M1Y7YO2LSupvpJumiFx021b0p6sKj+kDo8yqcmkq
 DjRfRheunoHG+Mkc7d8toruMIXASFqVK6Ik7yJ/hDlXD0zyDHPhGvm3PG A==;
X-CSE-ConnectionGUID: NJAWCH6aQ/G9yCaYP20KxQ==
X-CSE-MsgGUID: SrOlWYt2SMy02neE8xUmxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921103"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921103"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:17 -0700
X-CSE-ConnectionGUID: hgZci6CxQUip71AljFnFPA==
X-CSE-MsgGUID: +my3kOHlRv6gLSqay52Wbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086251"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:16 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 4/7] drm/i915/dp_tunnel: Wire up DP tunnel debugfs from DRM core
Date: Mon, 11 May 2026 11:10:25 +0530
Message-Id: <20260511054028.1310995-5-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511054028.1310995-1-kunal1.joshi@intel.com>
References: <20260511054028.1310995-1-kunal1.joshi@intel.com>
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
X-Rspamd-Queue-Id: 58FF750823C
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
	FROM_NEQ_ENVFROM(0.00)[kunal1.joshi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

The DRM-core tunnel debugfs helpers need a driver-side call site.
Wire them into detect_new_tunnel() so the dp_tunnel/ subdir is
created once the tunnel's BWA state has settled, giving IGT and
developers access to the tunnel info/knobs through debugfs.

The helper is invoked on all three retained-tunnel branches in
detect_new_tunnel() (BWA unsupported, BWA enable failure, and
successful state update). Error paths that destroy the tunnel
do not register debugfs.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 23 ++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 11712a151f729..cc36d5651f6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -16,6 +16,17 @@
 #include "intel_dp_tunnel.h"
 #include "intel_link_bw.h"
 
+static void intel_dp_tunnel_debugfs_add(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	if (!connector || !intel_dp->tunnel)
+		return;
+
+	drm_dp_tunnel_debugfs_add(intel_dp->tunnel,
+				  connector->base.debugfs_entry);
+}
+
 struct intel_dp_tunnel_inherited_state {
 	struct drm_dp_tunnel_ref ref[I915_MAX_PIPES];
 };
@@ -214,8 +225,10 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 
 	ret = drm_dp_tunnel_enable_bw_alloc(intel_dp->tunnel);
 	if (ret) {
-		if (ret == -EOPNOTSUPP)
+		if (ret == -EOPNOTSUPP) {
+			intel_dp_tunnel_debugfs_add(intel_dp);
 			return 0;
+		}
 
 		drm_dbg_kms(display->drm,
 			    "[DPTUN %s][ENCODER:%d:%s] Failed to enable BW allocation mode (ret %pe)\n",
@@ -224,6 +237,7 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 			    ERR_PTR(ret));
 
 		/* Keep the tunnel with BWA disabled */
+		intel_dp_tunnel_debugfs_add(intel_dp);
 		return 0;
 	}
 
@@ -238,6 +252,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 	if (ret)
 		return ret;
 
+	/*
+	 * Register debugfs only after BWA negotiation has fully
+	 * settled so the first read of 'info' shows steady-state
+	 * values rather than transient ones.
+	 */
+	intel_dp_tunnel_debugfs_add(intel_dp);
+
 	return has_tunnel_bw_changed(intel_dp, old_bw) ? 1 : 0;
 }
 
-- 
2.25.1

