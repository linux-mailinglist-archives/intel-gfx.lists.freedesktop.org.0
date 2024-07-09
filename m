Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E784492AEB4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACA010E479;
	Tue,  9 Jul 2024 03:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hdb7jMQz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A1910E479
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495569; x=1752031569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bhd+5+rPwN/NlkX1D/SdRWGJ3qhcWoirzRxfZuPbgwc=;
 b=Hdb7jMQzNfEF8RHRi4imuIFdu5XktR2LtAERXODcRocnATTWF+qrc+ni
 edMkJJVmTqDcLEFczucad8d4g2nSbekP+sxx603ghgQyY6Pwou+tXJfta
 GVD9qq9EsBVpCUDu+iEODW+EOzbH724TRiu0AkfuXuZWMPdBeTPoHlRr4
 sVeRixgwq4Q69zt1i9sKuikB3Q1b96TJZCHXSgN19u5T6lgcd3IvUh8v0
 iPwNfUCNjOlj+oJ0Hn7T9RmcMlAtAe1SD4GvyZ9z+xLWrsaSEn9TBaNwp
 +R1U1MKLe46zNFvG2kKICCBpjcXuyK5V0C2RoPRa9ThkFeFRfu3vI9pHk g==;
X-CSE-ConnectionGUID: on8rl1iIQu2rdvVf25jfbA==
X-CSE-MsgGUID: A7QttvbqTv2QO5TLOqrLLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536462"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536462"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:09 -0700
X-CSE-ConnectionGUID: bGygtChOR3G4W2dLS5gzng==
X-CSE-MsgGUID: KTI0+QevTEeHM2hVpqG9qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374185"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/10] drm/i915/hdmi: Use VRR Timing generator for HDMI
Date: Tue,  9 Jul 2024 08:56:46 +0530
Message-Id: <20240709032651.1824185-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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
2.40.1

