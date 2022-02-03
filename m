Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9CF4A85B4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2430A10F981;
	Thu,  3 Feb 2022 14:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9480F10F97F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896994; x=1675432994;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DgIg6nVBkSGJPQmEiJGYbQxZWxO9O9kq4O54vvp6maU=;
 b=DZ8cvZpfOZH1qKC1FJgHIQY8F74oCrpXcYO/zTxDgsFhadOWaifY+iE3
 A0X2vbVcqsM/K0RvBPOvnnMNrWZVoiSe1n3RDpYgdZpjzWbBHXotl9dIC
 e7jxQet9+u0XhJg/tX+IGsD9of9dtzv7+KINjs8alHpTUHcQm6Tf47Xnz
 eIyH92easJgBNGZhCdGsIHR7ICVLkXrlHGRQtKXNHZpXL5LOwVsjKChSv
 /NzXHO7iugs2tCHaUhkDbH6e/WyPepuKRgWGMXNuvRvKQN5wHW4kAhzb6
 /XkgNDhCokVPhwXek/L2jDvzt00PRPIy15Zke7iwW/oL+ImH1Azi90Z7C g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="248362855"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248362855"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483246985"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:03:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:32 +0200
Message-Id: <fedb27386cbad2b162d83a706273dd8ad9e8eed2.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/dpll: hide struct intel_dpll_funcs
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

The struct is only needed in intel_dpll.c, move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 4 ++++
 drivers/gpu/drm/i915/i915_drv.h           | 5 +----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 809b2004e5b2..14f5ffe27d05 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -16,6 +16,10 @@
 #include "intel_snps_phy.h"
 #include "vlv_sideband.h"
 
+struct intel_dpll_funcs {
+	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
+};
+
 struct intel_limit {
 	struct {
 		int min, max;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 784233ad9f16..078fc50e7eb9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -119,6 +119,7 @@ struct intel_color_funcs;
 struct intel_connector;
 struct intel_crtc;
 struct intel_dp;
+struct intel_dpll_funcs;
 struct intel_encoder;
 struct intel_fbdev;
 struct intel_fdi_funcs;
@@ -323,10 +324,6 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
-struct intel_dpll_funcs {
-	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
-};
-
 struct drm_i915_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
-- 
2.30.2

