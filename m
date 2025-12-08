Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F56DCADFEE
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B4410E4D4;
	Mon,  8 Dec 2025 18:27:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l4vRK0aA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AB610E4DC;
 Mon,  8 Dec 2025 18:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218471; x=1796754471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyCWh+5QeNgEmiQhDgslxFSwEiHNJ/35CljgzY1+tIc=;
 b=l4vRK0aALv4Gd42vfJGG9N4auvo6tP61RDVS9gqcXEnATnYM1UV7cnm0
 i+NDbVxzk7csiHT2eqMFOd9GxhZvYKbtS0nPjNRpXNBOVeO+Z3aGSVtnA
 gHfUSkrKzPtKbhgpjzwyhEVpAvxOuvIpb7DqdWetBF6Wluv3Cg6Pw0UuU
 a7/E3lpIYZgE25tT5asHLnLM5xKswZ8fg3advOsbtbUVwhiaPFsHZ0ts6
 cS0/xBAuGrd+lKf6Grd6bjehIQ2caHCx0LLZtuTYdNXbI1KYg5RUMyKPx
 nCgr3U/jIqRvMp/YpVK+/9kE0kDEjUbEsmZ8GGmE+zfh12VReI0z18JSc g==;
X-CSE-ConnectionGUID: wynt3dkzROeZzNxiQ0DE/Q==
X-CSE-MsgGUID: HizolPWiRfyEEzvO5YyvSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129581"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129581"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:51 -0800
X-CSE-ConnectionGUID: dGK6kEPtQYuBkIA6FuMLYA==
X-CSE-MsgGUID: wjsLRiecSpG8vEZ+q02b/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014541"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:49 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 17/19] drm/i915: Get rid of the INTEL_GMCH_CTRL alias
Date: Mon,  8 Dec 2025 20:26:35 +0200
Message-ID: <20251208182637.334-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

INTEL_GMCH_CTRL and I830_GMCH_CTRL are the same register.
Get rid of the INTEL_GMCH_CTRL name.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 2 +-
 include/drm/intel/i915_drm.h             | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 9e1f3ab632d5..6fc3e3702cb8 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -20,7 +20,7 @@
 
 static unsigned int intel_gmch_ctrl_reg(struct intel_display *display)
 {
-	return DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+	return DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : I830_GMCH_CTRL;
 }
 
 static bool intel_vga_decode_is_enabled(struct intel_display *display)
diff --git a/include/drm/intel/i915_drm.h b/include/drm/intel/i915_drm.h
index adff68538484..91f628367f1f 100644
--- a/include/drm/intel/i915_drm.h
+++ b/include/drm/intel/i915_drm.h
@@ -44,8 +44,6 @@ extern struct resource intel_graphics_stolen_res;
  * This is all handled in the intel-gtt.ko module. i915.ko only
  * cares about the vga bit for the vga arbiter.
  */
-#define INTEL_GMCH_CTRL		0x52
-#define INTEL_GMCH_VGA_DISABLE  (1 << 1)
 #define SNB_GMCH_CTRL		0x50
 #define    SNB_GMCH_GGMS_SHIFT	8 /* GTT Graphics Memory Size */
 #define    SNB_GMCH_GGMS_MASK	0x3
@@ -80,6 +78,9 @@ extern struct resource intel_graphics_stolen_res;
 #define INTEL_GMCH_GMS_STOLEN_224M	(0xc << 4)
 #define INTEL_GMCH_GMS_STOLEN_352M	(0xd << 4)
 
+/* valid for both I830_GMCH_CTRL and SNB_GMCH_CTRL */
+#define   INTEL_GMCH_VGA_DISABLE  (1 << 1)
+
 #define I830_DRB3		0x63
 #define I85X_DRB3		0x43
 #define I865_TOUD		0xc4
-- 
2.51.2

