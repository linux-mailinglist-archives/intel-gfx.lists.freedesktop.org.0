Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE1A9E55A0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 13:37:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB1110EE3B;
	Thu,  5 Dec 2024 12:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgRCE8Lb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEED610EE3B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 12:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733402246; x=1764938246;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r9i2p9t7DJ3N34vO9wT/6x0P3uRVzD4BzhwRLAGwrKI=;
 b=XgRCE8Lb7kDxqBxh8Gw4vqF84xNcp5hirVrn/DylvfKHw43pmk9Jbasi
 X74V9j1ygWz9M6Vzbr65tsbV3IDYEzlXxYO5wf2miVanpfzj2uQkS90HO
 Vnu+38BfNrkYtUEB3NdGdOH93nplkkOaztuR3O87cnyvlhHH2z187BYz4
 cgQcFpYSTROZQsVpIkKUsILDj0aLLzYVf4r4tBvNIsTC+iGxlu+I8ssgE
 3QMoTwG6f6SkzBLkqlpdAJNKcHi7yJWAk7rWgZot8LBqX9C6e3Yq4o6iq
 AaS9pO0AweLmK8aYoDBY4BSgmCjyKLg5ePs6fSc/XvzKiq38T5xlfOuFR g==;
X-CSE-ConnectionGUID: 3N5hFc+JRxeRtxe0cxVvrQ==
X-CSE-MsgGUID: THAQvdXjQmaKmPGe88/RrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44188849"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="44188849"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 04:37:26 -0800
X-CSE-ConnectionGUID: GOfJXciCTr2K/aJGo0BZGQ==
X-CSE-MsgGUID: kWmCUF0zTA+FC1k1Mp4WDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="99163064"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 04:37:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
Date: Thu,  5 Dec 2024 14:37:20 +0200
Message-Id: <20241205123720.3278727-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

The debugfs contains all the other timings except panel power cycle
delay. Add it for completeness.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7784b3b760db..e55c84685521 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1819,6 +1819,8 @@ static int intel_pps_show(struct seq_file *m, void *data)
 		   intel_dp->pps.panel_power_up_delay);
 	seq_printf(m, "Panel power down delay: %d\n",
 		   intel_dp->pps.panel_power_down_delay);
+	seq_printf(m, "Panel power cycle delay: %d\n",
+		   intel_dp->pps.panel_power_cycle_delay);
 	seq_printf(m, "Backlight on delay: %d\n",
 		   intel_dp->pps.backlight_on_delay);
 	seq_printf(m, "Backlight off delay: %d\n",
-- 
2.39.5

