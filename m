Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9E2671D4E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E02F10E749;
	Wed, 18 Jan 2023 13:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5970D10E749
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047774; x=1705583774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IBdy6gKXzI3USsQPoRf3iPNWHhzkDXCAtjmE9pWl3BE=;
 b=kVTc/dwcDekp3V1TzAjCoeyO8wH/TCGa5Rrv3Qnus528YR+cQJzryuOx
 AIfKlT6Xe0t8CQ1tvNBHF6va0+P6a63ryC00FOTRmZ33UFgocLJcLBh9w
 hNPseJ0GdAbcPsgwApMRE7WLLjogvvf5r1ZO9kki34kuaL6d5EYA4juwM
 j9G9k4cKtD8LaTnfcf8HhdQy3uJ9LLYCbuWTfegJfKln0EdPzo6iLXrkA
 A8dUyxynFIp81VBXoVHBQxrKclam6B4K0OeMS1DC7fXVlZR2Ic2SgAVyE
 icWGttu0T2JNzevGXfz030B51fD9SIlyY2RTghDo2rfR9rb3D8TGLpGF3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312857662"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312857662"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652933988"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652933988"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:37 +0200
Message-Id: <20230118131538.3558599-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: move I915_COLOR_UNEVICTABLE to
 i915_gem_gtt.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h     | 2 --
 drivers/gpu/drm/i915/i915_gem_gtt.h | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index eed552e507dc..d12c7932677a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -68,8 +68,6 @@ struct drm_i915_clock_gating_funcs;
 struct vlv_s0ix_state;
 struct intel_pxp;
 
-#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
-
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
 /* Data Stolen Memory (DSM) aka "i915 stolen memory" */
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index 243419783052..3d77679bf211 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -18,6 +18,8 @@ struct drm_i915_gem_object;
 struct i915_address_space;
 struct i915_gem_ww_ctx;
 
+#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
+
 int __must_check i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
 					    struct sg_table *pages);
 void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
-- 
2.34.1

