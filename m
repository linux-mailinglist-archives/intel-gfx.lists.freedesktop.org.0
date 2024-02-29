Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B5686C001
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 05:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4401D10E2F2;
	Thu, 29 Feb 2024 04:51:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wk5QEiJy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE6910E336
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 04:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709182311; x=1740718311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1JERhvPSbnzDty13qLv5fKYth0SBk6WfSxCZRmmRb4E=;
 b=Wk5QEiJy3NFJF7mk8I6JtsanLqUrOfOk+9sy/qJI6TCjwPp2gLSpG042
 4r9E9BsAX5/SReoQvuONCJXnm1rlG0ZQe0VJOisMbgk9Un/AwbTghI9KA
 KoLfTb7geGK+80UEnwLT1WiVL1aTu/+hqGFVftLaaGPOH/Bjkj+9g50m9
 f/Yb0+9W4yP8pzI9RbfTy+QHbjSKgc0gwwkLn5F8GgaBZW/bFQQn+9JeV
 RhdVclBvwM0iU6PgNipn4C5r+DtHoXWX+1P0Lq8MmX2W0yrBZF/9CCO35
 Qj/rSBeKS7pWFl7m6gdXdRmMGM52xlq/YHIbmUfQmAkvlt7i+xfxFiiyu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3751987"
X-IronPort-AV: E=Sophos;i="6.06,192,1705392000"; 
   d="scan'208";a="3751987"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 20:51:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,192,1705392000"; d="scan'208";a="12343640"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 28 Feb 2024 20:51:50 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Date: Thu, 29 Feb 2024 10:07:16 +0530
Message-Id: <20240229043716.4065760-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Move psr_init_dpcd() from init-connector to connector-detect
function. The dpcd probe for checking panel replay capability
for external dp connector is causing delay during boot which can
be optimized by moving dpcd probe to connector specific detect().

v1: Initial version.
v2: Add details in commit description. [Jani]

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10284
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ece2c563c7a..b485ec320085 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector *connector,
 	if (ret == 1)
 		intel_connector->base.epoch_counter++;
 
+	if (!intel_dp_is_edp(intel_dp))
+		intel_psr_init_dpcd(intel_dp);
+
 	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
 	intel_dp_configure_mst(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..6927785fd6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
 		return;
 
-	if (!intel_dp_is_edp(intel_dp))
-		intel_psr_init_dpcd(intel_dp);
-
 	/*
 	 * HSW spec explicitly says PSR is tied to port A.
 	 * BDW+ platforms have a instance of PSR registers per transcoder but
-- 
2.29.0

