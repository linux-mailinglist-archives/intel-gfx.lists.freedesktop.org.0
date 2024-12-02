Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5EE9E028C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 13:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFF410E72C;
	Mon,  2 Dec 2024 12:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwdbscv5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395CE10E729;
 Mon,  2 Dec 2024 12:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733144092; x=1764680092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iA9/OgX9fKmCUF47ynNoC/kD+e476hs/qPaBCBNdp1E=;
 b=mwdbscv5Dlxn7LgYdtt+NjTgEX/Zy1ANJT+OsgPqzibPpt/72/fIcaHn
 3VfGcFuDp/Q3BHeY89VkPi3WQlxdr+TrTy6OJIeuafgIFIgAD8lqo9pfh
 3FMy5sg42ia+ThWccZc0XE2Jci0ZY9Azxrz6hrBn1j5mtGPIH0KJ0fSET
 SB8Im4+ykV7QSyK894l9L0cN0oO1pqCuTaqS5LC08M1aDaGKEuZSeKpTw
 8UyNzW7klIwB5xHFc9T5aOS7/go/X0tqNpJzHuTK9LJ1G1WD1BNLt9dQL
 bXnusffPd2ntNCVHkdBst/dwV1GJ+aydDcVJ2j8Ce+n6YmK0y4mySsCBU Q==;
X-CSE-ConnectionGUID: 4+inseb7QyC4+4wF4hpGVQ==
X-CSE-MsgGUID: pt0p0b8ISn+lS7M6lZSm/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="43920721"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="43920721"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 04:54:52 -0800
X-CSE-ConnectionGUID: AhxrSH8ASxCPS9PXhA3uvw==
X-CSE-MsgGUID: d72cym/eT06ZLq8l9Nrp3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="92754504"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 04:54:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: remove unused for_each_crtc()
Date: Mon,  2 Dec 2024 14:54:37 +0200
Message-Id: <20241202125437.1154945-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

This is essentially a duplicate of drm_for_each_crtc() anyway. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index caef04f655c5..49a246feb1ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -238,9 +238,6 @@ enum phy_fia {
 	for ((__phy) = PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)	\
 		for_each_if((__phys_mask) & BIT(__phy))
 
-#define for_each_crtc(dev, crtc) \
-	list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
-
 #define for_each_intel_plane(dev, intel_plane) \
 	list_for_each_entry(intel_plane,			\
 			    &(dev)->mode_config.plane_list,	\
-- 
2.39.5

