Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE6VJVdXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:51:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7C726325A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B93510E8A9;
	Wed, 11 Mar 2026 11:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJ1dxsci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7EC10E8A9;
 Wed, 11 Mar 2026 11:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229908; x=1804765908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pdHYk0SKeI1mTG331T1/aQa45QQdg1EAVtBFMrXbPzc=;
 b=dJ1dxsciX39n64G0nrYUmVFSebHeDD9XnpGpfqzmwpPEaQKwkDrr+MTK
 tVGpwzKU/qHp0jd/ZOK7UkAQdh6+19lom6WAm/eDOdPUAFgTHjPvqvp2Z
 sGcUYgLmZOKpgUrvuA7Zg0WgSs96oQd1LCPnGkiwNMhZmIDvIvapCoF3x
 bNRNz97JNs2k9Iz48Cpidm19+dgGFBTSmzq0hjI2OZSkD4OICEQrpVT0Z
 EboMsOM3vXwqXCbegL/CISsA+dFPbRf+/2mFzPbaBNBFg/5J2iM29hdHZ
 sWKZcSlihKxdpMSqziS3l6YtAkQD7EosExjMZBklPErarnQU2uuGZs4Ro A==;
X-CSE-ConnectionGUID: EcvKQXouQqO76Celu73z+A==
X-CSE-MsgGUID: CD1/yUOoRcmQ8l0QakFfuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74204980"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74204980"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:51:47 -0700
X-CSE-ConnectionGUID: CuMtlag8SuCDczf/Y1RL1A==
X-CSE-MsgGUID: w4dWZCsIRQuDCXm8psKiDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602347"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:51:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/19] drm/i915/dp: Account for AS_SDP guardband only when
 enabled
Date: Wed, 11 Mar 2026 17:05:59 +0530
Message-ID: <20260311113611.3393194-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 6D7C726325A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Currently the intel_dp_sdp_min_guardband() accounts for AS_SDP for all
platforms that support adaptive sync SDP even for configurations where
it cannot be enabled. Instead account for adaptive sync SDP guardband
only when it is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 108d2e338e3a..10927bc836d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7364,7 +7364,6 @@ int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 ty
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	int sdp_guardband = 0;
 
 	if (assume_all_enabled ||
@@ -7379,8 +7378,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 		sdp_guardband = max(sdp_guardband,
 				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
 
-	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
-	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+	if (crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
 		sdp_guardband = max(sdp_guardband,
 				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
 
-- 
2.45.2

