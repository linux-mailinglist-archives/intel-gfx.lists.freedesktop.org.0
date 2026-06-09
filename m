Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nDDoBKOZJ2qtzQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 06:42:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474E065C3BE
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 06:42:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OYkGMuXF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AFD10E086;
	Tue,  9 Jun 2026 04:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E5510E080;
 Tue,  9 Jun 2026 04:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780980126; x=1812516126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F8vsYjG2239V0+zK2IrbMYZdUCcWrugUF0iFXZBxoco=;
 b=OYkGMuXFXmGtjL/igAoexcFa8vRAfHXgNWoCfJA0dLH7rjWU94kUoUTz
 YJXLGsQSnslUXuR/L3o71aTm/E1pw4FFd1v23wMQNPpprD0N8aUE5HaLS
 WV1jIIJ4aliPSLqTssLoHC1P0Lo8EYiXRy6wG8y7oc5mKFB+j75X1L44y
 NBswVEQ31Chc9YkPxdcTJxlx77a9aMC7sjSd3LI9TZATpXH1cUhX+CKDU
 jbwfrF7GmTVHlWH68aflAMDjHccmvDzCmjb2cl0kckjJ5VE+aKlFRPPSr
 r1Jz7o251kUhMVk+yDm/1GgH+LVoIIiAmrlZIAs9C4oYU35W2ICY4TAVS A==;
X-CSE-ConnectionGUID: EIQGrokDRaypAHmdR5UE5Q==
X-CSE-MsgGUID: oaudkduQS+eI2XH930hiKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="107168730"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="107168730"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 21:42:06 -0700
X-CSE-ConnectionGUID: W0qUuQYwS06jB9MMv9qXjw==
X-CSE-MsgGUID: rkp4ygX4REiVLAS8xjuTzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="249666920"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 21:42:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Date: Tue,  9 Jun 2026 07:41:49 +0300
Message-ID: <20260609044149.274249-1-jouni.hogander@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 474E065C3BE

Currently intel_psr_fast_set_force is forcing fastset only for eDP
connectors. Panel Replay is supported on DP as well and writing
i915_edp_psr_debug is setting debug parameters for each DP transcoder
(struct intel_dp:psr:debug). Force fastset for each connector supporting
PSR.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e138982dc91f6..78795bd3ceba4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3446,10 +3446,12 @@ static int intel_psr_fastset_force(struct intel_display *display)
 retry:
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(conn, &conn_iter) {
+		struct intel_connector *intel_connector = to_intel_connector(conn);
 		struct drm_connector_state *conn_state;
 		struct drm_crtc_state *crtc_state;
 
-		if (conn->connector_type != DRM_MODE_CONNECTOR_eDP)
+		if (!intel_connector->dp.psr_caps.support &&
+		    !intel_connector->dp.panel_replay_caps.support)
 			continue;
 
 		conn_state = drm_atomic_get_connector_state(state, conn);
-- 
2.43.0

