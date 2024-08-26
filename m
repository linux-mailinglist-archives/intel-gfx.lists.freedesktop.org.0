Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F995F6A0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34CB10E244;
	Mon, 26 Aug 2024 16:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I13GMC36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA60B10E244;
 Mon, 26 Aug 2024 16:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689936; x=1756225936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pd+PG32GHOxLG7l7trY6Y5G1gS5xJ2Mp/5OV7xsftWQ=;
 b=I13GMC369KV76kmFG3P3Gkw/JZXCFMN5+kpQJktYDoofmGgHT1W1FmBG
 Slqtyf5W0IjmRHHpdmV3HggjZNjnCR7w5Yi1duXVjfu+/gDZJ6bH7yML5
 dPPhCl38ov0KUUD5WVBNK2+UN8U69eO4j8QDVfgy67MGrevGiP408ZXEG
 mloWS5Ezt2kiyieK75igXEWKa0o0qzjgO2zRYS6dA7i+CPbeOfaj3e9Si
 raq1rjL7dkLqntokP6lbzdSdimRdXnM1nbB0t3jRQHS3Zdpb+40bh3M7T
 xj6m00ACn07eheK+B+A8lAFDBj+lkWHRs5XKj29nca/7K9lbAfGVyQkwM Q==;
X-CSE-ConnectionGUID: wHThbWbaRgathL5ksw8d5A==
X-CSE-MsgGUID: 1IY5XOMsRpyCIZW3SdceAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33694384"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="33694384"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:16 -0700
X-CSE-ConnectionGUID: dqzVxdWqSsKSrhuh3fvRaA==
X-CSE-MsgGUID: eJuEz4XfS4Szr7ZdBDy4GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="67387574"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:32:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/7] drm/i915/display: drop extra includes from
 intel_display_types.h
Date: Mon, 26 Aug 2024 19:31:20 +0300
Message-Id: <bf61599a9cafd9c674a23296eca305fcbf6f44c1.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

Drop some unnecessary includes from intel_display_types.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 824dcae19c75..d1b5dba1fab6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -26,10 +26,8 @@
 #ifndef __INTEL_DISPLAY_TYPES_H__
 #define __INTEL_DISPLAY_TYPES_H__
 
-#include <linux/i2c.h>
 #include <linux/pm_qos.h>
 #include <linux/pwm.h>
-#include <linux/sched/clock.h>
 
 #include <drm/display/drm_dp_dual_mode_helper.h>
 #include <drm/display/drm_dp_mst_helper.h>
@@ -38,7 +36,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_encoder.h>
-#include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank_work.h>
-- 
2.39.2

