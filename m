Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGjxM7NQ4GkiewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A656E409CCC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F5810E7CA;
	Thu, 16 Apr 2026 03:00:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBZhb8g6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CC310E7C3;
 Thu, 16 Apr 2026 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308399; x=1807844399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zkmxq8b5zyy/oxXUgbM172uj/Bvi6PblGmYxwaLuESM=;
 b=KBZhb8g6X4GNP6wb1q+FHlh9d/UbYHfeavDw1fXvdl9921VdtKXZUHOt
 QGTTOSRQSOpNjY5xlO+rqoMC8FztAslQJDTqe+n1EzgCOPu0BQw2hxeGt
 Ck0/mYF+ks9qh44Zi6FxYPTdGglMCGESw0aK8gn3sRt4B5fkL7Ghyv/A0
 o8qn0R32/t10mnoXr7OfRq5IedFosCVJ0jF9+oXBmkZHSJ/vtPEz6OwFC
 DZV+UAGbg/gzzPpNBEXiIUFOpd1nmcDAZPHe0MR/rah4afAn3UtsqPdfD
 ojILmwx0lU74uEeHfqf41wLqDr9VSB+TftuX0sIcWyGdYYdsx2QzTo4KH Q==;
X-CSE-ConnectionGUID: JCzpEpuPRT+xyt81/0cQRQ==
X-CSE-MsgGUID: 6uILd3rDSvuT6HQJu7FHug==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997525"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997525"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:59 -0700
X-CSE-ConnectionGUID: PnqbUfIUTPmACO2T90E9Ow==
X-CSE-MsgGUID: zM5DydmlTueUA2NUyS3llg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755033"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 19:59:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/12] drm/i915/vrr: Use the helper to write EMP_AS_SDP_TL
 register
Date: Thu, 16 Apr 2026 08:14:52 +0530
Message-ID: <20260416024504.1925195-3-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: A656E409CCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that intel_dip_write_emp_as_sdp_tl() exists, use it instead of
the open-coded EMP_AS_SDP_TL programming sequence in
intel_vrr_set_transcoder_timings().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3f09ca934876..e3aa8094b265 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,7 +9,7 @@
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
-#include "intel_dip_regs.h"
+#include "intel_dip.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -650,17 +650,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 
-	/*
-	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
-	 * double buffering point and transmission line for VRR packets for
-	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
-	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * to for Adaptive Sync SDP to Vsync start.
-	 */
-	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
-		intel_de_write(display,
-			       EMP_AS_SDP_TL(display, cpu_transcoder),
-			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+	intel_dip_write_emp_as_sdp_tl(crtc_state);
 }
 
 void
-- 
2.45.2

