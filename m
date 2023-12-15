Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911BB814662
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C8D10E9A1;
	Fri, 15 Dec 2023 11:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE95B10E9A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638580; x=1734174580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mm6Y7p/sg2sJyagGO3IXWmNoZ75cgHwEPOhk/8rCDN4=;
 b=DgrzP1Yj1DmhNaYNbg4uvGsscBBizzIEfK451/ucGchGiT+X81r3zUaj
 NbhhQF1/WFog8MTaZODVXS9tDcpoFQf7vJLuhW+P2z5l+dZvNfmlmUE6U
 WJN6BdrChkg0LvrXi9yNhVeTspzgdzRO1sOUGEI1ABT7mjh1zl4sFVEwR
 sygiLwMiiIaRhsVhqaDsnJOA2sxEFg9OuZhfYcCyM8RuSgrHAwbD7yy9p
 Eew2eS3+bM5HcfFGfRBx8/1CTNheBE7o4t1QapWZaHJdAz9Sot0a4WQl3
 VJXFzSNzYaCV98hVn0o/43mNsVKPD17bXMQ9ngBzCki/c24Dq6cIX5mCz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394138126"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394138126"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767946021"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767946021"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:09:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:09:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/hdcp: Do intel_hdcp_component_init() much later
 during init
Date: Fri, 15 Dec 2023 13:09:31 +0200
Message-ID: <20231215110933.9188-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_hdcp_component_init()->...->intel_hdcp_gsc_initialize_message()
will allocate ggtt address space for some hdcp gsc message thing.
That is currently being done way too early as we haven't even
taken over the BIOS fb yet. So this has the potential of corrupting
ggtt PTEs that need to be preserved until the the BIOS fb takover
is done.

Only call intel_hdcp_component_init() once all the BIOS fb takeover,
and full ggtt init (which currently also needs to reserve very
specific ranges of ggtt, thus assuming that no one else has stolen
them yet) is done.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 62f7b10484be..b71338b4d793 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -319,8 +319,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_display_driver_init_hw(i915);
 	intel_dpll_update_ref_clks(i915);
 
-	intel_hdcp_component_init(i915);
-
 	if (i915->display.cdclk.max_cdclk_freq == 0)
 		intel_update_max_cdclk(i915);
 
@@ -360,6 +358,13 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return 0;
 
+	/*
+	 * This will bind stuff into ggtt, so it needs to be done after
+	 * the BIOS fb takeover and whatever else magic ggtt reservations
+	 * happen during gem/ggtt init.
+	 */
+	intel_hdcp_component_init(i915);
+
 	/*
 	 * Force all active planes to recompute their states. So that on
 	 * mode_setcrtc after probe, all the intel_plane_state variables
-- 
2.41.0

