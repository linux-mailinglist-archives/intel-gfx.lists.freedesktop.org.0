Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C2096BD41
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DF410E7AE;
	Wed,  4 Sep 2024 12:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmtjOO6i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E98B10E7AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725454619; x=1756990619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NbngxkcOUvisOk3yTd7kjNxMXlvJ56Jdbndf9Q+uXMc=;
 b=ZmtjOO6i0zLdStRuJHfdUzFz8K6FJRCIGnz4F/lpY23ACnOX05lxnVeX
 KRrBKv/ukgSEk3ARIgNL4bKGpRRUX+CxtVH/cfVg5bWI2JAfeRDV8qThN
 Blv4XlqLE1r2fnF5DXXeGFq4fYvfXMEO6kJWHV3Vi1kg5n7moxxqusXdq
 gdlThxYoOv8MisvXJgMLwaWdmED7PqlUClwqqeblf+DWQFWa/6ulkEBAu
 ntFjntKj7AfUvCt9FuSVJiU+WixD4Vcme9OsymC/tKNeEf0cBY4mdg7Wa
 LojVRmCn5u6IVOhu59w55eHq8RYszwt979lpb8gm1hl+5lsj5aSmMLrnN w==;
X-CSE-ConnectionGUID: UJOFcHnxT2WJ3BQ0z2s4bw==
X-CSE-MsgGUID: ANR4+BWOQW+NGpwIGnziZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35500290"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35500290"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:56:58 -0700
X-CSE-ConnectionGUID: 8+rNNvAoREyHj2Tmp+zx+w==
X-CSE-MsgGUID: m8CwHU3DRiyZIYhEn2NISQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70134810"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:53:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: use to_intel_display() global state macros
Date: Wed,  4 Sep 2024 15:53:01 +0300
Message-Id: <20240904125301.3813721-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Convert intel_atomic_get_{old,new}_cdclk_state() and
intel_atomic_get_{old,new}_dbuf_state() to use to_intel_display()
instead of to_i915().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index cfdcdec07a4d..1fe445a3a30b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -88,9 +88,9 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 	container_of_const((global_state), struct intel_cdclk_state, base)
 
 #define intel_atomic_get_old_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->cdclk.obj))
 #define intel_atomic_get_new_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->cdclk.obj))
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
 void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 78b121941237..e73baec94873 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -73,9 +73,9 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 	container_of_const((global_state), struct intel_dbuf_state, base)
 
 #define intel_atomic_get_old_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 #define intel_atomic_get_new_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 
 int intel_dbuf_init(struct drm_i915_private *i915);
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
-- 
2.39.2

