Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF6AB4FC2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E16D10E364;
	Tue, 13 May 2025 09:29:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y71Mhkp2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C42110E364;
 Tue, 13 May 2025 09:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128543; x=1778664543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OAag/rTPUReBTG39g+p3BgMVfBlDnQ2nvtfKYhZVYX4=;
 b=Y71Mhkp2F0jccI0n+li+8ep0glXwP/Dpafqj7VgFloXTMAZVgM+m26CM
 IdKTtqqGokMCQobuVqz/OPvE7w5mpeYWZRsixrZu8voXofP3u7c3m/4AW
 WfXQ5p3CkbDwELgJDv0kb7C6z8cWcIb/0S64ZeYM7fA/6d9f3y86/JmFL
 Ny/rRlIxi5tMIaWrKqAjqeVGOd7XaQRV50AEOvDn8fiDLQ1a39P0fxX8z
 P+NZeeU2sUJ8/2NYK8bXMJr0GJvsiKoqenk0xmsu7O0o6trl/mB3cr9sw
 zkjswlRMnC/aryUHPVWaKXiJTpjf2SsfkJB+hVNuHBw+vHJgW8ojxgI8k A==;
X-CSE-ConnectionGUID: VAPlIBvHSWiXy84K7aVuAA==
X-CSE-MsgGUID: 5m3LrDXLTHG2z0BUb01AhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59194652"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="59194652"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:03 -0700
X-CSE-ConnectionGUID: HQ/3kW7MRKqnSnMCeK13FQ==
X-CSE-MsgGUID: mG6bydnSS5a/C+GPmnP9VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137511689"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:29:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/display: drop unused declarations from
 intel_display.h
Date: Tue, 13 May 2025 12:28:43 +0300
Message-Id: <5ad046b74040e84fab51786c346ff9a445e351bc.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
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

We've accumulated lots of forward declarations in intel_display.h that
are no longer necessary. Clean them up.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index fa857c0e03c7..37e2ab301a80 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -30,37 +30,21 @@
 #include "i915_reg_defs.h"
 #include "intel_display_limits.h"
 
-enum drm_scaling_filter;
-struct dpll;
 struct drm_atomic_state;
-struct drm_connector;
 struct drm_device;
 struct drm_display_mode;
 struct drm_encoder;
-struct drm_file;
-struct drm_format_info;
-struct drm_framebuffer;
-struct drm_mode_fb_cmd2;
 struct drm_modeset_acquire_ctx;
-struct drm_plane;
-struct drm_plane_state;
-struct i915_address_space;
-struct i915_gtt_view;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_display;
-struct intel_dp;
 struct intel_encoder;
-struct intel_initial_plane_config;
 struct intel_link_m_n;
 struct intel_plane;
 struct intel_plane_state;
 struct intel_power_domain_mask;
-struct pci_dev;
-struct work_struct;
-
 
 #define pipe_name(p) ((p) + 'A')
 
-- 
2.39.5

