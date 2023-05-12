Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8231700646
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490AF10E683;
	Fri, 12 May 2023 11:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E3B10E67F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 11:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683889504; x=1715425504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i6plHH/HCI/jcVk5lLrUk6QF7oSwoOdbLYonXQzvnY8=;
 b=mIQA7w5kR2UaSQ34Pdq00Mw795JUg+QC3ca5JUKt8e/3JRS6I0DqfXZ2
 iHfw8AOPczl4NcQCS7UTeYum64W7n9xcbLc0MFZNZ88fpX6XBC5GAuYc5
 S6F8tve/3PGwJwy7FrifH/sF7LotyrOtKiu+t12qlCyE/gOUaEG+xQKu4
 aUOxdOY7LEyfeCCw2rIoqKJnpdY7ZTyWnVP4V8dklWhkI08UKsmEJst63
 rml/R396bxWVMEHUzT1ZwALhXcK3/DPSIcWVhBSGAVzjTg2F/yKKa9DSs
 8Vj+MVqKNYX+mJDOCJ4QnQPqV2Kxi4QFoMnOOnOeXllk2HN0E0LMIjLHY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="331129574"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331129574"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:05:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677625722"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="677625722"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:04:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 14:04:43 +0300
Message-Id: <20230512110444.1448231-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512110444.1448231-1-jani.nikula@intel.com>
References: <20230512110444.1448231-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: remove
 I915_STATE_WARN_ON()
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

Remove the unused macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ac95961f68ba..8f451aaf5760 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -538,12 +538,12 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
 #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
 
-/* Use I915_STATE_WARN(x) and I915_STATE_WARN_ON() (rather than WARN() and
- * WARN_ON()) for hw state sanity checks to check for unexpected conditions
- * which may not necessarily be a user visible problem.  This will either
- * WARN() or DRM_ERROR() depending on the verbose_checks moduleparam, to
- * enable distros and users to tailor their preferred amount of i915 abrt
- * spam.
+/*
+ * Use I915_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw state sanity
+ * checks to check for unexpected conditions which may not necessarily be a user
+ * visible problem. This will either WARN() or DRM_ERROR() depending on the
+ * verbose_state_checks module param, to enable distros and users to tailor
+ * their preferred amount of i915 abrt spam.
  */
 #define I915_STATE_WARN(condition, format...) ({			\
 	int __ret_warn_on = !!(condition);				\
@@ -553,9 +553,6 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 	unlikely(__ret_warn_on);					\
 })
 
-#define I915_STATE_WARN_ON(x)						\
-	I915_STATE_WARN((x), "%s", "WARN_ON(" __stringify(x) ")")
-
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
 #endif
-- 
2.39.2

