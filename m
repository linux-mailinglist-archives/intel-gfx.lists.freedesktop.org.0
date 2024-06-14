Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6CC90874C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4914F10ECB0;
	Fri, 14 Jun 2024 09:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ExR9LSml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47ECD10ECBE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357020; x=1749893020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EJf8gboTYfZ0ockTil7gKDrnxHD4/VsKQO6HXQIywwg=;
 b=ExR9LSmlRSGYRFWatznniVqM1ArXJhEUv10q5zcT6y7w2UUE5v8d1EpR
 dcxxlRPRKJSrPPI78+VS8P72Q9Uj6enNVYx32O8apa+RCuHZDOAhlzXLs
 Pn91IfrEusKzDZ7fuUgUBj9QJ4VKeWGXiGfKDsF8QFnUlhnZdZ1lYISxo
 dWnaAzV8Ot6CLIUoFVivQ4KL09XspsAGxya+OkAlNR0Xz4EhT9iZzWjwk
 ekQv03CkU40LcS5MQ37HSly/fhQfdD+pu50ZHG9PWEswGheOC00GaE04k
 uUUFM401Vz5ZN9lufrSfsoPSfWW+XNIqYKNiQ1J4sxIkBVwg18DAAPbN/ A==;
X-CSE-ConnectionGUID: 5uTY5PmpQcyBvx1BEAEOfw==
X-CSE-MsgGUID: G+5y6qcYRJWhFHsInBDOQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="40651158"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40651158"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:40 -0700
X-CSE-ConnectionGUID: mSc8PDwmTReglNS9eCW48Q==
X-CSE-MsgGUID: TCct0JgDSBGP+UTGYbcFjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40574582"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 11/11] drm/i915: move comments about FSB straps to proper place
Date: Fri, 14 Jun 2024 12:22:39 +0300
Message-Id: <8a5b6cd3db80259c30263861f1a9ff04fea2e7f0.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +----------
 drivers/gpu/drm/i915/soc/intel_dram.c      |  8 ++++++++
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b6adcbd9025f..16d5550f7e5e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3542,16 +3542,7 @@ static int vlv_hrawclk(struct drm_i915_private *dev_priv)
 
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

