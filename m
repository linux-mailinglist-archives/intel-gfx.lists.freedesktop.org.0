Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8BDA05BCD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B2B10EB71;
	Wed,  8 Jan 2025 12:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i4C65xZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D7910E0AB;
 Wed,  8 Jan 2025 12:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339960; x=1767875960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z3TQOVbVGPW1JnEKRKnJD2SoxhCb6v5QN+qKoPWTDyQ=;
 b=i4C65xZGpnBUEKLtXdF3EwLmAx7+aCJYGHITjW1ymj6jgjkfkMl9EG0d
 ANbx/EhV6PLpZOZvIu8LqrFGbbb+tpp+2Jjj48i5xeWfJgS03NbHqAGQ7
 BOXh/4dZNTzoS10L1iMzrK/dxA10OeX5gNmwk6mXoU5mtW7E3CyfB6qGC
 IrInTXql23HdX9QYNknQJmTJ0CWPIk5qSOCc1KBGEjxkGrcSU6dqH5f74
 Mm/p6BNXGoWW2lvJfV95ioUZ7NE57mCUw5WljRT5zmDfD97b+d84qajX6
 DChkXVmiA5ts+Y6CxhwpmDIHpgKc2Nq4u2IwnTOpsuCVAUTSA9hKRX7Il w==;
X-CSE-ConnectionGUID: dTORpsWHTDqN6ZQzAu5sMA==
X-CSE-MsgGUID: 6JdYpXy4Q3iJzZx1WIXNQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855380"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855380"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:10 -0800
X-CSE-ConnectionGUID: v8y2BK7SRvaEG1j5EAKGJg==
X-CSE-MsgGUID: 9VWGxVwURYO4eEB+SuNujQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886120"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:08 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 5/7] drm/i915/scaler: Limit pipe scaler downscaling factors
 for YUV420
Date: Wed,  8 Jan 2025 18:05:39 +0530
Message-ID: <20250108123541.2101643-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
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

Limit downscaling to less than 1.5 (source/destination) in
the horizontal direction and 1.0 in the vertical direction,
When configured for Pipe YUV 420 encoding for port output.

Bspec: 50441

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e0aeacaa6b56..7b378fa01192 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -439,6 +439,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		calculate_max_scale(crtc, 0, *scaler_id,
 				    &max_hscale, &max_vscale);
 
+		/*
+		 * When configured for Pipe YUV 420 encoding for port output,
+		 * limit downscaling to less than 1.5 (source/destination) in
+		 * the horizontal direction and 1.0 in the vertical direction.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			max_hscale = 0x18000 - 1;
+			max_vscale = 0x10000;
+		}
+
 		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
 					      0, max_hscale);
 		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
-- 
2.46.0

