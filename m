Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D3B1B0DB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5AB610E63A;
	Tue,  5 Aug 2025 09:19:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="csG9PsnZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588CB10E634;
 Tue,  5 Aug 2025 09:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385541; x=1785921541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=trVN0dzBos7BGQ3e3itlufLQ+6rGmmdjKff5/z3n7Cc=;
 b=csG9PsnZlRnRcEWsBnBTrmSjE5zNnh2UT8GgRCgkwQaTlNCFqyEqAtaT
 krxutyFkeSYslo85V7eg/CO2Wbm7yBIDdbT3Ce+v9wLyHy14T/EDjyFHN
 MeAXES81l961zXIHVceehz4YSnspAbMhQs3TLwzxRHhjL4jnxkdmLsjRZ
 acx2blsYlwZcEb946AGUPThRGmBPtXmNnGi28AUyAdVy/fExVYUCPohcN
 vFedI9lMrr4QBKA4IiXs00sHpdqx9EcsXapPIyvCQrrjHgEZqf44QSZRG
 ZxDZ4WRuWWPNdZJgeXDSpqvp/qFw1FBVrvbOExyVVGW9lu6zxzzNQQRDR A==;
X-CSE-ConnectionGUID: pqVIQmJMQ2y41xkPvKmFFQ==
X-CSE-MsgGUID: buLVdVM/Tdiv8ykHg/oNXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504360"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504360"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:01 -0700
X-CSE-ConnectionGUID: s7Ibl5vLTPWipBatq0j4uw==
X-CSE-MsgGUID: 03ZCgpK4QFyxebkU/AIQQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398078"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/12] drm/i915: make vlv_get_cck_clock() static
Date: Tue,  5 Aug 2025 12:18:19 +0300
Message-Id: <6d99f45f98151a8a7cc0b90bce5708775661316e.1754385408.git.jani.nikula@intel.com>
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

vlv_get_cck_clock() is no longer used outside of intel_display.c, make
it static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a758346221e..4e368d409f01 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -152,8 +152,8 @@ int vlv_get_hpll_vco(struct drm_device *drm)
 	return vco_freq[hpll_freq] * 1000;
 }
 
-int vlv_get_cck_clock(struct drm_device *drm,
-		      const char *name, u32 reg, int ref_freq)
+static int vlv_get_cck_clock(struct drm_device *drm,
+			     const char *name, u32 reg, int ref_freq)
 {
 	u32 val;
 	int divider;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9fdbc4ad5391..57b06cad314b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -436,8 +436,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 int vlv_get_hpll_vco(struct drm_device *drm);
-int vlv_get_cck_clock(struct drm_device *drm,
-		      const char *name, u32 reg, int ref_freq);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_cdclk(struct drm_device *drm);
-- 
2.39.5

