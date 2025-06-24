Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FBDAE5E84
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923E210E515;
	Tue, 24 Jun 2025 07:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inXQsTFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A4F10E50C;
 Tue, 24 Jun 2025 07:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751498; x=1782287498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKW42z8KC/Z6j8jbMxVg0vm3pk3IvDpRos/gh021aZs=;
 b=inXQsTFaesmRQZNueZyg0eNuwgc3c43HdFUKS/FfVuRuvo6F8mcPuAVu
 4AN6wQB3Cdve+FAUVVyzL9WHH4VAdGC8FywVjL8yLhSi8kumvO6iclWgL
 t4BpkGFXHlrm05x67l8P35XzWjxEHEg/nt7BWI90N3Mn/JOa9CrjZR8Cb
 TwoCe1m1WA6ykbG/8wTpgE55FLPsFMHCtiW338UAhXXjCjwmccyD5ZM5L
 HKUmyITphVmlPQ0/C+c+4Ohuu8ieBkil9V+Z5Es4dPdSAZ1cS1mlnSaZB
 67CXUrfcoO81NgohEpPh5WNWwDjailFxeGHvBhpVTFCodb3BREsSNMo0T g==;
X-CSE-ConnectionGUID: qyarw1RdTyugv+EYMrsAxA==
X-CSE-MsgGUID: TPlJqh4dTL2j+x3W8JVKuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398274"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398274"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:38 -0700
X-CSE-ConnectionGUID: i25dkB3+S9ynMXq9ghZ7Cg==
X-CSE-MsgGUID: yRqDo4SUSTOY2HOXYf9/xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446490"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 15/18] drm/i915/vrr: Add function to check if DC Balance
 Possible
Date: Tue, 24 Jun 2025 13:19:45 +0530
Message-ID: <20250624074948.671761-16-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to check if DC Balance possibile on
requested PIPE and also validate along with DISPLAY_VER
check.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 98d305d02f35..8d7d19b86376 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -256,6 +256,22 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static
+int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
+	 * and PIPE B. Account those limitation while computing DC
+	 * Balance parameters.
+	 */
+	return (HAS_VRR_DC_BALANCE(display) &&
+		((pipe == PIPE_A) || (pipe == PIPE_B)));
+}
+
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
-- 
2.48.1

