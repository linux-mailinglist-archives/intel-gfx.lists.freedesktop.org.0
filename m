Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j6FIKIC/TGp8pAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:57:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50447196EA
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:57:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Rhu5lzGM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D34E10E4A1;
	Tue,  7 Jul 2026 08:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA9910E4A1;
 Tue,  7 Jul 2026 08:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783414652; x=1814950652;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3JPi5Cc6qNDfC5RaEGy0WpAYovhiHfldE6zS4U7u/zI=;
 b=Rhu5lzGMhyw/8yQGypkKahZe1///vua/tBEoq2NFJYqtEElNDPl/QtkL
 A87PFCQn2WoEo60qkzajRbyWuVZHEOSpv4XkMzBez9g472Vd/xqnF/MS+
 i+UFs89Zo/MMx9ZGa7rnERg+uMRb3d9aGXXfn9wVvuV9h7gc+2PWeuW1o
 b97fd6T2DNNIw2RCMA2kNGauQDzfBCIbw8h4Wx31qkxlbWr+0yNfO7SQk
 ZvHAUM3/qVaawh6i/D7gXvnTqdKrRxwRCx2PqLf9n0cYEn2X+lmpm2u4F
 NZfDjajLPnQ0o94FrdXapReSucYPAMtoPQUJMkThw7Myn8EQUi0o3PTyQ w==;
X-CSE-ConnectionGUID: 2T77OzyKSDGXQe0S/EiTIg==
X-CSE-MsgGUID: CByK7C/jSKeFF4c78gyhYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="95210798"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="95210798"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 01:57:31 -0700
X-CSE-ConnectionGUID: XLqMDfzNTCaa31R1k9ASSw==
X-CSE-MsgGUID: W6R+XksUROOvHTe4/xqRaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="254027767"
Received: from desktop-l7po8u3.png.intel.com ([172.22.28.158])
 by orviesa007.jf.intel.com with ESMTP; 07 Jul 2026 01:57:28 -0700
From: "LIOU, Mei Fan" <mei.fan.liou@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, "LIOU, Mei Fan" <mei.fan.liou@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915: skip eDP hw probe when connector forced off via
 cmdline
Date: Tue,  7 Jul 2026 16:57:04 +0800
Message-ID: <20260707085704.14519-1-mei.fan.liou@intel.com>
X-Mailer: git-send-email 2.52.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,intel.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mei.fan.liou@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A50447196EA

When eDP connector is forced off (video=eDP-1:d),
intel_edp_init_connector() ignores the force flag and still probes
the AUX channel for DPCD and EDID.

video=eDP-1:d sets connector->force = DRM_FORCE_OFF via
drm_connector_get_cmdline_mode() inside drm_connector_init_with_ddc(),
which logs 'forcing eDP-1 connector off'. However,
intel_edp_init_connector() is called immediately after and ignores
the force flag, so AUX/PPS probing still occurs.

Fix this by checking connector->base.force == DRM_FORCE_OFF in
intel_edp_init_connector() after the intel_dp_is_edp() check, before
any AUX/DPCD probing is attempted. When the connector is forced off,
log an informational message and goto out_vdd_off to properly clean
up PPS state and skip all remaining hardware probing.

Suggested-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: LIOU, Mei Fan <mei.fan.liou@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3569e61e7fee..fa61b299f83e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7057,6 +7057,17 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_alpm_init(intel_dp);
 
+	/*
+	 * If the connector has been forced off via the kernel cmdline
+	 * (e.g. video=eDP-1:d), skip DPCD/AUX probing.
+	 */
+	if (connector->base.force == DRM_FORCE_OFF) {
+		drm_info(display->drm,
+			 "[ENCODER:%d:%s] eDP disabled via cmdline, skipping eDP init\n",
+			 encoder->base.base.id, encoder->base.name);
+		goto out_vdd_off;
+	}
+
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
 
-- 
2.52.0

