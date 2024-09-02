Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE1A968150
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A7010E23F;
	Mon,  2 Sep 2024 08:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ykj5zKhP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C635E10E23C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264312; x=1756800312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwZC+8BQx0Ju6kd3npKEUkokpAlKZZoB5HJtWHe8kFc=;
 b=Ykj5zKhPYk2D2dJl82Yx8bLT5xVwQzMTlyZv7XALD1l/ZA1Pm+iIxqUO
 lyimIwKZiQHfj5/33CH1b3iYkqY1yu6gG1UYjWFrIRX90zshNYvZdD36R
 GZj5IpLnwj3Yawz2ifqWHcF0hFMtIwwPMjjeMlXUlAuA8iyeHLqzW83WG
 mcP7WjjqOwZl7MvjxkoNzb3pFA0B5rkFj1zfSgaY6OJQTswtJBUFh8Xvv
 oM3l8Gp4CFuWfJBblgD6Ziepc0wp74P8BTxH3QCdzj8Kz/TFmYGVXt7eI
 TdIjDFuRCN32C6bTFwIwVtFhZTnKPRzvo7Gjl2JWuF1cqSu8pNI4EYwMN Q==;
X-CSE-ConnectionGUID: j0E6VR06TJGpgko3JuVFUQ==
X-CSE-MsgGUID: gv6KMskqQZqsmXdqmZYg3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967397"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967397"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:12 -0700
X-CSE-ConnectionGUID: pTvMDJAwS2SDlB09/FIePw==
X-CSE-MsgGUID: 1BQVqn1PS/68XmCMOC9hOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039884"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/13] drm/i915/hdmi: Use VRR Timing generator for HDMI
Date: Mon,  2 Sep 2024 13:36:28 +0530
Message-ID: <20240902080635.2946858-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

