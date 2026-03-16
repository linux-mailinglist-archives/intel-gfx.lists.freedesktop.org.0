Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNyNMyb1t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:18:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449512995B4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84A610E50F;
	Mon, 16 Mar 2026 12:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dfgmTiMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AAE310E50F;
 Mon, 16 Mar 2026 12:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663524; x=1805199524;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=90hjf0MEXRpeHMZMqInoGrGEBPR8MAoihjOw8CL02/Q=;
 b=dfgmTiMR93XPaF5vTYsxLWp4S6j47c4czN4Bt5YeDgFs67HuJETOT0pe
 XbFW+YRivHpTTH9vQ8kKVa9DmR7N4bIUa1Mr2tECyYU1af7hNvdIsDqtk
 TmGIOijpDpP4rgzKXUlJGHSKPbFKTHaqocrXF64b7EbCLq3YOnrPoNQE0
 Jwpi5eznX03f5avZ5aSDJ1nN9AtoHCxa0HYsxv1e+TRaIqevF1BUM9ckX
 wkY4Fh9JkZqDDdIqrzGpenCKq+nbVL6/hnwqCM6lLGvCydmKzKG5iEel5
 qQwVKhq5YNAP4weype3+G3+FtwFKqDInxrYltjza15AmEkg/Wuf59ORFC A==;
X-CSE-ConnectionGUID: wMyp9lNHSJmd3QAO9UQZPg==
X-CSE-MsgGUID: +nms/sTiR7WqH4A5be5M8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="86152275"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="86152275"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:18:44 -0700
X-CSE-ConnectionGUID: l+QOKdpZRG6BWTTW/1nAeQ==
X-CSE-MsgGUID: xW3d8mmuR/ihfJsBz/uOtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226359366"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:18:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI] drm/i915/display: change pipe allocation order for discrete
 platforms
Date: Mon, 16 Mar 2026 14:18:37 +0200
Message-ID: <20260316121837.1264876-1-jani.nikula@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 449512995B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

We've fixed a ton of IGT assumptions on CRTC index == pipe, resending
the patch for CI to gauge where we're at.
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 29 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index b8189cd5d864..c7b6ebe8f3e2 100644
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
index b18ce0c36a64..f0843de362fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5971,6 +5971,8 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
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

