Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F7184E3D1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62DA10E8A3;
	Thu,  8 Feb 2024 15:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMmVJBOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1268010E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405462; x=1738941462;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y8KGRrDvENvfJTvw0HhiT+j/tV95pAhVT1WEMYCK59c=;
 b=kMmVJBOnsGo99ej+k90CbptlN/hyPk1mAp0ok399bmXIxYFy3pDVCVbo
 Y+TnnAvz5oP0ftWDi3YNvmqI3ox98svIJcxQh6dTnteXCAzjzIJQYG83C
 wQXPU03NrSWHshmpRMVUWso360VaIyUO7hXTIUYcFzW4zH+zBPzENxVvZ
 0V9bI97IK3U55jkXoQeEs/SR75U5exaTq48nfzQ3cenvn9TdhL/Cy+kY0
 7pPLpdhIR5lAxRvzVEOliY17y/7MENwJrQQmGV4ejejMdfGNIeszG5rOg
 mdqTOmxYWkwU4H8jcDab+5mvTAMIY99Su1yiwiT/ZsWlpHOSXd3f4juXf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219245"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219245"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863660"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863660"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/13] drm/i915/bios: Switch to kms debugs
Date: Thu,  8 Feb 2024 17:17:13 +0200
Message-ID: <20240208151720.7866-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

The VBT code is all about displays, so switch to UT_KMS debugs
from UT_DRIVER.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5f04e495fd27..63655b17714c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2911,17 +2911,17 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 		return false;
 
 	if (sizeof(struct vbt_header) > size) {
-		DRM_DEBUG_DRIVER("VBT header incomplete\n");
+		DRM_DEBUG_KMS("VBT header incomplete\n");
 		return false;
 	}
 
 	if (memcmp(vbt->signature, "$VBT", 4)) {
-		DRM_DEBUG_DRIVER("VBT invalid signature\n");
+		DRM_DEBUG_KMS("VBT invalid signature\n");
 		return false;
 	}
 
 	if (vbt->vbt_size > size) {
-		DRM_DEBUG_DRIVER("VBT incomplete (vbt_size overflows)\n");
+		DRM_DEBUG_KMS("VBT incomplete (vbt_size overflows)\n");
 		return false;
 	}
 
@@ -2931,13 +2931,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 			      vbt->bdb_offset,
 			      sizeof(struct bdb_header),
 			      size)) {
-		DRM_DEBUG_DRIVER("BDB header incomplete\n");
+		DRM_DEBUG_KMS("BDB header incomplete\n");
 		return false;
 	}
 
 	bdb = get_bdb_header(vbt);
 	if (range_overflows_t(size_t, vbt->bdb_offset, bdb->bdb_size, size)) {
-		DRM_DEBUG_DRIVER("BDB incomplete\n");
+		DRM_DEBUG_KMS("BDB incomplete\n");
 		return false;
 	}
 
-- 
2.43.0

