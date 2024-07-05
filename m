Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E02928AEA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374B910EBD5;
	Fri,  5 Jul 2024 14:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XlB0+lqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C14E10EBD5;
 Fri,  5 Jul 2024 14:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191189; x=1751727189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=USqQl8LA05clVabvMPRTo6AzsCvyTsbDRgvur1Mddj8=;
 b=XlB0+lqHvKGwqeiouRAS7Yl6G9ENqLwJtTmf2sTm5j3CohX0NH/OJRzJ
 n8HodOZiqjkxtAvnbHUfMmZW6eiUVpF41nSEEJJSCWPxuRN6DtzbZKoYA
 yNb9Z/S+JV4BuPDk1sddwwYJbPYqx0bly315NpEy79oJSFT8hN73K4gjY
 e7yOXsPud8OCoyTMtKMqQqxtaIjA2YpG+GMnHM6p98Lxv6ovKli53teO6
 3V546dO6TuYfIDggj9on3XfTO4PZAD4/RUWZusiBWBfk03DyBLQMxvJG8
 30cOeURAXFPNE19GV648ZwLqNR20bwCAaeqTzg5OeDkJtyqh/yKb2HISa A==;
X-CSE-ConnectionGUID: w7bH5x9RTKWBEZWeZ+ZpQw==
X-CSE-MsgGUID: 7VtozqSST82NQ+v167cBLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204737"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204737"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:09 -0700
X-CSE-ConnectionGUID: ESA0nWPWStuohzEsAqDcRg==
X-CSE-MsgGUID: 2GIotfusSuWznNxN1fmpEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864376"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/20] drm/i915/fbc: Extract intel_fbc_max_plane_size()
Date: Fri,  5 Jul 2024 17:52:38 +0300
Message-ID: <20240705145254.3355-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Extract intel_fbc_max_plane_size() from intel_fbc_plane_size_valid().
We'll have another use for this soon in determining how much stolen
memory we'd like to keep reserved for FBC.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 29 +++++++++++++++---------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8f3b8f2cbf7b..08a431cfbbb3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1110,25 +1110,32 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
 	return effective_w <= max_w && effective_h <= max_h;
 }
 
-static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
+static void intel_fbc_max_plane_size(struct intel_display *display,
+				     unsigned int *w, unsigned int *h)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	struct drm_i915_private *i915 = to_i915(display->drm);
-	unsigned int w, h, max_w, max_h;
 
 	if (DISPLAY_VER(display) >= 10) {
-		max_w = 5120;
-		max_h = 4096;
+		*w = 5120;
+		*h = 4096;
 	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
-		max_w = 4096;
-		max_h = 4096;
+		*w = 4096;
+		*h = 4096;
 	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
-		max_w = 4096;
-		max_h = 2048;
+		*w = 4096;
+		*h = 2048;
 	} else {
-		max_w = 2048;
-		max_h = 1536;
+		*w = 2048;
+		*h = 1536;
 	}
+}
+
+static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	unsigned int w, h, max_w, max_h;
+
+	intel_fbc_max_plane_size(display, &max_w, &max_h);
 
 	w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	h = drm_rect_height(&plane_state->uapi.src) >> 16;
-- 
2.44.2

