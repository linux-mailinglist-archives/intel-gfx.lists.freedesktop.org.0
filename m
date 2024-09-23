Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D271097E4F3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 05:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E8410E361;
	Mon, 23 Sep 2024 03:12:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JdFKtzjw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A8E10E35F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 03:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727061170; x=1758597170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Os+asMlziseSqaTpxcygTo6mzkYzD6y0fT5NONbSOcY=;
 b=JdFKtzjw1VivxHUkh42mOM++XzbjlpyMULcw2qvUcLw4woXtV7lDaSRn
 Sr6yu+qfkwrnEisMKUYa6cR3+/UydMhIsCah5GFCuVkEfKKf+QUidlMWO
 c52jsURFGYHf30YKwAA/WUDUGgR6/aVJzj5wNC4T0m5ZWm+qzP/GWclnn
 sjj6XCHFJXfhaC/5QVP2H4fnn4RC1uIdXKWokMupProKOIBt1dqvQ4Y40
 6y7JTD/CBH43v0kklrsuQTJ/q6iCv/l0Uv5gfEBYKP0XRwyE8QzcR6h6H
 LIx/LbGYBpLjb1rXRK9sPx4HXGhjJHoZz8dxm9cGnSRo77wT9/UMToUSg w==;
X-CSE-ConnectionGUID: 69cic56fS7yWIoOkxZ78Xw==
X-CSE-MsgGUID: JIjM+Ip9SJCZ5UAQaIVX1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26110937"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26110937"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 20:12:50 -0700
X-CSE-ConnectionGUID: 1GKUyuJlQoeTqdXasjQdUg==
X-CSE-MsgGUID: WibXxybRTiWfmFz9mUNWRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70510769"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 22 Sep 2024 20:12:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hotplug: Add comment for XE_LPD+ SHPD_FILTER_CNT
 value
Date: Mon, 23 Sep 2024 08:40:08 +0530
Message-ID: <20240923031007.1058072-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240923031007.1058072-2-suraj.kandpal@intel.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
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

Add the reason for having SHPD_FILTER_CNT value for XE_LPD+ and
above as 250us instead of 500us.

--v2
-Update commit message [Matt]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 8427386132e6..f28f35121e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1064,6 +1064,10 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
 
+	/*
+	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what the
+	 * SHPD_FILTER_CNT value should be.
+	 */
 	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	mtp_hpd_invert(i915);
-- 
2.43.2

