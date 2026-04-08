Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBeTNNVf1mmEEwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FE63BD562
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFB210E67E;
	Wed,  8 Apr 2026 14:01:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bsSdygc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581BD10E682;
 Wed,  8 Apr 2026 14:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775656914; x=1807192914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K7ziiDprh8UQTTtJwGpmLUGjs9VlqDrFGatnNbdl9LY=;
 b=bsSdygc7GfWYI097gVcpHK86IRwfkMu42kMzMuS6rO+D5seNFVetALpP
 dz59EZ3u43z8WuMjDKTbCdsA62jaS6Yjscng0f4lXROJVcPNC+zPlCylU
 4C8JKWe/TtKj7FEuS3knLFfgStr/yYfCbrra0C89N1kNuLJygPzVj1Yaj
 MvP96Bb99hrINpJMFVAk0KkJ8F6w0gaxHWLk/YlT1QOfs+2hNuce+ZBYD
 eNPVkhA8adihN1pUjvDuwjmAybyKF6v1UxhrocieSqTVXGMx/HeVMrH99
 J6mQKyohPywVv0wOlyekFWmWyr8A141sZB5iMebiyYq4X35fEwKQUBaIu w==;
X-CSE-ConnectionGUID: AvPSX7RJRyiP4mBrhW3K0g==
X-CSE-MsgGUID: riB38m4eTbywR2VGAS2mJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75811576"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75811576"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:28 -0700
X-CSE-ConnectionGUID: QTfaQtBWT+aSrgBcyPwGkw==
X-CSE-MsgGUID: 3TVsrIlaS0aATW7DDH1xmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228726695"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.251])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/7] drm/i915/psr: Dump out PSR and Panel Replay DPCD registers
Date: Wed,  8 Apr 2026 17:00:58 +0300
Message-ID: <20260408140059.252067-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408140059.252067-1-jouni.hogander@intel.com>
References: <20260408140059.252067-1-jouni.hogander@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 07FE63BD562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add dumping out PSR and Panel Replay DPCD registers after reading
them. This helps parsing dmesg logs and tracing possible PSR/Panel Replay
issues.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0adaba7e8f7a..129ba0da19ee 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -608,6 +608,10 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 	if (ret < 0)
 		return;
 
+	drm_dbg_kms(display->drm, "Panel Replay DPCD: %*ph\n",
+		    DP_PANEL_REPLAY_CAP_SIZE,
+		    connector->dp.panel_replay_caps.dpcd);
+
 	if (!(connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	      DP_PANEL_REPLAY_SUPPORT))
 		return;
@@ -656,6 +660,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	if (ret < 0)
 		return;
 
+	drm_dbg_kms(display->drm, "PSR DPCD: %*ph\n", EDP_PSR_RECEIVER_CAP_SIZE,
+		    connector->dp.psr_caps.dpcd);
+
 	if (!connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)])
 		return;
 
-- 
2.43.0

