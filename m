Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12C938B33
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBC310E407;
	Mon, 22 Jul 2024 08:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHDwcwJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CD010E40A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636772; x=1753172772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwZC+8BQx0Ju6kd3npKEUkokpAlKZZoB5HJtWHe8kFc=;
 b=ZHDwcwJRjKAxGKFEWDp8x8YYLuiT8t50hXOCzLahcKci+WCjwPenBGuW
 Tbi5h9feefQRCfiWHD37w7xvQs/cw5Q+En1bb5K3B4uUQZsd+HQ8oVWlt
 Otfg7067aZyeqsGSlCDs/l0LYIejzHCzazw5zxKkH3sQO3xEaUnnAJQuE
 0loPHMut9UakgoX/O3uUaf2mVtH3wvxptCP63Mgl31L+RlybNZWmX+FcC
 xlw9cH8L9A7beMQvq7i94JPtBXudLRISLAIpH4vEJQQe4xJM+Vm5Gs148
 lqxs9NrL52QzcF94cY0JZAmUEJBWKjk87QKg5BWCF3zf7x9xR1kVxqCJI A==;
X-CSE-ConnectionGUID: 6pfQHhmZSa2p5St+zALLxQ==
X-CSE-MsgGUID: /Uf2wMUGSreUBvy0ycuWQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806940"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806940"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:11 -0700
X-CSE-ConnectionGUID: CMjzWDZ1TGGXtpMWRf+8Cw==
X-CSE-MsgGUID: QueJC7mZQ46FFaKV8WDfXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752906"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/10] drm/i915/hdmi: Use VRR Timing generator for HDMI
Date: Mon, 22 Jul 2024 13:57:00 +0530
Message-ID: <20240722082705.3635041-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Add support for using VRR Timing generator for HDMI panels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..c8442772bacf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -59,6 +59,7 @@
 #include "intel_lspcon.h"
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
+#include "intel_vrr.h"
 
 inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
@@ -2366,6 +2367,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		}
 	}
 
+	intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_hdmi_compute_gcp_infoframe(encoder, pipe_config,
 					 conn_state);
 
-- 
2.45.2

