Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A3B2C439
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC1910E5E4;
	Tue, 19 Aug 2025 12:54:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxh5tJ5x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6B610E5E1;
 Tue, 19 Aug 2025 12:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608050; x=1787144050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3nPYiAYaOS0lP+VzCUHZp66IlYt2Xs78Gm8ByjEjAHU=;
 b=nxh5tJ5xh1nE+CSGPke805ieaot2Lj2xAALIH51khVRnsDc/J/rH0BdV
 ezzbBb7LgiGEHMltExLm+bdCdqkR55t0yyPhpWXv55Oealx+GOrL1TrDR
 Ohmv1Y6EAf0HldJ5G2vR3c7MGLnRN0IY1OO+5SWYuGcBCCONWeh8NKKRE
 4deMpbIuF9HFtsxhEm8HlkJnOJ3PuxzPwT/SZlM3SNz5YRf3W29qufKrk
 GxFkMk0b3ATbSybQV94tt2we4e76oB4qm3u0tvKVKuIwM0TKViaCBgyxY
 JvdfUb2/fF79HrQHyExp2pqBe998tg1US1DVGb/5ASUnziI3V7fXBgQuo Q==;
X-CSE-ConnectionGUID: fTjOUrSIShWxMpwEEYJ5wQ==
X-CSE-MsgGUID: PndmQw4LT6eKrp5lL2gZeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300788"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300788"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:10 -0700
X-CSE-ConnectionGUID: yNjaqF4QTgCQmQG/KwnZ2w==
X-CSE-MsgGUID: RKbiO82bQVqa8mzPIO2JRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246558"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 04/12] drm/i915: make vlv_get_cck_clock_hpll() static
Date: Tue, 19 Aug 2025 15:53:34 +0300
Message-ID: <3da18444ea7e6f6c861e332e88b4ec401375b056.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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
index a5f67adfb856..8baa5f898284 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -169,8 +169,8 @@ int vlv_get_cck_clock(struct drm_device *drm,
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
2.47.2

