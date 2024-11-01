Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B01FF9B8B3F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C82F10E960;
	Fri,  1 Nov 2024 06:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+XA+z40";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DAA10E961;
 Fri,  1 Nov 2024 06:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442480; x=1761978480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fy1pWas8xAXQvA2Xqw8cZBAJ/zJPREXvenJ6EGIpFcc=;
 b=Q+XA+z40iks5PdNx11+TXHH00GzfqJxKvmxoHRvF8cdCzhDRQIbVscqx
 1xouBSHytBnf96wEQyp5l02FfK7By4TNp68rkIkbQmNPFvi7oOhwc//BZ
 KrzYYKYZx4k39l6IAWj+o3qSLG6vZhzSFK9Vbp8fGhF56IUfHQ8q9mD3y
 d22nTtuMeTTWtNA0JjxDzhP9iWYbF72kWt2D7SzOHKxl+LluaztDAo1Ov
 Mz4eoDlJwkjyp0B4nUcNNXqKQWVLsvv4JuusU+GhMjrEsI/YhPnObH1bZ
 3e+QXoshRRRaIpsWq7ErkZA7VbDiY5WxyODXjQoOlwSGiJtZzhTZvNNJc A==;
X-CSE-ConnectionGUID: OMfGTaSpTqmYTiSnkG5FUw==
X-CSE-MsgGUID: gyYBqlDrSCS1aXXO0qGDGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306095"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306095"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:28:00 -0700
X-CSE-ConnectionGUID: dOqfpWXmS9CsZsJELH4x0A==
X-CSE-MsgGUID: GjQGBsMvQLG+RzpvxcCb7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648599"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 7/7] drm/i915/display: Generate PSR frame change event on
 cursor update
Date: Fri,  1 Nov 2024 08:27:28 +0200
Message-Id: <20241101062728.3865980-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
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

On LunarLake and onwards we are using vrr send push mechanism to trigger
frame change event. Due to this we need to trigger it using
intel_vrr_psr_send_push provided by VRR code on legacy cursor update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9ba77970dab7..5617781e9c58 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -25,6 +25,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 #include "skl_watermark.h"
 
 /* Cursor formats */
@@ -798,6 +799,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_vblank_evade_ctx evade;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	int ret;
 
 	/*
@@ -917,6 +919,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		intel_plane_disable_arm(NULL, plane, crtc_state);
 	}
 
+	if (crtc_state->has_psr)
+		intel_vrr_psr_send_push(crtc, cpu_transcoder);
+
 	local_irq_enable();
 
 	intel_psr_unlock(crtc_state);
-- 
2.34.1

