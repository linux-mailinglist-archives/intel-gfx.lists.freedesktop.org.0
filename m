Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JJODM4262kBKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:24:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC32745C21E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2400810E7B1;
	Fri, 24 Apr 2026 09:24:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nV0RU1vA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E471810E200;
 Fri, 24 Apr 2026 09:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777022667; x=1808558667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6w4ChAG+Hp3+lteqHVSks16P8x1jHexjCgUGVQruIHc=;
 b=nV0RU1vAwOObCvoEIEgcR2vnbgrdkvBDL4Wzk/M/JPdlp3bIrothhy8r
 49o8YOFX1mfO9zUu3lOYai6HdOi6FDu1aWkjyVf/iHmAxNnvlGhxGUt/v
 IpQ1bryF7eRPg1i+Sc2YoAPF5psMksj4MwysFZtsis+5PI490D/d85Ark
 gInZPA7I3qmyK+PBtODHwS/idiNYToeEZutlTQTG+TgwMIplBCsbl5/qn
 W+NcP6Bu3TdFcv4Jad8ZSSQKh/wfK66yrLgswCGeZuP68C7Y9PFyAP5lX
 YUWdYQ+fSvnhB//YTLYSSzAp2wKNnUFmjfpn15iTN35aEeSZhgTxJb58y w==;
X-CSE-ConnectionGUID: c449JPeNT9qiPxrV/6lSRg==
X-CSE-MsgGUID: aj/mdhwDSJOT7IDXkn7hhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81607525"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="81607525"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:24:27 -0700
X-CSE-ConnectionGUID: 2UnzrvJORMS4cQE/v+tvwA==
X-CSE-MsgGUID: AAWakvyLTqq+Op7jNjJUfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="271029282"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:24:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/3] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Date: Fri, 24 Apr 2026 14:39:40 +0530
Message-ID: <20260424090942.3060291-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260424090942.3060291-1-ankit.k.nautiyal@intel.com>
References: <20260424090942.3060291-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: DC32745C21E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Currently we do not support VRR with HDMI so skip vrr compute
config step for all DP branch devices.

v2: Restrict VRR on all DP branch devices instead for checking only for
    HDMI. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fae1186a90b2..1b09992ce9fd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -55,6 +55,16 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		if (connector->mst.dp)
 			return false;
 		intel_dp = intel_attached_dp(connector);
+		/*
+		 * Among non-MST DP branch devices, only an HDMI 2.1 sink connected
+		 * via a PCON could support VRR. However, supporting VRR through a
+		 * PCON requires non-trivial changes that are not implemented yet.
+		 * Until that support exists, avoid VRR on all DP branch devices.
+		 *
+		 * TODO: Add support for VRR for DP->HDMI 2.1 PCON.
+		 */
+		if (drm_dp_is_branch(intel_dp->dpcd))
+			return false;
 
 		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
 			return false;
-- 
2.45.2

