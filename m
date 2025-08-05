Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD6B1B0D9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FACA10E618;
	Tue,  5 Aug 2025 09:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QeJINZ/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804FE10E618;
 Tue,  5 Aug 2025 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385531; x=1785921531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ch7PicO7uhnZzM3eAS9qZBCOkeCLaEeEcx/K5AJs9bU=;
 b=QeJINZ/rSdWCUVCuubbIvBVHv3eWArJ6JX9iM6ZUGa3yhjiMpxxuyVKX
 Tr6Q6qBoEDCv9PXo1vKaROdrGNiFhxFddwEfk0ez4xni7lm9P2QoJUM/M
 eWbK5dWHbRTmEWz9fPh+GLPlZq4koWkla9+7A/5/qSccOFMCHckrVgn4D
 CA5M7prf5qoSpg9eNu+dsfix8L3OigGKktAxsGWtDTkKkr4qlcoVZpinC
 m4VXHwGZ7yVJ7zT9R2k6HT2LaxiJJRBdfoPjsG5so0NpyqdxLSEy19y87
 FDHTsgCaD0iQ146BdBXxWMIa32TMuUNrGV8LDke2EJugVILhTGXIef93m A==;
X-CSE-ConnectionGUID: VtUiqhSpQ4is5A3CtA7BlQ==
X-CSE-MsgGUID: qWmVjnA0QFe0VQ4oUkN1AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504326"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:51 -0700
X-CSE-ConnectionGUID: vW8dMPiBRfypvBM81/YUcQ==
X-CSE-MsgGUID: NpqhWZjKQseUsjp192SHxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398065"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/12] drm/i915: make vlv_get_cck_clock_hpll() static
Date: Tue,  5 Aug 2025 12:18:17 +0300
Message-Id: <924fdf06f6e1064239d545bb712f435d6bb41380.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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

vlv_get_cck_clock_hpll() is no longer used outside of intel_display.c,
make it static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2915d8fd127f..3085fbb6bc8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -168,8 +168,8 @@ int vlv_get_cck_clock(struct drm_device *drm,
 	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
 }
 
-int vlv_get_cck_clock_hpll(struct drm_device *drm,
-			   const char *name, u32 reg)
+static int vlv_get_cck_clock_hpll(struct drm_device *drm,
+				  const char *name, u32 reg)
 {
 	struct drm_i915_private *dev_priv = to_i915(drm);
 	int hpll;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index dbfb4b4aee4e..5c9b57e94a65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -438,8 +438,6 @@ void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 int vlv_get_hpll_vco(struct drm_device *drm);
 int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
-int vlv_get_cck_clock_hpll(struct drm_device *drm,
-			   const char *name, u32 reg);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
-- 
2.39.5

