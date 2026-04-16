Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKI/I7pQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC1A409CDB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424F010E7D3;
	Thu, 16 Apr 2026 03:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/UVGEtn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B0510E7D3;
 Thu, 16 Apr 2026 03:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308406; x=1807844406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jn+3Gi5NSTl8SHAe+Z2dV2BQt5K34IlBV9DPdcICfG8=;
 b=R/UVGEtn9dl9AM96dA7AHJbu3F87ishyqCqkp9h+o3gGmyFWUIvKdjl+
 T/O5OaAO1l0Av4cQt7dCX3yiQyedp7DlzCP96G/SjfoyrtetlDYIq/uTb
 qKmpeB9jt0f+ULt3dcbb087kcnB0oBhg4LLV3UGRdNBJFYXdA02gsIi87
 tDupF94rki0YO0jjM5qL8HiCjvqdxLsdKGxLP8SlDtcqIFatFNUk8W1IG
 Db7ltpE8xGViucK6PDRv3j2ZlVM5o+wOHQC8AiJDiNyrNuWtceP0Bm9GU
 GEw1YWpL5+JB2jfgq6WWEdyjd+YeM3IyCb0kmA+V4CP+XK3EDgLiyJO57 g==;
X-CSE-ConnectionGUID: uvurHH2kRTWdyzP6YjGEkQ==
X-CSE-MsgGUID: xAquaWXkS5asma/fUIwTUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997538"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997538"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:06 -0700
X-CSE-ConnectionGUID: qmxyNeKsQyas02+IhxmYLQ==
X-CSE-MsgGUID: y2mxPfeGSPGlvoAMDQRoZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755086"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/12] drm/i915/display: Add crtc state for DIP transmission
 lines
Date: Thu, 16 Apr 2026 08:14:55 +0530
Message-ID: <20260416024504.1925195-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: BBC1A409CDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Adaptive Sync SDP is currently the only packet with a programmable
transmission line.

Make a structure struct intel_dip for Data Island Packets. Add a member to
track Adaptive-Sync SDP transmission line. Include the new member in the
pipe configuration comparison.

This will pave the way for supporting more packets' programmable
transmission lines, including the common base SDP transmission line
introduced with Xe3p_lpd.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.h           | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display.c       | 2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
index 25bae4a04d6b..37507ac3e645 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.h
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -35,4 +35,12 @@ struct intel_crtc_state;
 u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 
+struct intel_dip {
+	/*
+	 * DIP Transmission line, relative to the Vtotal.
+	 * The programmed transmit line is (Vtotal - value)
+	 */
+	u16 emp_as_sdp_tl;
+};
+
 #endif /* __INTEL_DIP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f..0fcee8b42b71 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5503,6 +5503,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_I(set_context_latency);
 
+	PIPE_CONF_CHECK_I(dip.emp_as_sdp_tl);
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..deed3690a01f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -46,6 +46,7 @@
 
 #include "i915_gtt_view_types.h"
 #include "intel_bios.h"
+#include "intel_dip.h"
 #include "intel_display.h"
 #include "intel_display_conversion.h"
 #include "intel_display_limits.h"
@@ -1298,6 +1299,8 @@ struct intel_crtc_state {
 		struct drm_dp_as_sdp as_sdp;
 	} infoframes;
 
+	struct intel_dip dip;
+
 	u8 eld[MAX_ELD_BYTES];
 
 	/* HDMI scrambling status */
-- 
2.45.2

