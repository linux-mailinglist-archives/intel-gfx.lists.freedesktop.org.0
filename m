Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKP8GHBdEGqDWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDAA5B560B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8661910E1FF;
	Fri, 22 May 2026 13:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eIq+7Y4p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B58610E1FF;
 Fri, 22 May 2026 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457385; x=1810993385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iuV9yWQXg8Z9jAKbI4vke+DtXeXaUYGqpqZveiniDgc=;
 b=eIq+7Y4pnIzR8xcPRFT0hoP8sey3iLU10xtkFAKIcucZ9+AHyImT4yHB
 dxMBuNArt7YVLhqTi0Pgr+3W4yGGjDeesS2P5JaNdqAhLz2Oy07qU/vd/
 SLJTL5A7XNKPl2IQmm2eYRf3y9zx8qIemZ9reCQ/TXWPmfb1Q68AW82kl
 UA6c38ttSv69/K4KupsaqZVMkoAlousvKE41ipkPZuNBJrNPpVQzn+PFH
 4ZTImvvDfCdAardqyJcX7NFyXAzdpipBCw9DjVKD8KVG2xN7xVKdWd4Iw
 IBhiBXqNUNjo7H+o66f5p3YCG17TUnumqRKycEgDcWV25ErmCcTftOkd+ Q==;
X-CSE-ConnectionGUID: CxvSmFTpQqWmK5kD2V/Nvg==
X-CSE-MsgGUID: XHufL/bfRFyFQB2qyWgTBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850596"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850596"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:05 -0700
X-CSE-ConnectionGUID: w1t0/0TsS16AYuEMyWeD9Q==
X-CSE-MsgGUID: GrzJO6RwTima9tvTowooWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317168"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/6] drm/i915/display: Handle VSYNC timing in LRR path
Date: Fri, 22 May 2026 18:55:06 +0530
Message-ID: <20260522132511.321540-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EEDAA5B560B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LRR already updates crtc_vtotal/crtc_vblank_end seamlessly.
Extend the same handling to crtc_vsync_start/crtc_vsync_end so
VSYNC timing changes are programmed and accepted via the LRR path instead
of forcing a full modeset.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 757a78c75bbf..75c998960864 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2797,6 +2797,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 	/*
 	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 	 * bits are not required. Since the support for these bits is going to
@@ -5166,9 +5169,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
 	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 	if (!fastset || !pipe_config->update_lrr) { \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
 	} \
@@ -5782,6 +5785,8 @@ static bool lrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 
 	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
 		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
+		old_adjusted_mode->crtc_vsync_start != new_adjusted_mode->crtc_vsync_start ||
+		old_adjusted_mode->crtc_vsync_end != new_adjusted_mode->crtc_vsync_end ||
 		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal ||
 		old_crtc_state->set_context_latency != new_crtc_state->set_context_latency;
 }
-- 
2.45.2

