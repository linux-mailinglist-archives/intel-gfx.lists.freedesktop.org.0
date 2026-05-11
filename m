Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNXUA95mAWpvXwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29B4508251
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3542B10E491;
	Mon, 11 May 2026 05:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Av6HWI17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C1210E48A;
 Mon, 11 May 2026 05:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476763; x=1810012763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PK5FWOXXShxUUTi/k1ZEGyE90wgqCOcvqJtqk20YS6M=;
 b=Av6HWI170vAQy4/1ReA5B17eWOqCBTxW9/T/tKH3UfK9BHnN1N21OtIQ
 CGTMV4LBO6Va3ar+2bx62VfD9TT3rLjnCKbjzGXP1HQhPot15ioEZW52x
 quB/Xs6hIF7jgEeiV0NRptVOjeDuEeS6wGOBxhUUqTdLJUdSrKGbsO44I
 pSA1Pg61E5e3M3cHI2uelDEjiIHBNaeFbL9oIT9FcFztfHAUv1h9w8CaY
 9kLG2BeVWw8UIr2P+l82cVaHEueMf1Mc2pqBJu5CSgo+V9Z5L5HKjl79F
 OKlzHeVS68JKPPm3fvqzpuoSM0XPLb39PBpL/V3wfN+uoR+5m0NBeJ0ht A==;
X-CSE-ConnectionGUID: SD2uMzCQQL+PToloFlarvg==
X-CSE-MsgGUID: 8ctAajccS6GZ94A7Oym+YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921108"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921108"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:23 -0700
X-CSE-ConnectionGUID: XZpZtKUZTyyA4nH9vnjHOg==
X-CSE-MsgGUID: Znl4Cz3fTDaq/ievGkX9qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086276"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:21 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 7/7] drm/i915/dp_tunnel: Re-attach dp_tunnel debugfs to MST
 children on re-detect
Date: Mon, 11 May 2026 11:10:28 +0530
Message-Id: <20260511054028.1310995-8-kunal1.joshi@intel.com>
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
X-Rspamd-Queue-Id: B29B4508251
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

After a tunnel destroy/re-detect cycle (e.g. suspend/resume or a
debugfs-driven BWA toggle), MST child connectors lose their
dp_tunnel/ subdir because only the primary connector is
re-registered via the existing detect_new_tunnel() path.

Walk the live MST child connectors in
intel_dp_tunnel_debugfs_add() and re-register their dp_tunnel/
subdir against the current tunnel. The DRM-core helper
deduplicates entries by parent dentry, so both the initial-detect
and re-detect paths are safe.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index cc36d5651f6a9..c348f17d3c1e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -18,13 +18,40 @@
 
 static void intel_dp_tunnel_debugfs_add(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *iter;
 
 	if (!connector || !intel_dp->tunnel)
 		return;
 
 	drm_dp_tunnel_debugfs_add(intel_dp->tunnel,
 				  connector->base.debugfs_entry);
+
+	/*
+	 * After a tunnel destroy/re-detect cycle the new tunnel object
+	 * has an empty debugfs_dirs list, but MST child connectors are
+	 * not unregistered/re-registered (only the primary path goes
+	 * through intel_connector_debugfs_add() again). Walk live MST
+	 * children of @intel_dp and (re-)register their dp_tunnel/
+	 * subdir against the current tunnel. The DRM-core helper
+	 * deduplicates by parent dentry, so this is safe on the initial
+	 * detect path too.
+	 */
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
+	for_each_intel_connector_iter(iter, &conn_iter) {
+		if (iter == connector)
+			continue;
+		if (iter->mst.dp != intel_dp)
+			continue;
+		if (!iter->base.debugfs_entry)
+			continue;
+
+		drm_dp_tunnel_debugfs_add(intel_dp->tunnel,
+					  iter->base.debugfs_entry);
+	}
+	drm_connector_list_iter_end(&conn_iter);
 }
 
 struct intel_dp_tunnel_inherited_state {
-- 
2.25.1

