Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB91CA3AAAD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F8410E769;
	Tue, 18 Feb 2025 21:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwgLwfyM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071CC10E778
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913582; x=1771449582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=se5vsmE6+A44ceQOOelLJkO/afwgaZoWZEc55k1HxrQ=;
 b=OwgLwfyMTMT8Gq7MVJxrIsEOF760V9dGGeQpbnAo1BPRa0MEqeENNk9G
 YfEMNM1HoZ6To8nzMFABKR2qx4YxkUOciH7LLRa9tw4J6dy93/awiQCJO
 KNoiXIDgR5bV3TR1io+1buG7mLbsw3X5AuA3lxRyjuTBi4vPA4+Gb7hpl
 PCdSFtbXSxEZu8kN+5hrR6EurbOUQ9NvdOLe62lU4+ABvIpzRFOGJ1MHm
 sgQe2ATsuZGioThcXRttko30K/JVFGHuc6wYz5lZKUrxRHS1QoZv7ygdP
 0nABk9A4yLKN2XImeLO4SpQQTKr7xeRL5iD5MbbXUARgB2asnaAZTIeGu Q==;
X-CSE-ConnectionGUID: TS8XMkE6SCiU5f1mDGCuXA==
X-CSE-MsgGUID: E7Q/b30iR6OWekXY4bLFOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862272"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862272"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:37 -0800
X-CSE-ConnectionGUID: WBktl8awRGO2x7Osq8MD0Q==
X-CSE-MsgGUID: tErn/S91TA24xY1Up8B/fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/19] drm/i915: Use intel_plane_set_invisible() in
 intel_plane_disable_noatomic()
Date: Tue, 18 Feb 2025 23:18:58 +0200
Message-ID: <20250218211913.27867-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reuse intel_plane_set_invisible() in intel_plane_disable_noatomic()
instead of hand rolling the same stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 75b184c933e7..9756f52184c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -674,13 +674,9 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		    plane->base.base.id, plane->base.name,
 		    crtc->base.base.id, crtc->base.name);
 
+	intel_plane_set_invisible(crtc_state, plane_state);
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	intel_plane_fixup_bitmasks(crtc_state);
-	crtc_state->data_rate[plane->id] = 0;
-	crtc_state->data_rate_y[plane->id] = 0;
-	crtc_state->rel_data_rate[plane->id] = 0;
-	crtc_state->rel_data_rate_y[plane->id] = 0;
-	crtc_state->min_cdclk[plane->id] = 0;
 
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
-- 
2.45.3

