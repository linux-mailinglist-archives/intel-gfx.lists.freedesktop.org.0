Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GJvJmPsiWlpEQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 15:17:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2294110235
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 15:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AC510E40C;
	Mon,  9 Feb 2026 14:17:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EcJWAuLL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF8910E403;
 Mon,  9 Feb 2026 14:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770646624; x=1802182624;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XFTuM+4V1U46K5fxZNpIf9ZlqfQr3OYDBQ5J2k1ch+E=;
 b=EcJWAuLL32e514LGxA9b911KJA8ja0BjP7wqHrA3vfBI9kungh3ONAXn
 zexSL2LUJxClDgi3qJQYzQ5xfEdo3CkvrvkPkPBnhajWpr6mrf4ODnczQ
 /5aY62H+ZDgOqL8itLb/QAHOBWe0rfopgHY3ubx+h/dRPjM7jwnCM7LDx
 PiKPqUnyF0+SSgZqU9V12OR+Ry5DIEcqUBml9vKp1go3skiRouiRL/S5x
 aglcpOteMIu/PreYKb82VB9Hm66F86XJF/hKogPGCT5BsKQgHnQPZx55U
 lHlzianhsJ9TMmxf07/+aPQdYdrK2gLYtXs/bxU6TkaPTehzfimJyqIRr g==;
X-CSE-ConnectionGUID: s0BATW7RRna4EutEtzJiQw==
X-CSE-MsgGUID: jyvCGStDTlqFqzuoh35bFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71939996"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="71939996"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 06:17:04 -0800
X-CSE-ConnectionGUID: 7MqqcNdyTYe7xT5XyhG3xw==
X-CSE-MsgGUID: R4PfJ7c+RMy60gccUrjaFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="211424260"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 06:17:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v5] drm/i915/display: change pipe allocation order for
 discrete platforms
Date: Mon,  9 Feb 2026 16:16:57 +0200
Message-ID: <20260209141657.629872-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E2294110235
X-Rspamd-Action: no action

When big joiner is enabled, it reserves the adjacent pipe as the
secondary pipe. This happens without the user space knowing, and
subsequent attempts at using the CRTC with that pipe will fail. If the
user space does not have a coping mechanism, i.e. trying another CRTC,
this leads to a black screen.

Try to reduce the impact of the problem on discrete platforms by mapping
the CRTCs to pipes in order A, C, B, and D. If the user space reserves
CRTCs in order, this should trick it to using pipes that are more likely
to be available for and after joining.

Limit this to discrete platforms, which have four pipes, and no eDP, a
combination that should benefit the most with least drawbacks.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

v2: Also remove WARN_ON()

v3: Limit to discrete

v4: Revamp

v5: Don't screw up the loop variable, dummy

There are a number of issues in IGT with assuming CRTC index == pipe, at
least with CRC and vblank waits. With them being used a lot in tests, we
won't get enough test coverage until they're fixed.
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 29 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index ed3c6c4ce025..2916209aea79 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -393,8 +393,6 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
-	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
-
 	if (HAS_CASF(display) && crtc->num_scalers >= 2)
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
@@ -406,6 +404,31 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	return ret;
 }
 
+#define HAS_PIPE(display, pipe) (DISPLAY_RUNTIME_INFO(display)->pipe_mask & BIT(pipe))
+
+/*
+ * Expose the pipes in order A, C, B, D on discrete platforms to trick user
+ * space into using pipes that are more likely to be available for both a) user
+ * space if pipe B has been reserved for the joiner, and b) the joiner if pipe A
+ * doesn't need the joiner.
+ *
+ * Swap pipes B and C only if both are available i.e. not fused off.
+ */
+static enum pipe reorder_pipe(struct intel_display *display, enum pipe pipe)
+{
+	if (!display->platform.dgfx || !HAS_PIPE(display, PIPE_B) || !HAS_PIPE(display, PIPE_C))
+		return pipe;
+
+	switch (pipe) {
+	case PIPE_B:
+		return PIPE_C;
+	case PIPE_C:
+		return PIPE_B;
+	default:
+		return pipe;
+	}
+}
+
 int intel_crtc_init(struct intel_display *display)
 {
 	enum pipe pipe;
@@ -415,7 +438,7 @@ int intel_crtc_init(struct intel_display *display)
 		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
 
 	for_each_pipe(display, pipe) {
-		ret = __intel_crtc_init(display, pipe);
+		ret = __intel_crtc_init(display, reorder_pipe(display, pipe));
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 295f14416be7..2a7a9c5639ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5959,6 +5959,8 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 		 * This works because the crtcs are created in pipe order,
 		 * and the hardware requires primary pipe < secondary pipe as well.
 		 * Should that change we need to rethink the logic.
+		 *
+		 * FIXME: What about with reordered pipes?
 		 */
 		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
 			    drm_crtc_index(&secondary_crtc->base)))
-- 
2.47.3

