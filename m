Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAFEC68AAA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 10:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF6210E477;
	Tue, 18 Nov 2025 09:58:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+swUE3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45EC610E477;
 Tue, 18 Nov 2025 09:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763459887; x=1794995887;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iAbwEicWcdHDyZNakz9s9Nge993fYFa6wVMr/sCodZE=;
 b=H+swUE3L8cC6c/v4nvasWPIM9K2HKWlgykcI9bEUlFoS94XnQh4exvL7
 3cgdHEzx/CjRYxZMrLdTnSadZpR7FYUAZ+mUrwHDKnBfMA9pY0Un4nx/W
 xQbjg16h+AGjQgM7yFPNQDJc96sPE1QILusVSW9He7QdNsC7yYClI3uRP
 IdPSxteynjS4x/v7WgpSoYLnirHI5l2jqvdCWTO3cS3E/2F71wfROQdDn
 QTqvXvB+mehTNAi7yovLCZ8a+O4DqxVQvPWubIGCLUsdVad04jhgYfSLk
 7ItQrXHQlrLf6kk1Bow0ty+3KjqX6IADe2Fl0U/JmJjpWBstN/pvcc0KD w==;
X-CSE-ConnectionGUID: cEBuTnM5Qket6xxx3/tHYg==
X-CSE-MsgGUID: Ux2anW/2RGaLFPCGYrsAmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65181696"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65181696"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:58:07 -0800
X-CSE-ConnectionGUID: Lm2oLlflQSC1kp0TM9j4hw==
X-CSE-MsgGUID: Ngod81FhRde+bA+EKWfedw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="195029802"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.125])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:58:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: change pipe order for platforms with big
 joiner
Date: Tue, 18 Nov 2025 11:58:01 +0200
Message-ID: <20251118095801.2248786-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

When big joiner is enabled, it reserves the adjacent pipe as the
secondary pipe. This happens without the user space knowing, and
subsequent attempts at using the CRTC with that pipe will fail. If the
user space does not have a coping mechanism, i.e. trying another pipe,
this leads to a black screen.

If the platform allows joining A+B, map the CRTCs to pipes in order A,
C, B, and D to trick userspace to using pipes that are more likely to be
available for joining.

Although there are currently no platforms with more than four pipes, add
a fallback for initializing the rest of the pipes to not miss them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Let's see what breaks...
---
 .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7e000ba3e08b..83aad727017b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
 /* part #2: call after irq install, but before gem init */
 int intel_display_driver_probe_nogem(struct intel_display *display)
 {
+	u8 pipe_mask = U8_MAX;
 	enum pipe pipe;
 	int ret;
 
@@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 		    INTEL_NUM_PIPES(display),
 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
 
-	for_each_pipe(display, pipe) {
+	/*
+	 * If we have a joiner that can join A+B, expose the pipes in order A,
+	 * C, B, D to trick user space into using pipes that are more likely to
+	 * be available for both a) user space if pipe B has been reserved for
+	 * the joiner, and b) the joiner if pipe A doesn't need the joiner.
+	 *
+	 * Fall back to normal initialization for the remaining pipes, if any.
+	 */
+	if (HAS_BIGJOINER(display) && DISPLAY_VER(display) >= 12) {
+		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
+		int i;
+
+		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
+			pipe = pipe_order[i];
+
+			ret = intel_crtc_init(display, pipe);
+			if (ret)
+				goto err_mode_config;
+
+			pipe_mask &= ~BIT(pipe);
+		}
+	}
+
+	for_each_pipe_masked(display, pipe, pipe_mask) {
 		ret = intel_crtc_init(display, pipe);
 		if (ret)
 			goto err_mode_config;
-- 
2.47.3

