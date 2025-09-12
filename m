Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6567FB55234
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BA310EC83;
	Fri, 12 Sep 2025 14:49:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iL1/KJWl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF30110EC83;
 Fri, 12 Sep 2025 14:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688560; x=1789224560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jf1q3ZY2HbDWQIfMS5BsX+g4Z5xtoneAD7i8pszBGYo=;
 b=iL1/KJWlAgOLvhnEXTsDSxxZtS67ouXlPQYpg+vu4fOPpCiCnUkqZlNv
 gFxclY5tD7gYlYZdH6rr1WvN+Q87DD9PAuue2TRdGnYegOynCB4aPtEXd
 bEq0EsSpTdqDrGqidGR5pO5OrDwzGW3h2USbY1N4EPabd6ynwcBYVvYXm
 20i54Ps7Nj2tgEbdgMB4giCZ5zCIVUybyDEBSZgb2fdqlZuKpgOsyYXmb
 M4kRJZbK/QB9NACJie+v2Obg82SiYXMZyWPemHS1Ovq6hujSOJ+OV+4Z4
 NAokw/MAJQ3FL7fRNn1UExRj9RYDmIAj3kvaiFhldvfi5Q2ycjmhk+4Ml A==;
X-CSE-ConnectionGUID: XocOINisTAGHXiFML3kd8w==
X-CSE-MsgGUID: 6ZKzxiwvQ++61sFZuG351g==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59074539"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59074539"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:20 -0700
X-CSE-ConnectionGUID: wzHxtZWaTgWUxcdib+fCKw==
X-CSE-MsgGUID: 6f5w+sYuSJq065g8DBuN0w==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com, Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 03/15] drm/i915: add vlv_clock_get_gpll()
Date: Fri, 12 Sep 2025 17:48:42 +0300
Message-ID: <2589396fa14388d7709d2b01f1d32f9f38dab11a.1757688216.git.jani.nikula@intel.com>
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

Add a vlv_clock_get_gpll() helper to hide the details from the callers.

Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c          | 5 +----
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aef136a1be25..4599c2f37682 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -190,6 +190,14 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	return hpll;
 }
 
+int vlv_clock_get_gpll(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
+				 i915->czclk_freq);
+}
+
 void intel_update_czclk(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80..7ae899b8787a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
+int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index afc934b7f5bc..f19353f04228 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1690,10 +1690,7 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	rps->gpll_ref_freq =
-		vlv_get_cck_clock(&i915->drm, "GPLL ref",
-				  CCK_GPLL_CLOCK_CONTROL,
-				  i915->czclk_freq);
+	rps->gpll_ref_freq = vlv_clock_get_gpll(&i915->drm);
 
 	drm_dbg(&i915->drm, "GPLL reference freq: %d kHz\n",
 		rps->gpll_ref_freq);
-- 
2.47.3

