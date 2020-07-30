Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB2423291D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 02:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1476E820;
	Thu, 30 Jul 2020 00:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DBB66E820
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 00:48:28 +0000 (UTC)
IronPort-SDR: 5tBipHK5fk9pNQDPOwTfSytnISCXuvX7vihzRYx9K6YlP6ouDewypkB0zo8WAzmWJYJk//JQsM
 PPDvAWnY1IUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="152751066"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="152751066"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:48:27 -0700
IronPort-SDR: DcvTXvpTbYtxrlvMhX/Aw/G0NNU460HK256G75mysLR/CIfKM0iRw6HygGDCDhXomBbt414EDb
 Y27tmQh2ooiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="274032919"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 17:48:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:48:21 -0700
Message-Id: <20200730004826.8415-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Allow removal of whitelist
 register and refactor
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

- Add a helper to remove whitelisted register from the list.
- Refactor _wa_add to use _wa_index to find an existing whitelisted
  register.
- Free the old list when growing the whitelist.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 82 +++++++++++++++------
 1 file changed, 58 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cef1c122696f..98927f5d63ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -81,10 +81,49 @@ static void wa_init_finish(struct i915_wa_list *wal)
 			 wal->wa_count, wal->name, wal->engine_name);
 }
 
+static int _wa_index(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	unsigned int addr = i915_mmio_reg_offset(reg);
+	int start = 0, end = wal->count;
+
+	while (start < end) {
+		int mid = start + (end - start) / 2;
+		unsigned int wal_reg = i915_mmio_reg_offset(wal->list[mid].reg);
+
+		wal_reg &= RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
+
+		if (wal_reg < addr)
+			start = mid + 1;
+		else if (wal_reg > addr)
+			end = mid;
+		else
+			return mid;
+	}
+
+	return -1;
+}
+
+static void _wa_remove(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	int index = _wa_index(wal, reg);
+	struct i915_wa *wa = wal->list;
+
+	if (index < 0)
+		return;
+
+	memset(wa + index, 0, sizeof(*wa));
+
+	while (index < wal->count - 1) {
+		swap(wa[index], wa[index + 1]);
+		index++;
+	}
+
+	wal->count--;
+}
+
 static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 {
-	unsigned int addr = i915_mmio_reg_offset(wa->reg);
-	unsigned int start = 0, end = wal->count;
+	int index;
 	const unsigned int grow = WA_LIST_CHUNK;
 	struct i915_wa *wa_;
 
@@ -100,36 +139,31 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 			return;
 		}
 
-		if (wal->list)
+		if (wal->list) {
 			memcpy(list, wal->list, sizeof(*wa) * wal->count);
+			kfree(wal->list);
+		}
 
 		wal->list = list;
 	}
 
-	while (start < end) {
-		unsigned int mid = start + (end - start) / 2;
+	index = _wa_index(wal, wa->reg);
+	if (index >= 0) {
+		wa_ = &wal->list[index];
 
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
+		if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
+			DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
+				  i915_mmio_reg_offset(wa_->reg),
+				  wa_->clr, wa_->set);
 
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
