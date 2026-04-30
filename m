Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GLREY3M8mmWuQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D277B49CE14
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54CDC10F204;
	Thu, 30 Apr 2026 03:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0YLSUzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDB910F1F3;
 Thu, 30 Apr 2026 03:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777519750; x=1809055750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2bknRvP/utNIXPi+EO9ezxzbuxkhgRCbYXVFoLgIKTg=;
 b=b0YLSUzrWMyF4NpEJt+7O9ryx/MqHPQ3jyL2/Nv6iVfkFiWgDOtJHV6S
 4OhsrDFVBPxVbf2xKGLAsiqZBSafdAdmygH8tGAxKEV2DyU/bkek/24lN
 Z6o5pumdwcL6kFIcKJxea+8MdS7cGLSVr4hszjw59txN4XvGWQCpwwhkb
 7tFQg9lIwXe23IaBYk78CN9jc9SfDcBSu88EGnlKTmQq1wjQ7VWEi8dH0
 sLARhMBQ3DFjF3BuQVg0CWucPkZ10iOCH1uWQKPR67D/Ao4eNgw3tufij
 EVby/ggapI3EQIJno/SPxgd63KzUIHRTc5T4yPjWnw43kRNrinyKtBOB6 Q==;
X-CSE-ConnectionGUID: w8FD7y52QZSwViCc/6MhTA==
X-CSE-MsgGUID: T/uAucGATquzPXkOIvxuzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="65993083"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="65993083"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 20:29:10 -0700
X-CSE-ConnectionGUID: 4+QbHV91Sx6SB04/s1Rjlw==
X-CSE-MsgGUID: Wp++u/R4QeGRLTYr+6G8nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="238431557"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 29 Apr 2026 20:29:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, fnu.vishwanatha@intel.com,
 santhosh.reddy.guddati@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/915/hdcp: Use new MST topology state in
 intel_conn_to_vcpi()
Date: Thu, 30 Apr 2026 08:59:01 +0530
Message-Id: <20260430032902.3409731-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260430032902.3409731-1-suraj.kandpal@intel.com>
References: <20260430032902.3409731-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: D277B49CE14
X-Rspamd-Action: no action
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

intel_conn_to_vcpi() runs from the HDCP enable path in commit_tail
and looks up the VCPI via mgr->base.state. When an ALLOCATE_PAYLOAD
is being driven on the mgr just before HDCP enable, that payload
list is being mutated in place, so the lookup can miss the port and
trip drm_WARN_ON(!payload), causing HDCP to be programmed with
VCPI 0.
Use drm_atomic_get_new_mst_topology_state() to read the topology
state attached to this atomic commit (stable, decided in
atomic_check), and bail out cleanly when no topology state or
payload is present for this port instead of WARNing.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9b4ff3b80b05..91d2d7d823cc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -72,6 +72,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
 	struct drm_dp_mst_topology_state *mst_state;
@@ -82,9 +83,14 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 	mgr = connector->mst.port->mgr;
 
 	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
-	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
+	mst_state = drm_atomic_get_new_mst_topology_state(&state->base, mgr);
+	if (!mst_state) {
+		drm_dbg_kms(display->drm, "MST topology still not created\n");
+		return 0;
+	}
+
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->mst.port);
-	if (drm_WARN_ON(mgr->dev, !payload))
+	if (!payload)
 		return 0;
 
 	return payload->vcpi;
-- 
2.34.1

