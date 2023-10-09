Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3D57BE25A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 16:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D0C10E0EC;
	Mon,  9 Oct 2023 14:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1426610E0EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 14:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696861144; x=1728397144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ReLNEDgsX6eYyqGgZJPrmLR34Ys/GMYH9ZqaV88rpc4=;
 b=L0ZFz9P4vSf2TTRZbMbrx84zUq8P1is1hY2hzTf65j7txaGJvrp07Inz
 FJUAvrGco6mwqJLPttZumVmL5WpmhXSmrcdVjPIJBkIAQ3bU/k4ASfzWk
 3unczSyWuO4ALP5NoDBIa4Ozm0u90Fh44jaP7hEJ+x0Sa24c4tMZTcPm4
 T+xY3HWjwE7CxMS2akLjhp4IZkB4I5lrA3aBm7t/1c+jCp7+zZWjv9W7G
 4PGuHNDopcqR0KHTrvH9gHshHD2HaFzXiPnWjX3W7JNbXfUl+bWj6qQpz
 8czmyr2UTFg0wEJTrnKkfmSolsrgMuoKVjUW+4lv6OmKJ64U0TaFu3cNt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383030114"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383030114"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="753023328"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="753023328"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 09 Oct 2023 07:19:01 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 17:13:03 +0300
Message-Id: <20231009141303.577061-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/lnl: Remove watchdog timers for PSR
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

Currently we are not using watchdog timers for PSR/PSR2
with Lunarlake. The patch removes the use of these timers
from the driver code.

BSpec: 69895

v2: Reword commit message (Ville)
    Drop HPD mask from LNL (Ville)
    Revise masking logic (Jouni)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 850b11f20285..abdafd04d8e3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -676,7 +676,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+	if (DISPLAY_VER(dev_priv) < 20)
+		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+
 	if (IS_HASWELL(dev_priv))
 		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
 
@@ -1399,9 +1401,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * can rely on frontbuffer tracking.
 	 */
 	mask = EDP_PSR_DEBUG_MASK_MEMUP |
-	       EDP_PSR_DEBUG_MASK_HPD |
-	       EDP_PSR_DEBUG_MASK_LPSP |
-	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+	       EDP_PSR_DEBUG_MASK_LPSP;
+
+	if (DISPLAY_VER(dev_priv) < 20)
+		mask |= EDP_PSR_DEBUG_MASK_HPD |
+			EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
 	/*
 	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
-- 
2.34.1

