Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D522C91421A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3289F10E350;
	Mon, 24 Jun 2024 05:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FP73lAoS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F083610E350
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207353; x=1750743353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bhd+5+rPwN/NlkX1D/SdRWGJ3qhcWoirzRxfZuPbgwc=;
 b=FP73lAoSvPMfXWKShmcrKbFsQbrWH3NgbVQNu37cXZhXaV/Ni895by8E
 U95fwNd++TX9Ucv6jwuIuGZ+Hl4Xg0NGvfNT19K/xwi8yA5kUl+PG/Cod
 tYCFAR6Sj/W1alyR+DnNWEVh0tqhADR/2svnjhJakxLT2W9mkk7OrortZ
 3VsVoQ+Qmhws3+Ti4HvAYyur3dpwy8KGFgjTcYr7N/TUhKs+/u7SjJ/0i
 kAATNvujJMyQEuLNSO0zUez0wWUe04A1AIZLiy66wubUZPpq9PijXD7wk
 gRZVB7dyFMnwiWw0emjgnAdrjh9t9an11BxN91VKV81Npe3egox+H8DGt g==;
X-CSE-ConnectionGUID: bJj/qX5LTpqXQUv1J/JWig==
X-CSE-MsgGUID: y4Z2F6TETZuQYwTNQXGKrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567254"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567254"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:52 -0700
X-CSE-ConnectionGUID: No0qzTX7SB2Y76wYdPsBsw==
X-CSE-MsgGUID: L5sJ4Ug2QrGdf8n3gOqNYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994234"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 8/9] drm/i915/hdmi: Use VRR Timing generator for HDMI
Date: Mon, 24 Jun 2024 11:05:59 +0530
Message-Id: <20240624053600.3803116-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
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

