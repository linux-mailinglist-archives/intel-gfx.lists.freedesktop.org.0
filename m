Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9376928AF9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6114410EBE8;
	Fri,  5 Jul 2024 14:53:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PVnDS5Cp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8355110EBE6;
 Fri,  5 Jul 2024 14:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191210; x=1751727210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/F1PKiF1QVbVqfQeLiegS8qT1tUzRQsHhRosWSIEXrU=;
 b=PVnDS5CpJac72DVRl4f1+oZBOprwlgswJ2i+TYC30WxKjFNFGUbiCAGr
 C2EQOno3Z0doI6iZByRRPS0z5aacxSb8Th9O3E2tpKPiKepEwcqwsUudJ
 ZDSHHP6QfrYklny9jgWYbZ2KzMwNcJT2uBjNt1wTbB76D78gimhvBKu+N
 r8MmjOzwNrStCLWP5m+dyXq6awehaUfNt4ow22Jz7NlAunDTwlqkcb/i3
 Yh983enzmXGrTW5QFAhKyTNh8aj39eMA9TVA9jGm3fagiGpLZTfI/dES1
 fjkRbf6Ntpim1MrldkWcBB25ze+EWc3BEGkStIazbIQC4W2lOxcgredCF A==;
X-CSE-ConnectionGUID: lV/g814wSRWIcJbzif0xTw==
X-CSE-MsgGUID: G8mpLcmSSoeJhVwHljU4VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204766"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204766"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:29 -0700
X-CSE-ConnectionGUID: H6z6CUocTI+rVCKeab7Ocw==
X-CSE-MsgGUID: 4kOL0N0VQE2ibDK6/9iiDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864467"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/20] drm/i915/fbc: Extract intel_fbc_max_cfb_height()
Date: Fri,  5 Jul 2024 17:52:45 +0300
Message-ID: <20240705145254.3355-12-ville.syrjala@linux.intel.com>
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

Pull the code to determine the maximum CFB height
into a separate function. For pre-HSW the maximum CFB
height is the same as the maximum plane height (ie. the
older hardware supposedely doens't have the trick of leaving
the extra lines uncompressed).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 27 ++++++++++++++++++------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index cf5750ed4681..47b715e5d533 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -201,17 +201,30 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 	return _intel_fbc_cfb_stride(display, width, stride);
 }
 
-static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
+/*
+ * Maximum height the hardware will compress, on HSW+
+ * additional lines (up to the actual plane height) will
+ * remain uncompressed.
+ */
+static unsigned int intel_fbc_max_cfb_height(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 8)
-		height = min(height, 2560);
-	else if (DISPLAY_VER(display) == 7)
-		height = min(height, 2048);
+		return 2560;
+	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+		return 2048;
+	else
+		return 1536;
+}
 
-	return height * intel_fbc_cfb_stride(plane_state);
+static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	unsigned int height = drm_rect_height(&plane_state->uapi.src) >> 16;
+
+	return min(height, intel_fbc_max_cfb_height(display)) *
+		intel_fbc_cfb_stride(plane_state);
 }
 
 static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
-- 
2.44.2

