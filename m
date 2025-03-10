Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669EA5946E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284C910E441;
	Mon, 10 Mar 2025 12:28:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oa/UHg1y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6AB10E441;
 Mon, 10 Mar 2025 12:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609727; x=1773145727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/od7/Jox/vHDoP1AF9eyBeFiHKxz15f55EYJ2g9LfXQ=;
 b=Oa/UHg1y0BjmyoaIrDTbnayjzeczLkPbec50U7vbC1V+mlONaIGQEb+E
 1SlxFx8NaM7FHLkFHLzaDcUvzkmr1YFAFTT6Md3ithkkqz8JURW11HuQu
 9g91+53y/uy19FsoKrkmAxpupX5Zq9cYve7fBNBqMHTAodaqG3hhdXRWi
 KhAq8TGQa93r3i+guEZywlcUso9C35vu7jQP/hsIqWcLiOhcwi3pUJQNI
 kU0qmWEPgvU6ar/35cAzglk8sn6oFD3F3QGbLM6cX3MaR/CN90jhY7JcA
 uVrKpDQ4RaTnGcsesFwvFGpupzaQvWtD0AY0gr7GqyqRoOK2VbZmzIaM8 g==;
X-CSE-ConnectionGUID: stuVHvwRRPCJbjoqJmOXNg==
X-CSE-MsgGUID: QADAw+aLQTOEEnjrCVhwfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057319"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057319"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:47 -0700
X-CSE-ConnectionGUID: 1kZZHqgeRtSveowCdsbfNQ==
X-CSE-MsgGUID: fX29GaBOSeqn4WZbyHp8vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180584"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/21] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Date: Mon, 10 Mar 2025 17:46:11 +0530
Message-ID: <20250310121615.1077079-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

Update the intel_set_transcoder_timings_lrr() function to use
fixed refresh rate timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4a0083fdfb05..7ac504885869 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2768,6 +2768,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
+
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_transcoder_enable(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2ebbd610c15d..57e9aef02b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_fixed_rr_vtotal(crtc_state);
 }
 
-static
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index c4ee8a758e19..d857633bc02c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -37,5 +37,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

