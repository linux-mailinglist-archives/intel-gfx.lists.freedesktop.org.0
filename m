Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE68FE514
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E717A10E900;
	Thu,  6 Jun 2024 11:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oFkxDsLV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFC210E900
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672636; x=1749208636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZOgEAiHEWiyAbTzpi8HJDXU3VSU9aBW5O3T3mfOUm/0=;
 b=oFkxDsLVEQK6y43C+9yqF5fr7Fu9oZP5FMwkbyE+sLuP83TX+Z+nHw0l
 9qe9AKpZw6oZQ0EFr/NhbU9LP5DJDO0OSyAzX7yC0Qh6Tls0GAWkdWvXN
 AmftoCG2D8547rbFdb3dydAc87yogYsbcGZrHPyU+l5knnST6fY5FJxeQ
 vGdU7fTL8c+54ffmuc3jGxoXt4LfctyDRqglGr3zBz9qTyUFNXo2PhY/W
 XK/+O/E75JFHTmVAAFE7Z2RlsYEB8pDDNJ5GxvoNqqyLeDMEPOkVEEjuV
 wMOBpzCmG+LEXFE+bVVjHP/KUh7ucAEyULa1xrCl7Di1B0kGvPmWS0hfh w==;
X-CSE-ConnectionGUID: YWzM0RQSTZG47D6UQPSZ2g==
X-CSE-MsgGUID: A8jbQeqmRKaNVX878qdXsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14137202"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14137202"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:58 -0700
X-CSE-ConnectionGUID: fw87b37sS0uavViXmUQEfQ==
X-CSE-MsgGUID: deAS37eXRY2/gUZiBEllwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38020204"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 14/14] drm/i915: move comments about FSB straps to proper
 place
Date: Thu,  6 Jun 2024 14:16:06 +0300
Message-Id: <58eda13ef17b14f5d497944f76d9692442ce099d.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
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

Move the comment about FSB straps to where the relevant register is
read.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +----------
 drivers/gpu/drm/i915/soc/intel_dram.c      |  8 ++++++++
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 17d04353b2b0..5336c8846d89 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3546,16 +3546,7 @@ static int vlv_hrawclk(struct drm_i915_private *dev_priv)
 
 static int i9xx_hrawclk(struct drm_i915_private *i915)
 {
-	/*
-	 * hrawclock is 1/4 the FSB frequency
-	 *
-	 * Note that this only reads the state of the FSB
-	 * straps, not the actual FSB frequency. Some BIOSen
-	 * let you configure each independently. Ideally we'd
-	 * read out the actual FSB frequency but sadly we
-	 * don't know which registers have that information,
-	 * and all the relevant docs have gone to bit heaven :(
-	 */
+	/* hrawclock is 1/4 the FSB frequency */
 	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
 }
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index dac39b41fa51..4aba47bccc63 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -146,6 +146,14 @@ unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
 
+	/*
+	 * Note that this only reads the state of the FSB
+	 * straps, not the actual FSB frequency. Some BIOSen
+	 * let you configure each independently. Ideally we'd
+	 * read out the actual FSB frequency but sadly we
+	 * don't know which registers have that information,
+	 * and all the relevant docs have gone to bit heaven :(
+	 */
 	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
 
 	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
-- 
2.39.2

