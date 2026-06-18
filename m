Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I9KWIeW/M2r8FgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:52:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D169F01A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:52:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LvWLP81R;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D64110ED8C;
	Thu, 18 Jun 2026 09:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E938F10ED8C;
 Thu, 18 Jun 2026 09:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781776355; x=1813312355;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f1dvI/ta2tXYzk8q4VCztgxtaKTjH0/UAyL2WpZBUno=;
 b=LvWLP81RGKVOZThWN3azsQ9HcJ+5PoqnufZITSO6fH9hnOLFiugJFkuL
 scQrRCFPgRw7R4SDAsnv9GH70+NWyfhqUFUjRc2HLJa4tzOotoOMW27JH
 B3JMPiYR3bqodDG+yaJW0w53qQ7KevyEU5XUugq7LSVZ7h6RDaYJ4W0SM
 2cKzPXB231FKxy61MHCDhLRPGTsOrFgWgHFsF1EuQ78dCuKbXWU9DB2jD
 3G8Let06aqArIymQe6iMDXpOVz8mgzTgCf6W0DaprcuVDCgRTQHv2nTzv
 GCbDtxm93qroTObIyz/zVFflqPTlKU/5CdE4DhZTRzg+PTLwRowTYlLv0 g==;
X-CSE-ConnectionGUID: PKlwbp1pTymYGbQGISj8zg==
X-CSE-MsgGUID: GlMzhKtsRmO82YRCDq1uug==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82476036"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82476036"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:52:34 -0700
X-CSE-ConnectionGUID: oI2mZsFRQ6OcfiKwVu6yEQ==
X-CSE-MsgGUID: 0F0o0KXOTKG3/6NfjYzZLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="247175507"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.248])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:52:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Date: Thu, 18 Jun 2026 12:52:09 +0300
Message-ID: <20260618095210.853339-1-jouni.hogander@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 073D169F01A

Currently intel_psr_fast_set_force is forcing fastset only for eDP
connectors. Panel Replay is supported on DP as well and writing
i915_edp_psr_debug is setting debug parameters for each DP transcoder
(struct intel_dp:psr:debug). Force fastset for each connector supporting
PSR or Panel Replay. While modifying the code also switch to
for_each_intel_connector_iter.

v2:
  - use for_each_intel_connector_iter
  - update and improve commit message

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 911afb9cb24e3..622edfb6a7fb2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3375,7 +3375,7 @@ static int intel_psr_fastset_force(struct intel_display *display)
 	struct drm_connector_list_iter conn_iter;
 	struct drm_modeset_acquire_ctx ctx;
 	struct drm_atomic_commit *state;
-	struct drm_connector *conn;
+	struct intel_connector *connector;
 	int err = 0;
 
 	state = drm_atomic_commit_alloc(display->drm);
@@ -3389,14 +3389,15 @@ static int intel_psr_fastset_force(struct intel_display *display)
 
 retry:
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
-	drm_for_each_connector_iter(conn, &conn_iter) {
+	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state;
 		struct drm_crtc_state *crtc_state;
 
-		if (conn->connector_type != DRM_MODE_CONNECTOR_eDP)
+		if (!connector->dp.psr_caps.support &&
+		    !connector->dp.panel_replay_caps.support)
 			continue;
 
-		conn_state = drm_atomic_get_connector_state(state, conn);
+		conn_state = drm_atomic_get_connector_state(state, &connector->base);
 		if (IS_ERR(conn_state)) {
 			err = PTR_ERR(conn_state);
 			break;
-- 
2.43.0

