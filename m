Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DA6BC6486
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4527C10E89E;
	Wed,  8 Oct 2025 18:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgduzfEH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F5D10E88B;
 Wed,  8 Oct 2025 18:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947977; x=1791483977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+fqBfrO8cwU9+cxarFpb+koVYQ8ee3tTuSQhm0QgVNw=;
 b=FgduzfEHoi3+/W2SMZxiRAL6JWEVBh84e67VErnCldSxw3k99HGgSmKt
 WZHdtBzTa2iZUFtgxY3vafy1rOOl9Y1kU5aloeXWYjfZHHQWVii1rCHCk
 PoOqKSjdqMiqk6ObTYHQK3dNG8jxoYqr9RpJU0DaWK7AVLjDAb0y26hXi
 G2n+q0Z05PCWfgtEqRilHba+i6kR/lWUbhy4ClKGCb9D5rfBG0HrNU/xY
 4M5y1jdI8AtQigC4zkn/dm9NxLyGramimGSFBhwW2BrAlZuM4tIOw1OF3
 CHwUXzfAnR9ff6MBQEmUQ1w7OeriXXHt/T2H/8P2FMNdUVDfq9mcJi4Xo A==;
X-CSE-ConnectionGUID: oFVL7JaZRqOaqouyYsBZhA==
X-CSE-MsgGUID: uI7fOj2gRCikJ2MuRuKxZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245572"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245572"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:17 -0700
X-CSE-ConnectionGUID: BhuXTw2kTeycBNlbJ4FPOA==
X-CSE-MsgGUID: sPR5ngv5Rai+TQFeiq9/2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799879"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 04/11] drm/i915/dsc: Add prefill helper for DSC
Date: Wed,  8 Oct 2025 21:25:51 +0300
Message-ID: <20251008182559.20615-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add intel_vdsc_prefill_lines() which tells us how many extra lines
of latency the DSC adds to the pipe prefill.

We shouldn't need a "worst case" vs, "current case" split here
as the DSC state should only change during full modesets.

The returned numbers are in .16 binary fixed point.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8e799e225af1..bca747e24a7f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1077,3 +1077,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 	return min_cdclk;
 }
+
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+
+	return 0x18000; /* 1.5 */
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 9e2812f99dd7..2139391ff881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -32,5 +32,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
+unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.49.1

