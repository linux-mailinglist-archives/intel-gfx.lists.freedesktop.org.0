Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6122B8D507
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0BB10E339;
	Sun, 21 Sep 2025 04:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUZdywZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9003410E334;
 Sun, 21 Sep 2025 04:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430145; x=1789966145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wn0y7TIa1JoQ2Qcb5xoUnzOz6Zc08Zfv14LnREpMZOU=;
 b=PUZdywZMT82GJhvn6XSs5/rsVM6Y9xkLHrcfinFg02Eh2JNcgSQiVqS2
 aTKLob9L4l4QkmA0J8GmbmPRbA9/W6Bo/eBdkR+qYvLMWGOY/s/w6sXcv
 yN/y6ElQCHI1INyghqSYuzdP7YK2MasRBpf5uJ/6W9VNldGrR7ynJ+Ybp
 e4xrFCWzUFcxvGitmxpKOO7LFoa25JxNG1o53cUyXXsmqQdF73ErumfVZ
 sE5Y8Jx1PooZDQGaNFZZ/1+JRmIcp2PSlty0fz/mi4B9EIua3r8uG8S6X
 UvH2lu9r1/kV5IVV/SUR8z/cI7UZneZupxYWoDdQnNX1Gg4nVUthqjTKX Q==;
X-CSE-ConnectionGUID: rlfDG3uhSPCpHK/y+Go0Ng==
X-CSE-MsgGUID: Z2I4gXA8QcW0CHjVXCpA7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154734"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154734"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:05 -0700
X-CSE-ConnectionGUID: XGa6sosLRCqJ1WnPH3H6mg==
X-CSE-MsgGUID: B2olMTDUSMG7mmcAC+c0fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097702"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/9] drm/i915/display: Use VBLANK_START to get the vblank
 delay for TGL
Date: Sun, 21 Sep 2025 10:05:29 +0530
Message-ID: <20250921043535.2012978-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

For TGL the TRANS_SET_CONTEXT_LATENCY doesn't exist to account for SCL.
However, the VBLANK_START-VACTIVE diffence plays an identical role here ie.
it can be used to create the SCL window ahead of the undelayed vblank.

While readback there is no specific register to read out the SCL, so use
the same helper intel_crtc_compute_scl() and reduce the vblank_start by
this amount.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a7794387ea2..455bbebb50a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2822,6 +2822,16 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vblank_end += 1;
 	}
 
+	if (DISPLAY_VER(display) == 12) {
+		/*
+		 * There is no specific register for SCL for TGL.
+		 * Derive the value from the helper intel_crtc_set_context_latency().
+		 * crtc_vblank_start needs to be reduced with this amount.
+		 */
+		pipe_config->set_context_latency = intel_crtc_set_context_latency(pipe_config);
+		adjusted_mode->crtc_vblank_start -= pipe_config->set_context_latency;
+	}
+
 	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
 		pipe_config->set_context_latency =
 			intel_de_read(display,
-- 
2.45.2

