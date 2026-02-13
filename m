Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LupBh7sjmkCGAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C98FA1345F7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 10:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628BC10E7C9;
	Fri, 13 Feb 2026 09:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UTgeWX2P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DA810E7C7;
 Fri, 13 Feb 2026 09:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770974235; x=1802510235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v34OISie7pURJ20pIRctFhBrvae385uqQvK7RAmSYiE=;
 b=UTgeWX2PvPMlPXg93biQVM/zdKm03K1yxj9Ohk2siLdO3ArgBuB/lgmp
 lw1SijpVcFhLtI0QRNby3Ciq9zBKfyzArE+5c/cbJvzWwiX3vsKDbJO/a
 EyzBw63fOUbvtw1+Ce/AYmjdIPmTedPyFVrORbLGVYbtQgh7BeLGk6YQw
 7UybR9+jkYuARsI8DwAIKspS97axdbxRfjD8srk5vcXb66KmoEW2d2ZKh
 FTdvBRWTQtRSHwhtieLbUC8jsDq78UteHqUUro0VscykjlXKsbxhy/XFC
 bQZAcnhtHX2CW+txYpyOzvK/jzIdzkbARFgzqaeoS7vCyi53KfeR7N52r g==;
X-CSE-ConnectionGUID: gEsZHYI+REif/6UyNyHe9A==
X-CSE-MsgGUID: BNHfcwsSQrGkJkYosMqvjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72146705"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72146705"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:17:14 -0800
X-CSE-ConnectionGUID: /Pu6NlQoQtuMymXiGiBwrg==
X-CSE-MsgGUID: diLyEEryTyqJaxsSXsy1BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211778842"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 13 Feb 2026 01:17:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/8] drm/i915/backlight: Short circuit
 intel_dp_aux_supports_hdr_backlight
Date: Fri, 13 Feb 2026 14:46:50 +0530
Message-Id: <20260213091653.2250887-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213091653.2250887-1-suraj.kandpal@intel.com>
References: <20260213091653.2250887-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C98FA1345F7
X-Rspamd-Action: no action

intel_dp_aux_supports_hdr_backlight() prints debug message for
intel HDR backlight version. This is fine when dealing with eDP 1.4b
and lower. When we are talking about eDP 1.5 it causes confusion in
logs since we need to use VESA AUX backlight functions but this
print causes confusion as to which path code take.
Short circuit this function with a eDP version check. Make sure this
is only called if eDP <= 1.4b

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index dd43176d7a70..d44a94f05600 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -704,8 +704,8 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * backlight interface at all. This means that the only sensible way for us to detect both
 	 * interfaces is to probe for Intel's first, and VESA's second.
 	 */
-	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
-	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
+	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
+	    intel_dp_aux_supports_hdr_backlight(connector)) {
 		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backlight controls\n",
 			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
-- 
2.34.1

