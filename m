Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2532B234A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 19:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7AF6E7FE;
	Fri, 13 Nov 2020 18:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58936E7EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 18:04:27 +0000 (UTC)
IronPort-SDR: 4h5pt63q+QbBqBzdtCfSEcP+A/yH3k2cTOWaxI3bLcAnnqViejkhMVHUIV0quivsKG5D5qEc/k
 9JJoAykU7uWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167931886"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="167931886"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:04:00 -0800
IronPort-SDR: gO/q1fTDrk8sPcep7vuprrJMdkUnQt1Lwz2yIgLfXaogtT4QIVJn1VK5TSj+m6EOElw8BFQOMA
 oNoY5Y9+hkJw==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474752371"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:04:00 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 10:03:57 -0800
Message-Id: <20201113180359.54410-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
References: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Refactor _wa_add to reuse
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
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
index 722f11e43dad..b79a08868fa7 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -190,53 +190,33 @@ static void _wa_remove(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
 
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
