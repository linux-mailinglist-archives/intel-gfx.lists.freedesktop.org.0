Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB8928AF4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702FC10EBE2;
	Fri,  5 Jul 2024 14:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TU1YZn09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D360D10EBDE;
 Fri,  5 Jul 2024 14:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191201; x=1751727201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yuWK569fn0BbWf2H0ebVSiXc3pztdsU38tKJ1tyGawA=;
 b=TU1YZn09YKIC46IdnvWpLatcw7d28Q97kECVh9mmlKRWoBGfLxxPJiRW
 2z18ZBwQZjlTb4wO9+SWtZzi5kVLJUjrRKNp/M5osRfs9zEbbN0Jb+pjr
 /eGggZf8BbWbUptZzlHRVJNi9MbAfNV0yTiDYY1bl+B3cRQFjoq3V/YUZ
 095FmEomjmg0ESAcVoVcMGHdiuFivh9tvKf85FSdSzNxn5LZOitcliwaG
 8BGqaLvDkX+3Y/jF4Gkk58cNYqS7dV7yKHSz+v3yETQx2sjBsnMCpKPyT
 in4zyqKWTBdJXv33CZRCD/+mz87mPuDp4hfOcl2sC6XfeSeOgelMRAkAM g==;
X-CSE-ConnectionGUID: 41xCZbQiS0yeOu+TFjZq5Q==
X-CSE-MsgGUID: y4FaCsODRBW495zDufhlew==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204752"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204752"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:21 -0700
X-CSE-ConnectionGUID: ov2rHzWqT62VzEnwKtwb6A==
X-CSE-MsgGUID: EaXua756TCq0ULs23qF8vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864419"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/20] drm/i915/fbc: Extract _intel_fbc_cfb_stride()
Date: Fri,  5 Jul 2024 17:52:42 +0300
Message-ID: <20240705145254.3355-9-ville.syrjala@linux.intel.com>
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

Pull the lower level stuff out from intel_fbc_cfb_stride() into
a separate function that doesn't depend on the plane_state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 5ba3d8797243..4a9321f5218f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -149,12 +149,11 @@ static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *p
 }
 
 /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane_state)
+static unsigned int skl_fbc_min_cfb_stride(struct intel_display *display,
+					   unsigned int width)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
 	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
-	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
 	unsigned int height = 4; /* FBC segment is 4 lines */
 	unsigned int stride;
 
@@ -179,22 +178,29 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
 }
 
 /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
+static unsigned int _intel_fbc_cfb_stride(struct intel_display *display,
+					  unsigned int width, unsigned int stride)
 {
-	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
-
 	/*
 	 * At least some of the platforms require each 4 line segment to
 	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
 	 * that regardless of the compression limit we choose later.
 	 */
 	if (DISPLAY_VER(display) >= 9)
-		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(plane_state));
+		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(display, width));
 	else
 		return stride;
 }
 
+static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
+	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
+	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
+
+	return _intel_fbc_cfb_stride(display, width, stride);
+}
+
 static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-- 
2.44.2

