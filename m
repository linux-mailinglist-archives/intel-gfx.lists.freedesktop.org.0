Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC14A85AF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916DF10F97E;
	Thu,  3 Feb 2022 14:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB81110F97E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896983; x=1675432983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RC2nhPkrYxacQOl8fDQazIuF/59JIccFeyRqIODL9vQ=;
 b=jhEbPVBsuGnjmF9iRnxK93PDkPl2arUZscbGgbaqInAVhDxhscKblRfF
 kndYWSEMb6Ma1/rAPa3pRMy8vNdF9e/LWESCNQe2B1V8IfP1Wi/v6cJ/g
 jIE4k/YvJhyWgWggfcKxgwb4nARK2wECdW9w0EKmKhaj6gu2jr5fufUa7
 EOP3L9gLX/rD52lKO/mhemTiSYo/kMHVndbWeUGZdLQ9gMGesmTvFkGru
 CFoNUGemdOX6vzNsIUkwXTnsGN4CJkDcngLEGj8ozBxQH6qTvl40Ds3Yn
 UZXLiRVfEaHRL/YWPDK7l+3fAn1ZD737WD/fVq7W8rwRvJ/Gl6JvHYa+S g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245742175"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="245742175"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="538750190"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:30 +0200
Message-Id: <a6c524a9abb74be9b4d6a084de5461404b823a10.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/fdi: hide struct intel_fdi_funcs
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

The struct is only needed in intel_fdi.c, move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 5 +++++
 drivers/gpu/drm/i915/i915_drv.h          | 6 +-----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 3d6e22923601..4e4b43669b14 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -10,6 +10,11 @@
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 
+struct intel_fdi_funcs {
+	void (*fdi_link_train)(struct intel_crtc *crtc,
+			       const struct intel_crtc_state *crtc_state);
+};
+
 static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, bool state)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e13e0188530e..784233ad9f16 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -121,6 +121,7 @@ struct intel_crtc;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
+struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 struct intel_limit;
@@ -322,11 +323,6 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
-struct intel_fdi_funcs {
-	void (*fdi_link_train)(struct intel_crtc *crtc,
-			       const struct intel_crtc_state *crtc_state);
-};
-
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
 };
-- 
2.30.2

