Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEDiOdpmAWpUYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCDC508243
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186D810E48C;
	Mon, 11 May 2026 05:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MP8ONWbA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5652710E48A;
 Mon, 11 May 2026 05:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476759; x=1810012759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzAf+RbtoKnr80tkXmxnMeO9xfCkGU/XQ2HU4KIhoEA=;
 b=MP8ONWbAuPMzjlKomZrg2TbuYyl1q3F/GZj/MvimNW3Gssqi9ntLB7KN
 EQVnt+kqUsyRGTAxiZzt59WkQG6O5Lc/8JENYKmUBEhGzkbgNnpNvevMx
 uoOnyQBPQi9hzc2z9346yE0kveyVKy4YPOCxmISuW75sWE4giOt3Ai28s
 Sedz44h6mNM8vNSG4PKy92gkf4Yhz3og+LrH4k0sWoGOUl8ZlaykNuyXX
 TwgO9GJpYqDas1qeWi+5aRZMivjzh4Mhg9WvQ7UPxapfcsYzT6jwL1O+j
 cDOPPQHGkh5UcvU2B2Dd0/A5l7c5WNnGl4u+3WEAZXM+oCQwqSTuQerjY A==;
X-CSE-ConnectionGUID: q3cTgd5oTC+LjXXMr3kkiw==
X-CSE-MsgGUID: DJTRZmuWQTeBg3dYIqmFzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921106"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921106"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:19 -0700
X-CSE-ConnectionGUID: dz8APxKzRo+ZJ8rBFqSKXA==
X-CSE-MsgGUID: 9RYZ9A3nQeWv8da9b6NSFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086257"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:18 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 5/7] drm/i915/display: Expose DP tunnel debugfs under each
 connector
Date: Mon, 11 May 2026 11:10:26 +0530
Message-Id: <20260511054028.1310995-6-kunal1.joshi@intel.com>
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
X-Rspamd-Queue-Id: 9BCDC508243
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

The dp_tunnel/ subdir is only registered for the primary connector.
MST child connectors that share the same backing tunnel need their
own dp_tunnel/ entry so IGT can read per-connector tunnel state.

Register dp_tunnel/ from intel_connector_debugfs_add() for every
DP/eDP connector that owns a tunnel, resolving intel_dp via
connector->mst.dp for MST children. Add
drm_dp_tunnel_debugfs_remove() from both SST/eDP and MST
->early_unregister hooks to prevent stale dentry pointers when
connectors are torn down before the tunnel.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 ++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 11 ++++++++++
 3 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 81bef000a4e3e..b77e320348a83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -13,6 +13,7 @@
 #include <drm/drm_file.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/display/drm_dp_tunnel.h>
 #include <drm/intel/intel_gmd_misc_regs.h>
 
 #include "hsw_ips.h"
@@ -1338,6 +1339,27 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_dp_link_training_debugfs_add(connector);
 	intel_link_bw_connector_debugfs_add(connector);
 
+	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_eDP) {
+		struct intel_dp *intel_dp;
+
+		/*
+		 * For MST child connectors the relevant intel_dp is
+		 * pointed to by connector->mst.dp; intel_attached_dp()
+		 * follows the SST/eDP encoder path. Pick the right one
+		 * so MST children also get a dp_tunnel/ subdir under
+		 * their own connector debugfs root.
+		 */
+		if (connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
+		    connector->mst.dp)
+			intel_dp = connector->mst.dp;
+		else
+			intel_dp = intel_attached_dp(connector);
+
+		if (intel_dp && intel_dp->tunnel)
+			drm_dp_tunnel_debugfs_add(intel_dp->tunnel, root);
+	}
+
 	if (DISPLAY_VER(display) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 86123614b7bae..540cd03a7a40d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6644,6 +6644,17 @@ intel_dp_connector_unregister(struct drm_connector *_connector)
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
+	/*
+	 * Drop any DP tunnel debugfs entries registered under this
+	 * connector before drm_connector core tears down the connector
+	 * debugfs root. The SST tunnel object itself outlives the
+	 * connector (destroyed in intel_dp_encoder_flush_work()), so
+	 * stale dentries would otherwise be left on tunnel->debugfs_dirs.
+	 */
+	if (intel_dp->tunnel)
+		drm_dp_tunnel_debugfs_remove(intel_dp->tunnel,
+					     connector->base.debugfs_entry);
+
 	drm_dp_cec_unregister_connector(&intel_dp->aux);
 	drm_dp_aux_unregister(&intel_dp->aux);
 	intel_connector_unregister(&connector->base);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8f73e01db17c9..7ed6722fb7f79 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -32,6 +32,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/display/drm_dp_tunnel.h>
 #include <drm/intel/step.h>
 
 #include "intel_atomic.h"
@@ -1435,6 +1436,16 @@ static void
 mst_connector_early_unregister(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = connector->mst.dp;
+
+	/*
+	 * Drop the per-connector dp_tunnel/ debugfs entry before the
+	 * connector's debugfs root is recursively removed, so the
+	 * tunnel does not retain a stale dentry pointer.
+	 */
+	if (intel_dp && intel_dp->tunnel)
+		drm_dp_tunnel_debugfs_remove(intel_dp->tunnel,
+					     connector->base.debugfs_entry);
 
 	intel_connector_unregister(&connector->base);
 	drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
-- 
2.25.1

