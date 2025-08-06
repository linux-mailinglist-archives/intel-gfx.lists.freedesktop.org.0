Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D31BB1CA14
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E6410E7AF;
	Wed,  6 Aug 2025 16:55:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KEVB1BRc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075FD10E7AF;
 Wed,  6 Aug 2025 16:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499341; x=1786035341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/aYhT0mBsG6gMnhL7vsPZb5SMyvi6XJ9x/C5sRpf55M=;
 b=KEVB1BRc0opXXTHDK2+jZMeTvfgr2Pqi8a+wRBybSPlwDS95mDXdROZU
 Y/Ss8nbFk69nIk3nnaKHVCd6+eZYH79C8ZUqh+MJTgrBH8xoD4YSwByhC
 g6+Lh8wBxO1UZ5/Wv1DznM4cYCpo9a4ZK+Kpbmjq9gbgw4ephbb6rel2v
 ypWwHqhr2PqC9YvrF4Vq8c0wG0HvoRcgSX371x5HEuouW2GVeW3sYy90f
 7aRUcxr/t3Dr9xa1Cf2Oq2c8VAMQF5JPDzNHfVmnyYt5wMqX+mmLC4JT8
 61QmHbEzkysAVyg4FENcaakfxsuGEuhcB8LVFhtpTnH0xoTDHKce3HLzK Q==;
X-CSE-ConnectionGUID: OMUdQ9ayThW/DMzh/QkrjQ==
X-CSE-MsgGUID: 0gx11zxgQXKaB0Lym+qnKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199680"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199680"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:41 -0700
X-CSE-ConnectionGUID: K/3JO3eyTLq2JKeij9BoLQ==
X-CSE-MsgGUID: 0wK5AzUFQlC8+X7kP0eBxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659305"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/15] drm/i915/clockgating: pass display to HAS_PCH_*() macros
Date: Wed,  6 Aug 2025 19:55:05 +0300
Message-Id: <824750abaf4587501d61dce964b36542d93931f7.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Underneath, the HAS_PCH_*() macros expect struct intel_display. Switch
to it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index b4dddd03eaf3..bd919fa3bee5 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -308,11 +308,13 @@ static void gen6_init_clock_gating(struct drm_i915_private *i915)
 
 static void lpt_init_clock_gating(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
+
 	/*
 	 * TODO: this bit should only be enabled when really needed, then
 	 * disabled when not needed anymore in order to save power.
 	 */
-	if (HAS_PCH_LPT_LP(i915))
+	if (HAS_PCH_LPT_LP(display))
 		intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D,
 				 0, PCH_LP_PARTITION_LEVEL_DISABLE);
 
@@ -356,7 +358,9 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 
 static void cnp_init_clock_gating(struct drm_i915_private *i915)
 {
-	if (!HAS_PCH_CNP(i915))
+	struct intel_display *display = i915->display;
+
+	if (!HAS_PCH_CNP(display))
 		return;
 
 	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
@@ -497,6 +501,8 @@ static void hsw_init_clock_gating(struct drm_i915_private *i915)
 
 static void ivb_init_clock_gating(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
+
 	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
@@ -534,7 +540,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
 			 GEN6_MBC_SNPCR_MED);
 
-	if (!HAS_PCH_NOP(i915))
+	if (!HAS_PCH_NOP(display))
 		cpt_init_clock_gating(i915);
 
 	gen6_check_mch_setup(i915);
-- 
2.39.5

