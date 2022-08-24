Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AABD459FB28
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E0FB54B3;
	Wed, 24 Aug 2022 13:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802E3B524B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347131; x=1692883131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yObegcu1HTq9FDbH5vVsXiepRjP9VZp9qf++YCKY4Jo=;
 b=J9IMgTRelrzCilAzfSy7C5QnsVEtT1PxKRtnANxN0oec/LeEowFyq7Cm
 iBaTWdw77ToKuzBQUC8snvOctMitTEk/br9i4bUmaTTF0F/wFj+8rVd2o
 o4CF2S2KBpKc5VdWxWsHJRUpb7I9i8nT1dok+S2MxYjDqbMhRKwW7gMG2
 FFXzJL4es8Cek7UIUKZN284I2VKYlJlGXVFR9ZkRP8vJ7wQLwiOS1pFfE
 jLg4JsfzsalY4n/gm/mWsIteCyVZOrVlvL4uSdm6yycLKfUBRDSIO0ga+
 cq5SK6bQvHB0HDbnwISYA3Wc+zG8SLGVFvN6o6jsazAW3rAq6y7Persam w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320023035"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320023035"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="642854347"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:16:02 +0300
Message-Id: <7beb643dc9d3a2f43a998249484ddcad60ada065.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 36/38] drm/i915: move quirks under display
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display quirk related members under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_quirks.c       | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                   | 1 -
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 31fd05a04bff..577ab7765fa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -365,6 +365,10 @@ struct intel_display {
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
index f272f299d85b..54811013cf68 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -291,7 +291,6 @@ struct drm_i915_private {
 	unsigned short pch_id;
 
 	unsigned long gem_quirks;
-	unsigned long quirks;
 
 	struct drm_atomic_state *modeset_restore_state;
 	struct drm_modeset_acquire_ctx reset_ctx;
-- 
2.34.1

