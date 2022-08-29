Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604715A4DB8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F72F10F29F;
	Mon, 29 Aug 2022 13:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7A810F2A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779181; x=1693315181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N+muzj9TsWhYbhdXZh4yi9ChT4mCi+rCVcrnPVzsc7c=;
 b=axrYsz4rWqqxlIcK1sKccKbwfB2dANhkacIelgWSgKuLRXk/bI4hUxOe
 PeupY8m93XK+ktGJi72gifOMih5tSYiQMLGHX5laqJSroWSVYArocynXj
 E2P1d4Unv23Zh0SjUICKJaaXPQUM7k/Fof6s3j1q1Gv9xbWb2l7w9vSJs
 x8sXFXALChsnrFlvSJc3lyRygRKR2aTV+Zn5jLFOlX8fQw8KbiFZkzeCq
 XoNFV1Vi3c/19TaN7EPfvw209hg66v74RLwlEBALpdemg6oAlUyBFWttS
 03SaghQT9XA1cEzUCph4AGoWfYns4hY02HmCzFMos6FmA7sBCVOs5spEO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="274640189"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="274640189"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="611285482"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:23 +0300
Message-Id: <c4a1a5657023efe24a362c67daf79260f179f0eb.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/18] drm/i915: move quirks under display
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
index 41caeda795cb..6e48d3bcdfec 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -11,7 +11,7 @@
 
 static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
 {
-	i915->quirks |= BIT(quirk);
+	i915->display.quirks.mask |= BIT(quirk);
 }
 
 /*
@@ -224,5 +224,5 @@ void intel_init_quirks(struct drm_i915_private *i915)
 
 bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
 {
-	return i915->quirks & BIT(quirk);
+	return i915->display.quirks.mask & BIT(quirk);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c486a1dcfb07..47f2629da226 100644
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

