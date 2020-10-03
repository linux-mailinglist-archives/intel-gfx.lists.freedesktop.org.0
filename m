Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5217A2820CC
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 05:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DF26EA25;
	Sat,  3 Oct 2020 03:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7875B6EA25
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 03:30:01 +0000 (UTC)
IronPort-SDR: 4Oa6E2vjAN2HaAb/aI6xJ6nsIvAiJfo+tPyfPyTC7T8glqCRVTc956UIrGZuPMYDwTCKEIR1DZ
 57urTWp1U31g==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163992696"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="163992696"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:30:01 -0700
IronPort-SDR: PZ3ZhDfqoZNjRVXwn4Cm0KvJrwFflf6MjQUtXdQvyQxlJiaK7aYwE1RxkX1rC4JMlmfUdCLgKD
 DXVTYRYwzedQ==
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="326022182"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:30:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 20:29:51 -0700
Message-Id: <20201003032951.2730073-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20201003032951.2730073-1-matthew.d.roper@intel.com>
References: <20201003032951.2730073-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Update gen12 multicast register
 ranges
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

The updated bspec forcewake table also provides us with new multicast
ranges that should be reflected in our workaround code.

Note that there are different types of multicast registers with
different styles of replication and different steering registers.  The
i915 MCR range lists we're updating here are only used to ensure we can
verify workarounds properly (i.e., if we can't steer register reads we
don't want to verify workarounds where an unsteered read might hit a
fused-off instance of the unit).  Because of this, we don't need to
include any of the multicast ranges where all instances of the register
will always present and fusing doesn't play a role.  Specifically, that
means that we are not including the MCR ranges designated as "SQIDI" in
the bspec.

Bspec: 66696
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 28 ++++++++++++++++-----
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6c580d0d9ea8..78c5480c6401 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2031,10 +2031,12 @@ create_scratch(struct i915_address_space *vm, int count)
 	return ERR_PTR(err);
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
@@ -2043,11 +2045,25 @@ static const struct {
 	{},
 };
 
+static const struct mcr_range mcr_ranges_gen12[] = {
+	{ .start =  0x8150, .end =  0x815f },
+	{ .start =  0x9520, .end =  0x955f },
+	{ .start =  0xb100, .end =  0xb3ff },
+	{ .start =  0xde80, .end =  0xe8ff },
+	{ .start = 0x24a00, .end = 0x24a7f },
+	{},
+};
+
 static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 {
+	const struct mcr_range *mcr_ranges;
 	int i;
 
-	if (INTEL_GEN(i915) < 8)
+	if (INTEL_GEN(i915) >= 12)
+		mcr_ranges = mcr_ranges_gen12;
+	else if (INTEL_GEN(i915) >= 8)
+		mcr_ranges = mcr_ranges_gen8;
+	else
 		return false;
 
 	/*
@@ -2055,9 +2071,9 @@ static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 	 * which only controls CPU initiated MMIO. Routing does not
 	 * work for CS access so we cannot verify them on this path.
 	 */
-	for (i = 0; mcr_ranges_gen8[i].start; i++)
-		if (offset >= mcr_ranges_gen8[i].start &&
-		    offset <= mcr_ranges_gen8[i].end)
+	for (i = 0; mcr_ranges[i].start; i++)
+		if (offset >= mcr_ranges[i].start &&
+		    offset <= mcr_ranges[i].end)
 			return true;
 
 	return false;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
