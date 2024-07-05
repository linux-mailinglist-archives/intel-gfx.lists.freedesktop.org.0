Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25645928AFB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B5B10EBE6;
	Fri,  5 Jul 2024 14:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XnuDV1to";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5813110EBE6;
 Fri,  5 Jul 2024 14:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191215; x=1751727215;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jJ0TPxq7U4kf92+3/sqv8TGTXlMdrfBTES6RTzn4roI=;
 b=XnuDV1tola0p0XEH3YJnH2aTWEik84hhhcnZN6MNYe1gsP03f6pC1q6D
 Nk7JaGQ0gi+Xk0AcdQLRzQX0iLm/DwTBPGi3pYkPtJ/22+bKUnYWEsA1v
 pqpPHIAVOCiSBajbZmonwEvNML/+Y6JzjcPf5NILbbXllJk01LYdE9X14
 mAd7yFjPgRIVeCFid+j6aE9nHrzEQTKjfEBxoVGop7MTiQ4f8NPPhjxxa
 CIg7WkENvFl3RnzecupIvhQeMcsY86wETSujjHqhJ1vR7k/2g54q+HRRT
 Z4C81/2fJ9Hm1evqmZJ/uZO3NVGXe33SkHl3zsGv9Wrv5z5taMQdnc9xM w==;
X-CSE-ConnectionGUID: g13v7+MqR62eTZjrwZopHw==
X-CSE-MsgGUID: vnZOdr3yScCarVlsDIsztQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204772"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204772"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:35 -0700
X-CSE-ConnectionGUID: 3hwA4IA+Q4OHGq4dk0f+rw==
X-CSE-MsgGUID: SXs82sRcR0ia/CbKinyP6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864506"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/20] drm/i915/fbc: Extract intel_fbc_cfb_cpp()
Date: Fri,  5 Jul 2024 17:52:47 +0300
Message-ID: <20240705145254.3355-14-ville.syrjala@linux.intel.com>
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

Extract a helper to determine the CFB bytes per pixel value.
Currently this is always 4, but that could change in the
future.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 293e1a3b9a9d..a0e539bc80f1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -140,20 +140,24 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 	return stride;
 }
 
+static unsigned int intel_fbc_cfb_cpp(void)
+{
+	return 4; /* FBC always 4 bytes per pixel */
+}
+
 /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
 static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
+	unsigned int cpp = intel_fbc_cfb_cpp();
 
 	return intel_fbc_plane_stride(plane_state) * cpp;
 }
 
 /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
 static unsigned int skl_fbc_min_cfb_stride(struct intel_display *display,
-					   unsigned int width)
+					   unsigned int cpp, unsigned int width)
 {
 	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
-	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
 	unsigned int height = 4; /* FBC segment is 4 lines */
 	unsigned int stride;
 
@@ -179,7 +183,8 @@ static unsigned int skl_fbc_min_cfb_stride(struct intel_display *display,
 
 /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
 static unsigned int _intel_fbc_cfb_stride(struct intel_display *display,
-					  unsigned int width, unsigned int stride)
+					  unsigned int cpp, unsigned int width,
+					  unsigned int stride)
 {
 	/*
 	 * At least some of the platforms require each 4 line segment to
@@ -187,7 +192,7 @@ static unsigned int _intel_fbc_cfb_stride(struct intel_display *display,
 	 * that regardless of the compression limit we choose later.
 	 */
 	if (DISPLAY_VER(display) >= 9)
-		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(display, width));
+		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(display, cpp, width));
 	else
 		return stride;
 }
@@ -197,8 +202,9 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
+	unsigned int cpp = intel_fbc_cfb_cpp();
 
-	return _intel_fbc_cfb_stride(display, width, stride);
+	return _intel_fbc_cfb_stride(display, cpp, width, stride);
 }
 
 /*
-- 
2.44.2

