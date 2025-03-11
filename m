Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D0EA5C357
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 15:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4D410E1E1;
	Tue, 11 Mar 2025 14:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVXInqlm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786B010E18E;
 Tue, 11 Mar 2025 14:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741702285; x=1773238285;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kuI8tjzkhL9VPgXf0pnSe7ZIB8Eguem2s0E1vh/6EnI=;
 b=lVXInqlm4trJRQ+7ZtpySphc6F1vfoL4l5PwaT8kHCNX1Ap+Gs5INQ2z
 ZAhCFtLL0f5MzLksxN/LS7N6+GlgT3YfesiI/73gINhko7hD1pza2DLrr
 m2T+YkpgvcYwV4fBmRXNIoQBGMWhbHUjCPQIG54A7inq7TjOQ7lx1jnLr
 nTbtohp7/gSAJZtFx8FVipKNd6xgpRNCLR6g4pds6feWVvHmkIAkB6x/H
 Q8KJEkr4UpphDauQajcdWNFpe3VcRoC0Ns5rA+xG/+kD1fiCulcJNPh1g
 jcxeoZeMCvnP8nchf57I3dPOBHAuUmKsKSYP36cOWQGCq0ldg6AyOgftR Q==;
X-CSE-ConnectionGUID: yJBMdzktQweBM6ylEJaVhw==
X-CSE-MsgGUID: aEF1bdIgSvyPu1BzM2G6RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="30314974"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="30314974"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:11:24 -0700
X-CSE-ConnectionGUID: jZblMHxMRqiAh0QSdJ6eyg==
X-CSE-MsgGUID: TDxmY4vrR5a8uOrxkCaCUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="121226528"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:11:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH] drm/i915/display: Maintain alphabetical order for HAS_AS_SDP
 and HAS_CMRR
Date: Tue, 11 Mar 2025 19:29:25 +0530
Message-ID: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 717286981687..332647c4ca81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -142,10 +142,12 @@ struct intel_display_platforms {
 	func(supports_tv);
 
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
+#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
 #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
+#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
 #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
 #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
@@ -189,8 +191,6 @@ struct intel_display_platforms {
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
-#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
-#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
-- 
2.45.2

