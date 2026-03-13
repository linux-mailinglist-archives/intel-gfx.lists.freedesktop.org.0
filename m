Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNveN3cBtGnCfAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B08E282E20
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162F610EBCC;
	Fri, 13 Mar 2026 12:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Km33f4II";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFEB10EBC9;
 Fri, 13 Mar 2026 12:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773404531; x=1804940531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lgdfMu+HtA7xAd10zI4IF3HYREpPW30Wtwm/Ue0b1qo=;
 b=Km33f4IIZZo4mXUJ4oKmHZvuftYZOBPwk0WfgZA5x1LcWVIrG+Quxadx
 s4NmtKArwqx5Z+6Bi7PDsTuKdS+h4wFHT368bs+GWMjB65w7CSiPSKLHP
 LbAIFHe1Mc+Hm6Wra7xpl2pkKZaw/Dv5ZuRHyf2KTv2IpuVm4RqAWOAnU
 jbd8yXtOXJTO28krPSmxh5n4TeAeMZjoMD7NkJbuOHjkUDIJmHwFbMMmS
 4AdegxpS206HawP0U+vZIld+yZbmU+gvWIY+qP85h0k25nRP/YXAwCZ+g
 4FH+QDBiyJwh8Vsj9Qx9OrrZ7XVNyV7UYTeP8AiL4RDMHZShMLinBqHx7 w==;
X-CSE-ConnectionGUID: SpiEMaqJRIm2uCnE9o4+ow==
X-CSE-MsgGUID: C48CUYv+Ry2sabhDkAvoSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="77116939"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="77116939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:11 -0700
X-CSE-ConnectionGUID: Sndr6oCeQo6dN48yS+JgLQ==
X-CSE-MsgGUID: df31+eVQTBCanbr5xw7JvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225269256"
Received: from amilburn-desk.amilburn-desk (HELO jhogande-mobl3.intel.com)
 ([10.245.245.196])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/dp: Add quirk to disable Panel Replay on certain
 panels
Date: Fri, 13 Mar 2026 14:21:44 +0200
Message-ID: <20260313122145.1747175-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313122145.1747175-1-jouni.hogander@intel.com>
References: <20260313122145.1747175-1-jouni.hogander@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9B08E282E20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We are currently observing problems with LG panel when Panel Replay is
enabled. Add new quirk DP_DPCD_QUIRK_NO_PANEL_REPLAY and set it for
the problematic panel model.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
 include/drm/display/drm_dp_helper.h     | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index a697cc227e28..96c8b53ba4e4 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2540,6 +2540,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
 	{ OUI(0x00, 0x22, 0xb9), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_CONSTANT_N) },
 	/* LG LP140WF6-SPM1 eDP panel */
 	{ OUI(0x00, 0x22, 0xb9), DEVICE_ID('s', 'i', 'v', 'a', 'r', 'T'), false, BIT(DP_DPCD_QUIRK_CONSTANT_N) },
+	/* Problems observed with LG panel */
+	{ OUI(0x00, 0x22, 0xb9), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_NO_PANEL_REPLAY) },
 	/* Apple panels need some additional handling to support PSR */
 	{ OUI(0x00, 0x10, 0xfa), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_NO_PSR) },
 	/* CH7511 seems to leave SINK_COUNT zeroed */
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 1d0acd58f486..ca36b5a9c1b6 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -824,6 +824,14 @@ enum drm_dp_quirk {
 	 * driver still need to implement proper handling for such device.
 	 */
 	DP_DPCD_QUIRK_NO_PSR,
+	/**
+	 * @DP_DPCD_QUIRK_NO_PANEL_REPLAY:
+	 *
+	 * The device does not support Panel Replay even if reports
+	 * that it supports or driver still need to implement proper
+	 * handling for such device.
+	 */
+	DP_DPCD_QUIRK_NO_PANEL_REPLAY,
 	/**
 	 * @DP_DPCD_QUIRK_NO_SINK_COUNT:
 	 *
-- 
2.43.0

