Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801CDB5523A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6D810EC88;
	Fri, 12 Sep 2025 14:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bp1nDtj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0591510EC88;
 Fri, 12 Sep 2025 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688577; x=1789224577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AO6Ik+Sh312UePZlrfmsyrcl5PrCegHMYFp+ZI7L9kA=;
 b=Bp1nDtj/5IZt5lOOFwKuRsOBWOJPongXfI+imdROBzftsnwAPuDzBDYZ
 HCJ3T1zN1Ddy14nAfwfFQ8vpu++78jEQZEuR4F6pRLOg4Jp2mq5drMGEO
 nuEwQvco4mcV/KEg6maUwjLDcMhKTYboo9o8nUyQn3zQ0WrTdkZ8EeIeQ
 F0CfoceRNJTPk/gE9ZeOPHSxEJ9pGEAc6VFRPF7c/jr9RVJjmcOIj7b0n
 LJT1U/CChLXBwJjQlRtMtwTQ4M6sa3tOw0J7nJTzp1TTbhL5kxAvLJih0
 vbBSvdyzTj4XrUopVSZUQw48SY4Eedcm49PZLw49Rfy+T2IkcSzuQzdna g==;
X-CSE-ConnectionGUID: OTNjwEUKQHywz416GXSPBg==
X-CSE-MsgGUID: 0H+mdW0nQNK5tVta2L7XZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63858217"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63858217"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:36 -0700
X-CSE-ConnectionGUID: GkGJ/fG4S3uzExg3CM38og==
X-CSE-MsgGUID: WRdXbhtjRMydO/88Fg1LpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174424106"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 06/15] drm/i915: make vlv_get_cck_clock_hpll() static
Date: Fri, 12 Sep 2025 17:48:45 +0300
Message-ID: <0a778d82e2be112b0cd37cd3329103a764967a1d.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 487870811d3a..9ba6f439205a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -176,8 +176,8 @@ int vlv_get_cck_clock(struct drm_device *drm,
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
2.47.3

