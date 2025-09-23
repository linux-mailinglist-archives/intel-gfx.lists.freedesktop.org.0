Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C47B97009
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACE210E65B;
	Tue, 23 Sep 2025 17:20:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5vgvv+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472E410E65B;
 Tue, 23 Sep 2025 17:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648055; x=1790184055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1pYQ/SlS9odLuZaNKD+ST3XGMQKLfEjLQz+pk5CBDLM=;
 b=B5vgvv+i4uar/xkZoS5fyH/0HM/GTpqSqHHUF+0GlE/NNyzrl0nUjMWB
 2bS2R+uKVXgidEzZ4b9vm4UO58HcCnh/uhmi8/yptQdJMt78LyzAamU27
 wOZDDkw3JjMrHhJYQDOsLPJL18IFK5NAdT7J0xKpAxaZHrn4T44eUIjT7
 g7DWHQvDgNMJ4U+WNRzlP1JRK0CnAjwRUtpeTA5Bcs55Zps/sTyOD9PCg
 PNuOQ3Pn9tp5InZU/LJlYwRHJj8oQR7hj6o5aLZ1g3cNB9j+oXYu8A6TI
 D3AdAVsa4Ni55MIfUrrdLrDgv/kaipaamFj0NQt9jdFEpqz3o+SAvf/js A==;
X-CSE-ConnectionGUID: l9RryEiDQp6Eg0zxfB/0Gw==
X-CSE-MsgGUID: p48DDFnMSpeefDo42GuNWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375413"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375413"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:54 -0700
X-CSE-ConnectionGUID: Gd5tgx1sSQ2km2JToYxvEw==
X-CSE-MsgGUID: zRHjE3YARjOYmTe7WHkgvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747961"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 17/20] drm/i915: Introduce intel_calc_enabled_pipes()
Date: Tue, 23 Sep 2025 20:19:39 +0300
Message-ID: <20250923171943.7319-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

Add intel_calc_enabled_pipes() as the counterpart to
intel_calc_active_pipes(). We have some uses where the set
of logically enabled pipes makes more sense than the set of
active pipes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 747283c4cefd..42fb0e082cc9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5633,6 +5633,23 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 	return 0;
 }
 
+u8 intel_calc_enabled_pipes(struct intel_atomic_state *state,
+			    u8 enabled_pipes)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		if (crtc_state->hw.enable)
+			enabled_pipes |= BIT(crtc->pipe);
+		else
+			enabled_pipes &= ~BIT(crtc->pipe);
+	}
+
+	return enabled_pipes;
+}
+
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9a9a44b61f7f..fc2ef92ccf68 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -394,6 +394,8 @@ enum phy_fia {
 				       i)
 
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
+u8 intel_calc_enabled_pipes(struct intel_atomic_state *state,
+			    u8 enabled_pipes);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
 void intel_link_compute_m_n(u16 bpp, int nlanes,
-- 
2.49.1

