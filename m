Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E93671D50
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288C410E74D;
	Wed, 18 Jan 2023 13:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFAE10E746
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047774; x=1705583774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=80/jgMgx8kseVuIlJ/geeP29Bb+jbqicsPhXgG8rj0I=;
 b=B+Qlk3IHKY1n4n7jt+bONZZmd+cGDOZjO2+hX63TLHM3ugTTYT3cgP/U
 hdcgB4RfowVyyQr66bBBPfz/CACGIl2RVQak/BFgxnk+yVartdC/qn1hd
 FSmUdCLY9xBk9koiVr0Q0zgPzESJ8l8jfpwxfTwb9OUDvy9m9hhUqp8L6
 lDgNHY1PCMimPna4zZSaYfsJBxo3V/7JOhkRTyFAr2DKd+vKtAmMubQSm
 RprPuxafu6gMivDKlV/9zvWicE1DcbU9N94EiFEHabcE/iTU0XOGbvmTl
 6+rGgtuZTAjOlsBcxFHDH2JIg0HQ6QmJQsM7fjimodzXye2ouJKNdY8Nk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312857655"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312857655"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652933952"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652933952"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:36 +0200
Message-Id: <20230118131538.3558599-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: move I915_GEM_GPU_DOMAINS to
 i915_gem.h
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
 drivers/gpu/drm/i915/i915_drv.h | 7 -------
 drivers/gpu/drm/i915/i915_gem.h | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 73ce5447cae8..eed552e507dc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -68,13 +68,6 @@ struct drm_i915_clock_gating_funcs;
 struct vlv_s0ix_state;
 struct intel_pxp;
 
-#define I915_GEM_GPU_DOMAINS \
-	(I915_GEM_DOMAIN_RENDER | \
-	 I915_GEM_DOMAIN_SAMPLER | \
-	 I915_GEM_DOMAIN_COMMAND | \
-	 I915_GEM_DOMAIN_INSTRUCTION | \
-	 I915_GEM_DOMAIN_VERTEX)
-
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index a5cdf6662d01..82e9d289398c 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -39,6 +39,13 @@ struct i915_gem_ww_ctx;
 struct i915_gtt_view;
 struct i915_vma;
 
+#define I915_GEM_GPU_DOMAINS	       \
+	(I915_GEM_DOMAIN_RENDER |      \
+	 I915_GEM_DOMAIN_SAMPLER |     \
+	 I915_GEM_DOMAIN_COMMAND |     \
+	 I915_GEM_DOMAIN_INSTRUCTION | \
+	 I915_GEM_DOMAIN_VERTEX)
+
 void i915_gem_init_early(struct drm_i915_private *i915);
 void i915_gem_cleanup_early(struct drm_i915_private *i915);
 
-- 
2.34.1

