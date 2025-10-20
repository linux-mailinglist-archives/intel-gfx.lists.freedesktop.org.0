Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5B5BF3066
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B8C10E4CE;
	Mon, 20 Oct 2025 18:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EIA392MT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8010E4D0;
 Mon, 20 Oct 2025 18:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986307; x=1792522307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wQRNyjwXgSoMkRdqO3iEsSEsWX3zfmeuxDTs4msJYlI=;
 b=EIA392MTuccDtOsrbmNaV4+/x67v/ceAtpkg2/DZ2UAL4WpxMpfEno7l
 jsdC6luJg+fsnemli217mfTEbYGD+M9HEP+SwpSU6s1gDlsfvj71CU0Vu
 J2wiQut7ViLJSGM+uwvgC6nbfdynH9bbKr63+Kx6ZtEobD65CEZGpfwmr
 sl4FYmKgY/XzJD/jI71J5HqIKb2rVQKHrvRoG8jJOdTmHkCHMTnEE/KUi
 6xGuQTj7CcuGgChiKLnYKxuha96HpI6yAYlgzF2mO+1J1Er+iJw0yBd0k
 cxFEChwLGyJEy/SXTVGFY2ORw0onWZOXEgW70AQeDvX6uGI2+PV1iMXcK A==;
X-CSE-ConnectionGUID: 7v312d1RShStyldU+r+xng==
X-CSE-MsgGUID: cf63wjBpQDGvs2BIIvXvoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63254850"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63254850"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:47 -0700
X-CSE-ConnectionGUID: g7B4qxWaSPCIxqeJ4RBuNw==
X-CSE-MsgGUID: zjyD6Nx2S5KszQeJ4Fu5Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="182543938"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:45 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 17/22] drm/i915/vrr: Move HAS_VRR() check into
 intel_vrr_set_transcoder_timings()
Date: Mon, 20 Oct 2025 21:50:33 +0300
Message-ID: <20251020185038.4272-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

Reduce the clutter in hsw_configure_cpu_transcoder() a bit by moving
the HAS_VRR() check into intel_vrr_set_transcoder_timings().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 3 +++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 490b4f2907e1..2744f83bda2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1581,8 +1581,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
-	if (HAS_VRR(display))
-		intel_vrr_set_transcoder_timings(crtc_state);
+	intel_vrr_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b64a54d22991..29143dd092a8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -534,6 +534,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (!HAS_VRR(display))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
-- 
2.49.1

