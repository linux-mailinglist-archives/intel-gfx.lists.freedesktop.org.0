Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B869F6C71
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 18:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E8810E343;
	Wed, 18 Dec 2024 17:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1Q6Dis9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32D710EC1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 17:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734543561; x=1766079561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ez7N0N7o3+6nJ01R9Qy8bDgSgFFvG3YGEb0iqpDyb+E=;
 b=G1Q6Dis9vflbGMY3NWL2thCdPk+xokPKmcmnWMPwClCTE2a174KNZNUA
 rPOoPoxSdVIHBs1OH/feLWwmxVufo+azPVCgiB81OG1Qmz7dUQel+wd1M
 fhHqRVEy6yHOjBKmcrVoDQZkIgqM0Ed5YRkeWvm+0YoNzM8qOvx+/EPV3
 6P235q+JXkslyljBc+Fp2wyQ/fPIkCNbWkBCZ6JFQMz5jhc53aPk4hRc2
 UfTZqJ3NA1MxMHlkZ39oCU9Immnden12LOeIvXkh9G5wX/ZykqspdxoYf
 h1vQOfUkmOSHwg/7/qBnHZJ92rRFXWHSyW7O+7nkknIAh317ic6pN8+Uq g==;
X-CSE-ConnectionGUID: xIQNt6JAQeKWZ1cjmoEDtQ==
X-CSE-MsgGUID: JtuuZ7A8Sl6kf7ZSr5vDLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22619207"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22619207"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 09:36:56 -0800
X-CSE-ConnectionGUID: mBv1F+0RQKaKPDl6uUu7OA==
X-CSE-MsgGUID: Q4aapQR6Qnm7fSF9U8fx0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98165369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Dec 2024 09:36:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2024 19:36:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH 1/4] drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
Date: Wed, 18 Dec 2024 19:36:47 +0200
Message-ID: <20241218173650.19782-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
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

I'm seeing underruns with these 64bpp YUV formats on TGL.

The weird details:
- only happens on pipe B/C/D SDR planes, pipe A SDR planes
  seem fine, as do all HDR planes
- somehow CDCLK related, higher CDCLK allows for bigger plane
  with these formats without underruns. With 300MHz CDCLK I
  can only go up to 1200 pixels wide or so, with 650MHz even
  a 3840 pixel wide plane was OK
- ICL and ADL so far appear unaffected

So not really sure what's the deal with this, but bspec does
state "64-bit formats supported only on the HDR planes" so
let's just drop these formats from the SDR planes. We already
disallow 64bpp RGB formats.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ff9764cac1e7..80e558042d97 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -106,8 +106,6 @@ static const u32 icl_sdr_y_plane_formats[] = {
 	DRM_FORMAT_Y216,
 	DRM_FORMAT_XYUV8888,
 	DRM_FORMAT_XVYU2101010,
-	DRM_FORMAT_XVYU12_16161616,
-	DRM_FORMAT_XVYU16161616,
 };
 
 static const u32 icl_sdr_uv_plane_formats[] = {
@@ -134,8 +132,6 @@ static const u32 icl_sdr_uv_plane_formats[] = {
 	DRM_FORMAT_Y216,
 	DRM_FORMAT_XYUV8888,
 	DRM_FORMAT_XVYU2101010,
-	DRM_FORMAT_XVYU12_16161616,
-	DRM_FORMAT_XVYU16161616,
 };
 
 static const u32 icl_hdr_plane_formats[] = {
-- 
2.45.2

