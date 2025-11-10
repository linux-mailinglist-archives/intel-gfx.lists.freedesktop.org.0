Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3592DC48555
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56F410E4A5;
	Mon, 10 Nov 2025 17:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+si4A1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C101E10E4A7;
 Mon, 10 Nov 2025 17:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795743; x=1794331743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bNf+/Hyw/2eZoO1eg/Tn4XNFP3BsVd2Pjw32uOKo8Lg=;
 b=Y+si4A1MVL9AtgZy70mpasc7FhaGCY8Dh48R6JR67VZTiZP/JJoyKJRj
 oioxi8EyNrLAPCLKiy9xRaSnAADdCNAV2CLp7LYGgtXurWqHmxfPFVM8k
 dM1gJnQzr7Bo0ZX+y4QTQei6c58lfMFWB9od94FcnNzic9Cks3AQ4yWqv
 +vJRDOtwciVliSvEIbrG9WJWWvyUW7QwuIZo+mcaPLsH5PKIw6uRaFlQv
 aJGCX0uRCdy6Aey+ok9sWNH9CwvxM5JsKZGXksarMCVkeoZ5/MXSTgBhB
 MQiLYwKiwaflZVYOo/LXUaTb/cjwLMt2DR6X94mD5JWZK/HPa2e72qWcY w==;
X-CSE-ConnectionGUID: HdBrDFvDQni2rgjYQERVMg==
X-CSE-MsgGUID: J8FCCi67RAmDfJNxfCpSsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75143333"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="75143333"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:29:03 -0800
X-CSE-ConnectionGUID: tkDue5deQbW4ALogRvAFBw==
X-CSE-MsgGUID: MBxrKO9TSc+ATju5IdWFRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="219383597"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:29:03 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/16] drm/i915/power: Use the intel_de_wait_ms() out value
Date: Mon, 10 Nov 2025 19:27:54 +0200
Message-ID: <20251110172756.2132-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Utilize the 'out_value' output parameter of intel_de_wait_ms()
isntead of re-readiong the PHY_CONTROL register after polling
has finished.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8593d2daeaa6..f4f7e73acc87 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1358,6 +1358,7 @@ static void assert_chv_phy_status(struct intel_display *display)
 	u32 phy_control = display->power.chv_phy_control;
 	u32 phy_status = 0;
 	u32 phy_status_mask = 0xffffffff;
+	u32 val;
 
 	/*
 	 * The BIOS can leave the PHY is some weird state
@@ -1446,11 +1447,10 @@ static void assert_chv_phy_status(struct intel_display *display)
 	 * so the power state can take a while to actually change.
 	 */
 	if (intel_de_wait_ms(display, DISPLAY_PHY_STATUS,
-			     phy_status_mask, phy_status, 10, NULL))
+			     phy_status_mask, phy_status, 10, &val))
 		drm_err(display->drm,
 			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
-			intel_de_read(display, DISPLAY_PHY_STATUS) & phy_status_mask,
-			phy_status, display->power.chv_phy_control);
+			val & phy_status_mask, phy_status, display->power.chv_phy_control);
 }
 
 #undef BITS_SET
-- 
2.49.1

