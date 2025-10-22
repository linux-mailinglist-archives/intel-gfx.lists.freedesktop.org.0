Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18101BF9781
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8D510E68E;
	Wed, 22 Oct 2025 00:32:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALutpHmu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF0510E68A;
 Wed, 22 Oct 2025 00:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093131; x=1792629131;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=7dudOjZtK6RJSVyMvb0HmH+2YylMfxzsdLI0SjzZP6k=;
 b=ALutpHmuXO4+6ZvjqYW5x3lRXK8wy8cHHigFY4MnEXaAgQR2frZBry5L
 DI1Bgd7Fo4yMCbN/AlYG3x70jguzGe6qUGFgrGvXP0AOQpUMKWEE1tEpb
 enKZT/0fTGrD4f04dbKgdSS8iqf1DY3etTsNYP0EzN5g+3c6vdwJ6oHp3
 liylyFX9Fjfr3FZ736DRhrWNfoApSummh4Jo4XdLKMTG/JjEFA0mCmQVj
 6Z0Pk04nstsetpeTkjzfaMo+wOes4Jvk4eTxRNnsak5Nvs253UWDsa16F
 q40jcyiWU9GQvz+CWneCMJ31CIIGB9Md2uf6Yr9w4MIs6+mCcCcuEHAVR w==;
X-CSE-ConnectionGUID: nujtDh+eQmGDsmvEnxqVmg==
X-CSE-MsgGUID: L4kZW5qVRxy2T7JhCuFftw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855776"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855776"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:08 -0700
X-CSE-ConnectionGUID: QGS9zeFxQ/WyujCnHs0QOQ==
X-CSE-MsgGUID: /xUx4N5HSLicHjfCRYUBSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132461"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:04 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:44 -0300
Subject: [PATCH v2 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-19-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
X-Mailer: b4 0.15-dev
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

From: Jouni Högander <jouni.hogander@intel.com>

Ensure the minimum selective update line count is 4 in case of display
version 35 and onwards.

v2:
  - Fix style by dropping extra spaces after assignment operator.
    (Jani).

Bspec: 69887
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cfc8b04f98fa..a23519b9b388 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2804,6 +2804,29 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
 		intel_psr_apply_pr_link_on_su_wa(crtc_state);
 }
 
+static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_rect damaged_area;
+
+	/*
+	 * Bspec mentions 4 being minimum lines in SU for display version
+	 * 35 and onwards.
+	 */
+	if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->psr2_su_area) >= 4)
+		return;
+
+	damaged_area.x1 = crtc_state->psr2_su_area.x1;
+	damaged_area.y1 = crtc_state->psr2_su_area.y1;
+	damaged_area.x2 = crtc_state->psr2_su_area.x2;
+	damaged_area.y2 = crtc_state->psr2_su_area.y2;
+
+	damaged_area.y2 += 4 - drm_rect_height(&damaged_area);
+	drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
+	damaged_area.y1 -= 4 - drm_rect_height(&damaged_area);
+	clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -2912,6 +2935,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
+	intel_psr_su_area_min_lines(crtc_state);
+
 	intel_psr_apply_su_area_workarounds(crtc_state);
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);

-- 
2.51.0

