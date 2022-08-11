Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1B258FF05
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16008B3DED;
	Thu, 11 Aug 2022 15:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DDBB06C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230920; x=1691766920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D/oq7HMW3t+F1yGewevgJ4IIqO0zjO5gTZoKQWfuCjU=;
 b=ISr4X6E2HTZnaXwkTGXtWQnfb+V2Na53oX07D6IZC2AUnOnbXp+RDA4Z
 WI6RSIeBd2DSoaK3ZSqgu3Ve7rpHpGFY3fvAFRN2PfaHr5dQ5VXfWwdOk
 BpQ6OQRHgoTFxV90f1PefB7WdJ0yL28d+GYIPWeLg1lgzkgGkpF8kaKf0
 ug7Yqd2rZTXjaJmxC7eyLlqgQJUBjZIEmraNaTuPwmeo+DiuSVIJFvCiw
 CMEodEXfXCYfjyR01dE+UNtf2oHOxkCUIeEqNtv/gMLh8jZF4MBIm+2Wc
 khwqGyijBPJSCbhg0ZyI94wbI/kG/Z4brHwHYma8vukSqZmSUyLqzszKf g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271758223"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="271758223"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933352244"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:48 +0300
Message-Id: <ec21c8be52c5ff4b0164093bef59187163eb2079.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 37/39] drm/i915: move quirks under display
 sub-struct
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_quirks.c       | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                   | 1 -
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index da76b3eecbf5..252da61f2c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -367,6 +367,10 @@ struct intel_display {
 		struct mutex mutex;
 	} pps;
 
+	struct {
+		unsigned long mask;
+	} quirks;
+
 	struct {
 		enum {
 			I915_SAGV_UNKNOWN = 0,
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 22e0df9d9dba..e74ff042a9da 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -11,7 +11,7 @@
 
 static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
 {
-	i915->quirks |= BIT(quirk);
+	i915->display.quirks.mask |= BIT(quirk);
 }
 
 /*
@@ -221,5 +221,5 @@ void intel_init_quirks(struct drm_i915_private *i915)
 
 bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
 {
-	return i915->quirks & BIT(quirk);
+	return i915->display.quirks.mask & BIT(quirk);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 60f654db7819..e529a9575a66 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -287,7 +287,6 @@ struct drm_i915_private {
 	unsigned short pch_id;
 
 	unsigned long gem_quirks;
-	unsigned long quirks;
 
 	struct drm_atomic_state *modeset_restore_state;
 	struct drm_modeset_acquire_ctx reset_ctx;
-- 
2.34.1

