Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Di1zDWhFMWogfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B926568F7CC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KfhPqkLQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A0A10EAE5;
	Tue, 16 Jun 2026 12:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A104810EADC;
 Tue, 16 Jun 2026 12:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613924; x=1813149924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=551poXqN9D0D6xjeiQRRnHZxe6hkh3p0S5T2VrmxCGE=;
 b=KfhPqkLQhWee/4GfeZ/jfwj5FxHm0YkUVD/RMi+ai++VqR+/NksVRRa8
 IOiSyMF0T6/WLgrl5jHdPxE8+kuqO9sI5NRAg0+5ZGmGcdh750Que6y8K
 HqFv4hylJCOnpLzghyN+0aPY9l+lb6iXlEaU1OzwfSNygoFfXI2Vae6tD
 EJfUDxj+H83cGI8TJY23N94Q5Fho4iajrC/0nlaAOspaWAwcMePhVfMSX
 fhSROK6JTEIVwq3jOCSwGmXUwpo+ARRjPc+n0u80M72vXjxipqXbXCghf
 zuokYeOkj1SUqMrsM0bqb0vFR2b3mRSqHUucdJFrgEc7kA6pHcIrAkYJR g==;
X-CSE-ConnectionGUID: TncAXCw5SIOmRu6LU4lPYQ==
X-CSE-MsgGUID: GsHDKePLQKa0Gxme2KN1cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513230"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513230"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:24 -0700
X-CSE-ConnectionGUID: iTsrM6ySTbybNtKUMuCMSQ==
X-CSE-MsgGUID: urMze0lsRriAfFsHaujZXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876255"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:23 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 05/39] drm/i915/display: Rename cpu_transcoder parameter to
 transcoder
Date: Tue, 16 Jun 2026 18:13:41 +0530
Message-ID: <20260616124416.2442161-6-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,vesa.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B926568F7CC

From: Animesh Manna <animesh.manna@intel.com>

intel_set_transcoder_timings() now takes the target transcoder as an
explicit argument rather than implicitly using crtc_state->cpu_transcoder,
so the parameter name 'cpu_transcoder' is misleading. Rename it to plain
'transcoder' to reflect that any transcoder may be programmed.

No functional change.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 26 ++++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dceb70cf5397..c11def137711 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -133,7 +133,7 @@
 #include "vlv_dsi_regs.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
-					 enum transcoder cpu_transcoder);
+					 enum transcoder transcoder);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
@@ -2666,7 +2666,7 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
-					 enum transcoder cpu_transcoder)
+					 enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2675,7 +2675,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2704,7 +2704,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 */
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
-			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
+			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
 			       crtc_state->set_context_latency);
 
 		/*
@@ -2719,16 +2719,16 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 
 	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
 		intel_de_write(display,
-			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
+			       TRANS_VSYNCSHIFT(display, transcoder),
 			       vsyncshift);
 
-	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HBLANK(display, transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HSYNC(display, transcoder),
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
@@ -2741,13 +2741,13 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (intel_vrr_always_use_vrr_tg(display))
 		crtc_vtotal = 1;
 
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
-	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VSYNC(display, transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
@@ -2755,7 +2755,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
 	 * documented on the DDI_FUNC_CTL register description, EDP Input Select
 	 * bits. */
-	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
+	if (display->platform.haswell && transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
 		intel_de_write(display, TRANS_VTOTAL(display, pipe),
 			       VACTIVE(crtc_vdisplay - 1) |
@@ -2770,7 +2770,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		 * followed by BE which DPRX devices are unable to handle.
 		 * https://groups.vesa.org/wg/DP/document/20494
 		 */
-		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
+		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
 			       crtc_state->min_hblank);
 	}
 }
-- 
2.43.0

