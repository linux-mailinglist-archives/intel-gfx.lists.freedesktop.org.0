Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F142DAEB69D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D1B10E9EC;
	Fri, 27 Jun 2025 11:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jgJ51Mbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B94910E9E8;
 Fri, 27 Jun 2025 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024246; x=1782560246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SM/AEby/8V6kR0yytaF8OHhuNUfVX1v4I0hhTRjsKxk=;
 b=jgJ51MbcxTPwiJrVH7eLp3Ffx+LCw8xl6CluSCbqVCdNc5j96uwEnS1D
 RahF3hQ8wzYj3T04xT6vNu0r9f/3sjqVLme2xkyLj/CzGC0t7QX3FrHPe
 gBdaDYyWQWYQQDA4K6ZBTttiSa68Ju3f1ltZVKHkFYLJgsBIMtpsOxBJn
 BSoxk2UM+IlcRCnqZfIy7Ll+NrOEG9t751GASSfw4il1/M7p9RBVrdT3x
 IL76E/iMiUDyVkttCgtnaSXUtyfn+KelzIEjBBTRQGbjD/JGbCjhGO5HA
 T/Tox6SEr/aJ3CKV7ovFethQgm3+NjM0M5av76tw8mXsD/sxdTg27tver w==;
X-CSE-ConnectionGUID: wzQ6uEhWRdGtn3DRrRsSwg==
X-CSE-MsgGUID: /AaAERg1S22b70xEoDF4fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460024"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460024"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:26 -0700
X-CSE-ConnectionGUID: BKMmo2qDROuHOfUdrJGAYA==
X-CSE-MsgGUID: 276SJQACSDWROQmushjYbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071283"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/18] drm/i915/power-well: use generic read_poll_timeout()
 instead of wait_for() for VLV/CHV
Date: Fri, 27 Jun 2025 14:36:24 +0300
Message-Id: <6e4024a4d33963307595cd1f7a53a2b9fc04ab3e.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
100 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 29 ++++++++++---------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 92f4c81d9d1f..711469627d14 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1122,6 +1122,8 @@ static void vlv_set_power_well(struct intel_display *display,
 	u32 mask;
 	u32 state;
 	u32 ctrl;
+	u32 val;
+	int ret;
 
 	mask = PUNIT_PWRGT_MASK(pw_idx);
 	state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
@@ -1129,10 +1131,7 @@ static void vlv_set_power_well(struct intel_display *display,
 
 	vlv_punit_get(display->drm);
 
-#define COND \
-	((vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask) == state)
-
-	if (COND)
+	if ((vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask) == state)
 		goto out;
 
 	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL);
@@ -1140,14 +1139,16 @@ static void vlv_set_power_well(struct intel_display *display,
 	ctrl |= state;
 	vlv_punit_write(display->drm, PUNIT_REG_PWRGT_CTRL, ctrl);
 
-	if (wait_for(COND, 100))
+	ret = read_poll_timeout(vlv_punit_read, val,
+				(val & mask) == state,
+				500, 100 * 1000, false,
+				display->drm, PUNIT_REG_PWRGT_STATUS);
+	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
 			vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL));
 
-#undef COND
-
 out:
 	vlv_punit_put(display->drm);
 }
@@ -1711,23 +1712,25 @@ static void chv_set_pipe_power_well(struct intel_display *display,
 	enum pipe pipe = PIPE_A;
 	u32 state;
 	u32 ctrl;
+	int ret;
 
 	state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
 
 	vlv_punit_get(display->drm);
 
-#define COND \
-	((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe)) == state)
-
-	if (COND)
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	if ((ctrl & DP_SSS_MASK(pipe)) == state)
 		goto out;
 
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	ctrl &= ~DP_SSC_MASK(pipe);
 	ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
 	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, ctrl);
 
-	if (wait_for(COND, 100))
+	ret = read_poll_timeout(vlv_punit_read, ctrl,
+				(ctrl & DP_SSS_MASK(pipe)) == state,
+				500, 100 * 1000, false,
+				display->drm, PUNIT_REG_DSPSSPM);
+	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-- 
2.39.5

