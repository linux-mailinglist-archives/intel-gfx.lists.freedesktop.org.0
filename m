Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E088C728F7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2814610E6F1;
	Thu, 20 Nov 2025 07:19:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EcglPb6L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A987C10E188;
 Thu, 20 Nov 2025 07:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623161; x=1795159161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wY4R1gWePpzVMnlMuZOkfAQywgtH/NNIeIIvZeeZz2I=;
 b=EcglPb6L/Be2/zKkU4LVNR4jOVYc3LYIxN9hkEjIZ9tRYLj5RTO8cF74
 CsIKnNaOmDF2PkWKOAM993AF2DesdqpDqpwyaoSzK0HVuNzA35XSSCfM/
 W0Uq9kfOeXCs2QfjI2ZIqczFL5kuTJk8Wf1YsvQ+5IxE+x3UABf9VS+LQ
 GUHkmxByL7rdqvID/m/eExkryZ2HlWmZn5XX4sI7A/XT5y05+zyEMaec5
 tZcRpmIqS6kLE1oQ3WvnTnpSl+rk6izTJ366QMMlCRUumU9CUNdW37cFH
 DjRrS8OjTVonA2cDq+7wo1UjVNOXKdo64S5o0PrSsUFI56j2WrihOrihf A==;
X-CSE-ConnectionGUID: 5C6AftZET3Cqk+HdyA5p3g==
X-CSE-MsgGUID: IRQPIzAlR7WclowS+zoQrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559084"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559084"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:21 -0800
X-CSE-ConnectionGUID: 7xfHEC2XRsW1+iWfPcvSFg==
X-CSE-MsgGUID: s2ZpZkOIRIyNfIFn0lUUuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073604"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:20 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/11] drm/i915/dp: Early reject bad hdisplay in
 intel_dp_mode_valid
Date: Thu, 20 Nov 2025 12:36:29 +0530
Message-ID: <20251120070640.727040-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Move check for bad hdisplay early as it is independent on other checks.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..da9d2de7b85a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1463,6 +1463,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
+	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	fixed_mode = intel_panel_fixed_mode(connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		status = intel_panel_mode_valid(connector, mode);
@@ -1486,9 +1489,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
-		return MODE_H_ILLEGAL;
-
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
-- 
2.45.2

