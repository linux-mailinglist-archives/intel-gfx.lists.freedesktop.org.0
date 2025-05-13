Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81574AB4FC3
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2A210E506;
	Tue, 13 May 2025 09:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3AL/LUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428A710E506;
 Tue, 13 May 2025 09:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128549; x=1778664549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HEoUgeTYrityBUCJvVxqrjferJpUfmd3ceZrhXO6T40=;
 b=k3AL/LUzw/xvrQHDehFVMWgiqgH9KxZoHGTccxeffKRiXw/2IDcIjZdy
 xWS47sNyR+dc5yDf9S4XFTV/vU6WvjV8h+WNJ7n/d21GmSWhzhUfiTLOu
 tWkPCO2eJswrP0VGGrDcjyS+tHHHUhO83vN+Ltlus4eWiCh0xyDX0UTqw
 wFndxfpj0Pt2ZBo6Z7qEUewODQlCpB1mqLQP4e8nuh6JaJA7AHywGXCq5
 yf46bpNBgW6rzfmVY8UC2AidyTKH3b/8siuULg2MS8COww9gmWtNJeOjO
 63vf9NQhNSv9/K0VWmIrZaEWy+B3wroPGQyichkvWl0HtiYrJiznrvOnJ A==;
X-CSE-ConnectionGUID: ek4nh0V8T2W1xvIaey+MMw==
X-CSE-MsgGUID: EjTvUOqhTjqqa+qPlfDl/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59194658"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="59194658"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:08 -0700
X-CSE-ConnectionGUID: HN7SZ8uNSfmA8Bpc/w7gwA==
X-CSE-MsgGUID: H1+6hOHITUa6q2CPJgnuow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137511698"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/gem: drop intel_display.h include
Date: Tue, 13 May 2025 12:28:44 +0300
Message-Id: <80ea203e004b7378c14f2367258b5785e40bf126.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The include is not needed since commit 44a34dec43e8 ("drm/i915:
Calculate the VT-d guard size in the display code").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7a0cc51923b3..ef3b14ae2e0d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -3,7 +3,6 @@
  * Copyright © 2014-2016 Intel Corporation
  */
 
-#include "display/intel_display.h"
 #include "gt/intel_gt.h"
 
 #include "i915_drv.h"
-- 
2.39.5

