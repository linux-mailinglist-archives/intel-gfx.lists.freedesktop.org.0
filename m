Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHlxGVhs3GnVQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006473E7263
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EEC810E309;
	Mon, 13 Apr 2026 04:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDHDss2r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3EF10E301;
 Mon, 13 Apr 2026 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053334; x=1807589334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Azta15RIDkZmTX6uJevjtKMiQbXTicv237MdVdEHv2Q=;
 b=PDHDss2rBpZ3Arnw8u/hFyCPPw9luYxxCFpzlJ3z0cFdNou5/wz191zY
 OfQe+qqZgu/VBgFXroWSERHVUWPRw6REaFCUhOZgQCQT5Gn79kjycSvXQ
 0bAHMMwN0aXOZu9XiW54TBdGTwe+JW3e6Dh8IYJ3LeaQ2LTNnyL48oTYz
 8Hehk61TWt58BnHW7lLhaZbav5AfLhZgcGDOHz4HuU0jrfCn6ShBxu4cR
 JCRaCukTKbywbwuZHA4o3Mdgqp4h7E+Fy0sLPMCWDNRPgEpEvCHhz0tSS
 Na8vIaC3vCBYU1XdW1uCJquRUS/t8K+6CulOZSB25M+VJDmZq2O6SWLh8 g==;
X-CSE-ConnectionGUID: NGMV3y1HQr2/e0eb3Tjw8g==
X-CSE-MsgGUID: kjLSrbi9TX+sVKgIpGXnWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568775"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568775"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:54 -0700
X-CSE-ConnectionGUID: squkN/MqRuiIMH5qSqd0Xg==
X-CSE-MsgGUID: GjHX/bMmRnCGc1OEOdHbpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546611"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/12] drm/i915/dp: Add crtc state for AS SDP transmission line
Date: Mon, 13 Apr 2026 09:23:42 +0530
Message-ID: <20260413035349.1730312-6-ankit.k.nautiyal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 006473E7263
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Adaptive Sync SDP is currently the only DisplayPort SDP with a
programmable transmission line. Store the AS SDP transmission line
in the crtc state and include it in the pipe configuration comparison.

This provides a common place for SDP transmission lines and paves the way
for supporting additional SDP TL programming, including the common base
SDP transmission line introduced with Xe3p_lpd.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f..c66541f26a09 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5434,6 +5434,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	}
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
 
+	PIPE_CONF_CHECK_I(dp_sdp_tl.as);
+
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
 	PIPE_CONF_CHECK_X(joiner_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..f58454c23859 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1298,6 +1298,14 @@ struct intel_crtc_state {
 		struct drm_dp_as_sdp as_sdp;
 	} infoframes;
 
+	struct {
+		/*
+		 * SDP Transmission line, relative to the Vtotal.
+		 * The programmed transmit line is (Vtotal - value)
+		 */
+		u16 as;
+	} dp_sdp_tl;
+
 	u8 eld[MAX_ELD_BYTES];
 
 	/* HDMI scrambling status */
-- 
2.45.2

