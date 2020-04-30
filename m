Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35051C0AE1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67356EA49;
	Thu, 30 Apr 2020 23:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E396EA46
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:15:56 +0000 (UTC)
IronPort-SDR: 6Vb1nQgMjE4IkR0NOqdWubtJYQdP4iJoQ4zz4L/nZKAYHAGUy66POH6FOABi/0Y8SLFsUjlONb
 wj8GQgEsj4Eg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:15:55 -0700
IronPort-SDR: pYHrA9b+PlWNnJg/D/T0e5WtoIZ1ujfvdkg+bFz/I7fVoY9NQZlAIIxacyC8N2OVeOHBW66y4/
 yaPIO6gkmMZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="293731896"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 16:15:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:15:29 -0700
Message-Id: <20200430231529.295556-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200430231529.295556-1-matthew.d.roper@intel.com>
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Add MCR ranges for gen11 and gen12
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The multicast register ranges are slightly different for gen11 and gen12
than the table we have for gen8.  This information never got updated in
the bspec, so this patch is based on a spreadsheet provided by the
hardware team while they work on getting the official documentation
updated.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 45 ++++++++++++++++++---
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d1b7a445f2da..cd71ff347221 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1023,10 +1023,12 @@ wa_verify(struct drm_i915_private *i915, const struct i915_wa *wa, u32 cur,
 	return true;
 }
 
-static const struct {
+struct mcr_range {
 	u32 start;
 	u32 end;
-} mcr_ranges_gen8[] = {
+};
+
+static const struct mcr_range mcr_ranges_gen8[] = {
 	{ .start = 0x5500, .end = 0x55ff },
 	{ .start = 0x7000, .end = 0x7fff },
 	{ .start = 0x9400, .end = 0x97ff },
@@ -1035,11 +1037,42 @@ static const struct {
 	{},
 };
 
+static const struct mcr_range mcr_ranges_gen11[] = {
+	{ .start = 0x5500,  .end = 0x55ff },
+	{ .start = 0x7000,  .end = 0x7fff },
+	{ .start = 0x8140,  .end = 0x815f },
+	{ .start = 0x8c00,  .end = 0x8cff },
+	{ .start = 0x94d0,  .end = 0x955f },
+	{ .start = 0xb000,  .end = 0xb3ff },
+	{ .start = 0xdf00,  .end = 0xe8ff },
+	{ .start = 0x24400, .end = 0x24fff },
+	{},
+};
+
+static const struct mcr_range mcr_ranges_gen12[] = {
+	{ .start = 0xb00,   .end = 0xbff },
+	{ .start = 0x1000,  .end = 0x1fff },
+	{ .start = 0x8150,  .end = 0x815f },
+	{ .start = 0x8700,  .end = 0x87ff },
+	{ .start = 0x9520,  .end = 0x955f },
+	{ .start = 0xb100,  .end = 0xb3ff },
+	{ .start = 0xde80,  .end = 0xe8ff },
+	{ .start = 0x24a00, .end = 0x24a7f },
+	{},
+};
+
 static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 {
+	const struct mcr_range *range_list;
 	int i;
 
-	if (INTEL_GEN(i915) < 8)
+	if (INTEL_GEN(i915) >= 12)
+		range_list = mcr_ranges_gen12;
+	else if (INTEL_GEN(i915) >= 11)
+		range_list = mcr_ranges_gen11;
+	else if (INTEL_GEN(i915) >= 8)
+		range_list = mcr_ranges_gen8;
+	else
 		return false;
 
 	/*
@@ -1047,9 +1080,9 @@ static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 	 * which only controls CPU initiated MMIO. Routing does not
 	 * work for CS access so we cannot verify them on this path.
 	 */
-	for (i = 0; mcr_ranges_gen8[i].start; i++)
-		if (offset >= mcr_ranges_gen8[i].start &&
-		    offset <= mcr_ranges_gen8[i].end)
+	for (i = 0; range_list[i].start; i++)
+		if (offset >= range_list[i].start &&
+		    offset <= range_list[i].end)
 			return true;
 
 	return false;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
