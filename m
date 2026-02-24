Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLk2DDitnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A770C1880A0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086BE10E595;
	Tue, 24 Feb 2026 13:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mu3sZU3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C06610E58C;
 Tue, 24 Feb 2026 13:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941166; x=1803477166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jHNUqwgkrBOU2C6/FHMfyUH654YRyLsHguysMiWIp3M=;
 b=Mu3sZU3zA1cVui3zxPT/waXKw3j8dTQNNdvj6bx61yyPyu0ryYaD98He
 PluAxCiiONE/3t0kURlLmMXBdhC2FHawmvhcNqiPDc0fmLAR7EW3clzTo
 v598nkEzDDc+/qzd59rxImcHey3GZwPcgOjGaG3lTUNxByh0yICYJGfgF
 mIRLcZ3PYZWazf2qxFQbu67/etebEnvNh28eD+VGxucm6NUP4CiVLKtFy
 tC1lCaRDYfKMbSyNt+4hJvtlQjvB5OjlPEoCkNOQJtwlBXyPmHW8bgLVv
 feAewPaC6ysUkkufoNOp2JK13ISACx3OwIlSWmqUwPiJ8R9+FrYTC0gkt Q==;
X-CSE-ConnectionGUID: Vi2qmek3RzCLalbmnQrnFw==
X-CSE-MsgGUID: O5DT4i9pSSSwQT42wnqwPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60531019"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60531019"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:46 -0800
X-CSE-ConnectionGUID: GQh7PU19Sh2IA8fyIGztMw==
X-CSE-MsgGUID: XRZJtIISSlujZP3n3eZ8DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925248"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:44 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 09/16] drm/i915/display: convert W/As in intel_dp_mst.c to
 new framework
Date: Tue, 24 Feb 2026 15:49:56 +0200
Message-ID: <20260224135208.140752-10-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A770C1880A0
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c     | 3 ++-
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 2934331d905f..be37a23edce4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -94,6 +94,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_14011765242:
 		return display->platform.alderlake_s &&
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
+	case INTEL_DISPLAY_WA_14014143976:
+		return IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER);
 	case INTEL_DISPLAY_WA_14020863754:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index b781a3c6d803..dc1a187fd0a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -36,6 +36,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_14011508470,
 	INTEL_DISPLAY_WA_14011765242,
+	INTEL_DISPLAY_WA_14014143976,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fb5396a46d1b..febafe5bbbd7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
 #include "intel_dp_link_training.h"
@@ -1274,7 +1275,7 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
 		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
 
 	/* Wa_14014143976:adlp */
-	if (IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER)) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14014143976)) {
 		if (intel_dp_is_uhbr(crtc_state))
 			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
 		else if (crtc_state->fec_enable)
-- 
2.51.0

