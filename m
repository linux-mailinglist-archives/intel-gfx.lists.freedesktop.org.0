Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SVFyMFXYBmrKoQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:24:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6D554B3D7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 10:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4520D10E629;
	Fri, 15 May 2026 08:24:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOykemlu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B43810E629;
 Fri, 15 May 2026 08:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778833489; x=1810369489;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y4lvcR5GIrIxt/8BQHn+pNvyz+7XPSraK99OmJ9Hwrk=;
 b=HOykemlu9ybSaOqLAbvOTyi/pEronyH32ZbrmCE62xGwRHzH6Gegfl3P
 u+s7dPg45thMhp36AAdbv+RObmMa7rXFwn0p+MJpeehkwEY15FE6iRW0j
 3WeU83bBpL4S3KlP1PN+G19AQ0CsSyij2APMXZsTxRwuxd8Ya2COjmnN4
 Hr124J28GeuavsOcU+bphHUtZ90sl2fLZG+NkT2O/uzDcWH9zGeh6HXz9
 Q9fHM2SAC0MJHimY5zKhTtrM7lN5No/uy2wARF+aT9y/ZAblcQzH8qkSJ
 abKL+WApdYG+RrswmYN3vZsegW/piNTvh0XHCTxqIOLZ2Zs7uGfuZlJi7 g==;
X-CSE-ConnectionGUID: xoo8rr8ETCO3SSdU1vu/kw==
X-CSE-MsgGUID: gmPo+ZYKQ2GTRSDHXk4duA==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="67315877"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="67315877"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 01:24:49 -0700
X-CSE-ConnectionGUID: C/gDNrbRSTS9DetS4bl+8A==
X-CSE-MsgGUID: TMFxvvm6Q9K2fHF0+OJ+2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="237773066"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 15 May 2026 01:24:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver >= 30
Date: Fri, 15 May 2026 13:54:43 +0530
Message-Id: <20260515082443.975592-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 4B6D554B3D7
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Starting with display version 30, the per-pipe frame timestamp is read
from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the display
and select the appropriate register based on DISPLAY_VER(), and update
all callers (intel_vblank, intel_initial_plane) accordingly.

Bspec: 79482
WA: 14022946399
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h  | 7 +++++--
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c        | 4 ++--
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..579f802215d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3149,8 +3149,11 @@ enum skl_power_gate {
 /* g4x+, except vlv/chv! */
 #define _PIPE_FRMTMSTMP_A		0x70048
 #define _PIPE_FRMTMSTMP_B		0x71048
-#define PIPE_FRMTMSTMP(pipe)		\
-	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
+#define _PIPEDMC_FRMTMSTMP_A		0x5f0ac
+#define _PIPEDMC_FRMTMSTMP_B		0x5f4ac
+#define PIPE_FRMTMSTMP(display, pipe)	(DISPLAY_VER(display) >= 30 ? \
+	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A, _PIPEDMC_FRMTMSTMP_B) : \
+	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B))
 
 /* g4x+, except vlv/chv! */
 #define _PIPE_FLIPTMSTMP_A		0x7004C
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 034fe199c2a1..004cbdb6be32 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -34,9 +34,9 @@ void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 		return;
 	}
 
-	start_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
+	start_ts = intel_de_read(display, PIPE_FRMTMSTMP(display, crtc->pipe));
 
-	ret = poll_timeout_us(end_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe)),
+	ret = poll_timeout_us(end_ts = intel_de_read(display, PIPE_FRMTMSTMP(display, crtc->pipe)),
 			      end_ts != start_ts, 1000, 1000 * 1000, false);
 	if (ret)
 		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait timed out\n",
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 28d81199792e..52ff47936f9e 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -157,7 +157,7 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
 		 * is sampled at every start of vertical blank.
 		 */
 		scan_prev_time = intel_de_read_fw(display,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+						  PIPE_FRMTMSTMP(display, crtc->pipe));
 
 		/*
 		 * The TIMESTAMP_CTR register has the current
@@ -166,7 +166,7 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
 		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
 
 		scan_post_time = intel_de_read_fw(display,
-						  PIPE_FRMTMSTMP(crtc->pipe));
+						  PIPE_FRMTMSTMP(display, crtc->pipe));
 	} while (scan_post_time != scan_prev_time);
 
 	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
-- 
2.34.1

