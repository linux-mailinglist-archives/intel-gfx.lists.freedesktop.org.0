Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC9vBjn5emkwAQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 07:07:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D66AC249
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 07:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A5610E7D1;
	Thu, 29 Jan 2026 06:07:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cSCmFz6N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C01A10E7CB;
 Thu, 29 Jan 2026 06:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769666868; x=1801202868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Air52vH+zh8v96TPePCuBBfyJmV7Fb37VSWX7iECMGc=;
 b=cSCmFz6NyC5mw4s0crcX7HCwsc93mMrC9aaTt4jBm3YoEO62ubMA/NJZ
 YpO+O/cr1JYJg7bmmLHZGO4OjO7mW10ASwdOsO1PfSc/0m70zan0roZNk
 cMTmEZyXCvG+E61CmapzGBim1kvTZJ1xefXZsTOiJc+05pr+p9/Unwdf6
 obVBNT2myaO15VwYvYqTIV4qozeQfWpDlyT+tsYIJBIkPPRfFe8X/N92m
 y1zIno6eS6lKxY1HTMXmzDuxjTnEBhy8J8IU9UrcA58hRY99yGIEQODn4
 zclmIYF2N8JVWKSeoCthGoqhjyCgbu29nyyLXLIbshHLfuXNKtmdI4UOM w==;
X-CSE-ConnectionGUID: UCbTJ0UjRQO9u9R1AkfGZQ==
X-CSE-MsgGUID: gAS4U7aRSUWYcdl6Mf1O3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70948389"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70948389"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 22:07:39 -0800
X-CSE-ConnectionGUID: 6B5dj6MvRwyNf8uPUTEvlA==
X-CSE-MsgGUID: Yoz6PglLRnG21DpcQsv1IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="212563642"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 28 Jan 2026 22:07:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/display: Wait for pipe start to avoid vblank and
 scanline jumps
Date: Thu, 29 Jan 2026 11:37:23 +0530
Message-Id: <20260129060722.1382789-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260119043025.589754-1-suraj.kandpal@intel.com>
References: <20260119043025.589754-1-suraj.kandpal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 94D66AC249
X-Rspamd-Action: no action

Check if values are updated or not in PIPE_SCANLINE register before we
move on ahead with modeset.
This is because we need to make sure we are not getting
stale values from PIPE_SCANLINE register as we use theses scanline
values to make a decision if an atomic commit can go through. Without
this change we see Atomic update failure warning with the following
signature:
[drm] *ERROR* Atomic update failure on pipe B (start=457 end=458) time
50 us, min 2128, max 2161, scanline start 411, end 2165.
Where the atomic commit takes less than 100us but we still see a
vblank count jump and a big leap in scanline.
The PIPE_SCANLINE may give stale values as internally after writing
to TRANSCONF register it take H/w around a vblank to actually get
enabled.

Bspec: 69961
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d8739e2bb004..4514de71cb9f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -83,6 +83,7 @@
 #include "intel_snps_phy.h"
 #include "intel_step.h"
 #include "intel_tc.h"
+#include "intel_vblank.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
 #include "intel_vrr.h"
@@ -3562,6 +3563,16 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
 	else
 		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
+	/*
+	 * Somtimes when pipe starts PIPEDSL/PIPE_SCANLINE reads will return a
+	 * stale value, this is because it may take 1 vblank for TRANSCONF
+	 * register to enable the pipe, which causes an apparent vblank
+	 * timestamp and scaline jump  jump when PIPEDSL/PIPE_SCANLINE
+	 * resets to its proper value. That also messes up the frame count
+	 * when it's derived from the timestamps. So let's wait for the
+	 * pipe to start properly, So lets wait before we proceed with modeset.
+	 */
+	intel_wait_for_pipe_scanline_moving(to_intel_crtc(crtc_state->uapi.crtc));
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
-- 
2.34.1

