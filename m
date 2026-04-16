Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPGZOMJQ4GkhewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CFC409CFD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCA310E7E1;
	Thu, 16 Apr 2026 03:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjU87vkB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2BF10E7DE;
 Thu, 16 Apr 2026 03:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308415; x=1807844415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oa2aQbMzfNMybpuUJ+NwPx6BX4+R4IoEcj4O0FXO/TI=;
 b=UjU87vkBOo0kCbZi6P0V4nbXfRWDdeuld2t+MuqCgVQRpygPNbutz4Gm
 irkc4N1yrZtpM3rCerXzFCiRv6uo/IOtcPKoFv1Ulj7gNUq4erRyTh0oL
 od9UH5+URmzuKdr/b9tcVVQ6Ec5mBG9XZuw6sOj+Qof9NaIUVGT/tT1Sa
 va7P+1FWvnXR8JlPUbBGjCG5z95CEzX5Yme50GvzylBQZP4/QCx1CHRC2
 +GVXakEG5Ez9ju7UqXPdh0sl7lc+w1acthupC7p7bDsXddGXyCNWz+t+C
 VXqBjdUZ2cL4dIptJMBaFM6ywubCpv9qqD8248NllZH4l7Ehe7F29cOE6 Q==;
X-CSE-ConnectionGUID: FgTWZ+z7SVq5VD9ZBI8rkw==
X-CSE-MsgGUID: uhSFxZYoSM6IZsShYRaMnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997572"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997572"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:15 -0700
X-CSE-ConnectionGUID: ziiHjiicSVSplrr8+Iurkg==
X-CSE-MsgGUID: BFBrTUtrRNaoQNfXjNFyAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755220"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/12] drm/i915/dp: Store SDP transmission lines in crtc_state
Date: Thu, 16 Apr 2026 08:14:59 +0530
Message-ID: <20260416024504.1925195-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B9CFC409CFD
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
 drivers/gpu/drm/i915/display/intel_dip.h     | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
index e9959356226e..03ef749a79ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.h
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -51,6 +51,12 @@ struct intel_dip {
 	 * The programmed transmit line is (Vtotal - value)
 	 */
 	u16 emp_as_sdp_tl;
+	u16 gmp_sdp_tl;
+	u16 pps_sdp_tl;
+	u16 vsc_sdp_tl;
+	u16 vsc_ext_sdp_tl;
+	/* Common SDP Base transmission line (Xe3p_lpd+) */
+	u16 cmn_sdp_tl;
 };
 
 void intel_dip_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0fcee8b42b71..d8d11e9cb75e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5504,6 +5504,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(set_context_latency);
 
 	PIPE_CONF_CHECK_I(dip.emp_as_sdp_tl);
+	PIPE_CONF_CHECK_I(dip.gmp_sdp_tl);
+	PIPE_CONF_CHECK_I(dip.pps_sdp_tl);
+	PIPE_CONF_CHECK_I(dip.vsc_sdp_tl);
+	PIPE_CONF_CHECK_I(dip.vsc_ext_sdp_tl);
+	PIPE_CONF_CHECK_I(dip.cmn_sdp_tl);
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
-- 
2.45.2

