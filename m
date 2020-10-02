Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB9A281F0A
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 01:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D526E9EA;
	Fri,  2 Oct 2020 23:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8568F6E9E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 23:28:02 +0000 (UTC)
IronPort-SDR: +YAlGsl6VqaYBqIPRmeVTWJPysX6y0Dp3iKNkPXiSC+/l2jvbhU2GAuejbyWhyVs20qHe5gjjf
 SulvWyiS2MvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163969278"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="163969278"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
IronPort-SDR: zxu87D7F0UrAoahN8ySr8hEFgnPepO97onAUdPD/LuPWurOxGFk42iFOCTnnlwtV3qJOZ81y9N
 Xet7KpsGyLnA==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="325972371"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Fri,  2 Oct 2020 16:27:59 -0700
Message-Id: <20201002232801.51936-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
References: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Refactor _wa_add to reuse
 wa_index and wa_list_grow
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

Switch the search and grow code of the _wa_add to use _wa_index and
_wa_list_grow.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 54 +++++++--------------
 1 file changed, 17 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 8eda3bc3991e..23218d113077 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -174,53 +174,33 @@ static void _wa_remove(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
 
 static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 {
-	unsigned int addr = i915_mmio_reg_offset(wa->reg);
-	unsigned int start = 0, end = wal->count;
+	int index;
 	const unsigned int grow = WA_LIST_CHUNK;
 	struct i915_wa *wa_;
 
 	GEM_BUG_ON(!is_power_of_2(grow));
 
-	if (IS_ALIGNED(wal->count, grow)) { /* Either uninitialized or full. */
-		struct i915_wa *list;
-
-		list = kmalloc_array(ALIGN(wal->count + 1, grow), sizeof(*wa),
-				     GFP_KERNEL);
-		if (!list) {
-			DRM_ERROR("No space for workaround init!\n");
+	if (IS_ALIGNED(wal->count, grow)) /* Either uninitialized or full. */
+		if (_wa_list_grow(wal, wal->count) < 0)
 			return;
-		}
-
-		if (wal->list)
-			memcpy(list, wal->list, sizeof(*wa) * wal->count);
 
-		wal->list = list;
-	}
+	index = _wa_index(wal, wa->reg);
+	if (index >= 0) {
+		wa_ = &wal->list[index];
 
-	while (start < end) {
-		unsigned int mid = start + (end - start) / 2;
+		if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
+			DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
+				  i915_mmio_reg_offset(wa_->reg),
+				  wa_->clr, wa_->set);
 
-		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr) {
-			start = mid + 1;
-		} else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr) {
-			end = mid;
-		} else {
-			wa_ = &wal->list[mid];
-
-			if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
-				DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
-					  i915_mmio_reg_offset(wa_->reg),
-					  wa_->clr, wa_->set);
-
-				wa_->set &= ~wa->clr;
-			}
-
-			wal->wa_count++;
-			wa_->set |= wa->set;
-			wa_->clr |= wa->clr;
-			wa_->read |= wa->read;
-			return;
+			wa_->set &= ~wa->clr;
 		}
+
+		wal->wa_count++;
+		wa_->set |= wa->set;
+		wa_->clr |= wa->clr;
+		wa_->read |= wa->read;
+		return;
 	}
 
 	wal->wa_count++;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
