Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE952869F33
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AB710E430;
	Tue, 27 Feb 2024 18:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCOPIbeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784BF10E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709059056; x=1740595056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BJDLPffWw48ObM0C1oi7R6K394T2NVJW4VX4jYMlvAk=;
 b=DCOPIbeAZ6h1wwSL/RF76nBgorH346gmclWQTH/9BDdTNCi/rcsxzOiJ
 B5jT5SDqEbm/pO8ikGlvhdWU4BW4M5mnqSV2EAaSErUEbFc0oOfM+FYN+
 8azfAM18kXqu8yuhdAkPOpPE1F+6huyV4sg+HMxWvglJZtMAvyKgMA71B
 HYrdKByhC3GrBMwUgA4idZNqVDzI62zH7sSrS/4278Dnp0J7g7giQ06JQ
 IBM9f7WRqY58VBqymBAmF45VblmY2Dl++QtK/uSKtSJMwiO2i99YESL/b
 naycI8aIf43cT0mYUTmmK+XqwyhhSCtf/lHr8kUxg2eoXaHE9z1DYf9OG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14060071"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14060071"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 10:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7188276"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by orviesa009.jf.intel.com with ESMTP; 27 Feb 2024 10:37:35 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com,
	Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/mst: Reject modes that require the
 bigjoiner"
Date: Tue, 27 Feb 2024 23:48:48 +0530
Message-Id: <20240227181849.22614-2-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240227181849.22614-1-vidya.srinivas@intel.com>
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
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

This reverts commit 9c058492b16f90bb772cb0dad567e8acc68e155d.

Reverting for adding MST bigjoiner functionality.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index db1254b036f1..b062f4ee6c8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1349,10 +1349,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
-
-		/* TODO: add support for bigjoiner */
-		*status = MODE_CLOCK_HIGH;
-		return 0;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 10 &&
-- 
2.33.0

