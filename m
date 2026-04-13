Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNuNBmFs3GmdQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:09:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7F63E727F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5445810E311;
	Mon, 13 Apr 2026 04:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kObcl7PR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F2510E308;
 Mon, 13 Apr 2026 04:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053342; x=1807589342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wBXbJRL4zKdzQ9OFu8PQzDNW71vvmbu9qo6Rv0I21fc=;
 b=kObcl7PRW2se8HgpHZver1dEW1XWG8O2FCGEnLO3tCrZPJRMxenX5GkY
 l+fXzF3l452wzo6excSiYbONP6p761uG+c42OrSqSWmeTGeM1YbusRZyE
 TaePRIUx9OnywMiXwtQ5C2ilR2GyHdeOiDd+/zaE3Ki8PGI10OgueRdbw
 ZcPcanNKpSIUYWWj9usiKUtgoGNzFZ6wN4otBuiVtsdu2ZGvq2L7K4kvF
 SWj9orvH4mbO+3E75BF0sOiIGaZaTsHTkNIWF9aVPj1jcvjdoDQJxWC62
 33h/Z5OGrljp51srkKKk8C5hjzXIEmXnsxOdrNTaHASgwypsAFo+xSeqV g==;
X-CSE-ConnectionGUID: q2UzbAhYSdyVxwAukVuBDw==
X-CSE-MsgGUID: 8SYkSOF1SoeJ1NgMddWx2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568783"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568783"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:09:02 -0700
X-CSE-ConnectionGUID: c6PW3ybQQRSONk0D1i5wpQ==
X-CSE-MsgGUID: L5Y/aH2bTzSBzso4oMB5UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546633"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:09:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/12] drm/i915/dp: Store SDP transmission lines in crtc_state
Date: Mon, 13 Apr 2026 09:23:46 +0530
Message-ID: <20260413035349.1730312-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,dp_sdp_tl.as:url]
X-Rspamd-Queue-Id: DF7F63E727F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently the driver only programs the transmission line for the
Adaptive-Sync SDP, while the hardware controls the transmission lines for
other SDPs.

Starting with Xe3p_lpd, the hardware allows the driver to program
transmission lines for additional DP SDPs. Prepare for this by adding
fields to struct intel_crtc_state to store SDP transmission lines, and
include them in pipe config comparison.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c66541f26a09..5f17ea2b6170 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5435,6 +5435,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 
 	PIPE_CONF_CHECK_I(dp_sdp_tl.as);
+	PIPE_CONF_CHECK_I(dp_sdp_tl.gmp);
+	PIPE_CONF_CHECK_I(dp_sdp_tl.pps);
+	PIPE_CONF_CHECK_I(dp_sdp_tl.vsc);
+	PIPE_CONF_CHECK_I(dp_sdp_tl.vsc_ext);
+	PIPE_CONF_CHECK_I(dp_sdp_tl.cmn);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f58454c23859..3256d537d15e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1304,6 +1304,12 @@ struct intel_crtc_state {
 		 * The programmed transmit line is (Vtotal - value)
 		 */
 		u16 as;
+		u16 gmp;
+		u16 pps;
+		u16 vsc;
+		u16 vsc_ext;
+		/* CMN SDP Base transmission line (Xe3p_lpd+) */
+		u16 cmn;
 	} dp_sdp_tl;
 
 	u8 eld[MAX_ELD_BYTES];
-- 
2.45.2

