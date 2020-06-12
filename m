Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4105D1F7E2E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 22:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291DF6E19A;
	Fri, 12 Jun 2020 20:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3186E19A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 20:47:39 +0000 (UTC)
IronPort-SDR: IAr5Szlbbv12h+En18Doalrt8XHhf6FZlHjT1AEwTEogSqO6aRAN3uxm41PiqsWX6BbeFnkiDB
 /kdRuyRMf1lw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 13:47:38 -0700
IronPort-SDR: pFDzPkkcFblhdlE94iBrk05AIEw+8rvxpd8accr7CeD4s/hczD3qDfBgW4fUTWQHJbMFRNninX
 lUiCjmqWdWaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="272024375"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2020 13:47:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 13:47:34 -0700
Message-Id: <20200612204734.3674650-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Update bw_buddy pagemask table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A recent bspec update removed the LPDDR4 single channel entry from the
buddy register table, but added a new four-channel entry.

Workaround 1409767108 hasn't been updated with any guidance for four
channel configurations, so we leave that alternate table unchanged for
now.

Bspec 49218
Fixes: 3fa01d642fa7 ("drm/i915/tgl: Program BW_BUDDY registers during display init")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 24a2aa1fdc9c..a592a7dd71a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5240,10 +5240,10 @@ struct buddy_page_mask {
 };
 
 static const struct buddy_page_mask tgl_buddy_page_masks[] = {
-	{ .num_channels = 1, .type = INTEL_DRAM_LPDDR4, .page_mask = 0xE },
 	{ .num_channels = 1, .type = INTEL_DRAM_DDR4,   .page_mask = 0xF },
 	{ .num_channels = 2, .type = INTEL_DRAM_LPDDR4, .page_mask = 0x1C },
 	{ .num_channels = 2, .type = INTEL_DRAM_DDR4,   .page_mask = 0x1F },
+	{ .num_channels = 4, .type = INTEL_DRAM_LPDDR4, .page_mask = 0x38 },
 	{}
 };
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
