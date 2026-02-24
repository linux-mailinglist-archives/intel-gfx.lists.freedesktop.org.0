Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMOCJjLZnWk0SQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:00:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1348D18A372
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A8110E5EC;
	Tue, 24 Feb 2026 17:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jELV7MHx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC8710E5EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Feb 2026 17:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771952429; x=1803488429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XcaFYXG1xM1xOxfVsY14uN5h9tdEBj+eUCvBJL17m/s=;
 b=jELV7MHxaj2Q2dyKX53PanwMcO3HGHo06jqvpTF5mmrfhL69uiM4/Luv
 agGFqZKKiT9h0h9UxelcmRDke7sToywu3eUAjKQ0TWC74c78QuUQPoJVq
 KgdgExFAYDGvZz7CwBJyzIx/j7qZmDeCWuUj3Vx+8vUcwP/S8I73uMtTj
 4hYI1kZ1+XXgtTVaDU48bNpl4q+7y4IwgJOJvtKsmM3/wsnOj2nVMUMVn
 yONHdL2i1r+WXTYm+YXsyNAjkoIjRiHEBecRfHbS34zyrW+EntMn3bpT3
 qeBXWg/J5SUmkEX8f/j08yj5vFIy5lVCWVHsXUt6x+odwus0SwsmSe5vr A==;
X-CSE-ConnectionGUID: iqO0dYWEQa6Oc+TjyGIbuw==
X-CSE-MsgGUID: n0sZG/YpT1C1sIHAsPqBRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73043522"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="73043522"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:00:29 -0800
X-CSE-ConnectionGUID: odlsy+ARSEi7Vvd8yDrNLg==
X-CSE-MsgGUID: rHy/uw/PQe+UDD3iaR1ktQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220562565"
Received: from dut4420lnl.fm.intel.com ([10.105.10.30])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:00:25 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 joonas.lahtinen@linux.intel.com, krzysztof.karas@intel.com
Subject: [PATCH v2] drm/i915/gem: Explicitly return error value from
 eb_relocate helpers
Date: Tue, 24 Feb 2026 17:00:24 +0000
Message-ID: <20260224170024.10514-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 1348D18A372
X-Rspamd-Action: no action

Static analysis issue:

The current implementations of the eb_relocate_vma and
eb_relocate_vma_slow functions cast the return value of
eb_relocate_entry to a signed long in order to determine if an error has
occurred.  This is because the return value of eb_relocate_entry is a
u64 offset value on a success and a negative error value on a failure.

It is improper to perform a cast like this, so just have
eb_relocate_entry (and, by extension, its helper function
relocate_entry) return the error value, storig the offset separately in
a passed u64 pointer.

Interestingly, this value is only used for non-error-checking purposes
in the eb_relocate_vma case.  We can simplify the eb_relocate_vma_slow
case by allowing the passed u64 pointer to be NULL because of this.

v2:
- Modify commit message (Karas)
- Reorder error and offset cases in eb_relocate_vma, as offset and
  error are now uncorrelated (jcavitt)
- Fix uninitialized read issue (jcavitt)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 46 +++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e7918f896a26..858653e6ea76 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1373,11 +1373,12 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 	}
 }
 
-static u64
+static int
 relocate_entry(struct i915_vma *vma,
 	       const struct drm_i915_gem_relocation_entry *reloc,
 	       struct i915_execbuffer *eb,
-	       const struct i915_vma *target)
+	       const struct i915_vma *target,
+	       u64 *pin_offset)
 {
 	u64 target_addr = relocation_target(reloc, target);
 	u64 offset = reloc->offset;
@@ -1402,13 +1403,16 @@ relocate_entry(struct i915_vma *vma,
 		goto repeat;
 	}
 
-	return target->node.start | UPDATE;
+	if (pin_offset)
+		*pin_offset = target->node.start | UPDATE;
+	return 0;
 }
 
-static u64
+static int
 eb_relocate_entry(struct i915_execbuffer *eb,
 		  struct eb_vma *ev,
-		  const struct drm_i915_gem_relocation_entry *reloc)
+		  const struct drm_i915_gem_relocation_entry *reloc,
+		  u64 *offset)
 {
 	struct drm_i915_private *i915 = eb->i915;
 	struct eb_vma *target;
@@ -1505,7 +1509,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	ev->flags &= ~EXEC_OBJECT_ASYNC;
 
 	/* and update the user's relocation entry */
-	return relocate_entry(ev->vma, reloc, eb, target->vma);
+	return relocate_entry(ev->vma, reloc, eb, target->vma, offset);
 }
 
 static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
@@ -1516,6 +1520,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	int err = 0;
 
 	if (unlikely(remain > N_RELOC(INT_MAX)))
 		return -EINVAL;
@@ -1546,21 +1551,20 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
 		pagefault_enable();
 		if (unlikely(copied)) {
-			remain = -EFAULT;
+			err = -EFAULT;
 			goto out;
 		}
 
 		remain -= count;
 		do {
-			u64 offset = eb_relocate_entry(eb, ev, r);
+			u64 offset = 0;
+
+			err = eb_relocate_entry(eb, ev, r, &offset);
+			if (err)
+				goto out;
 
 			if (likely(offset == 0))
 				continue;
-
-			if ((s64)offset < 0) {
-				remain = (int)offset;
-				goto out;
-			}
 			/*
 			 * Note that reporting an error now
 			 * leaves everything in an inconsistent
@@ -1589,7 +1593,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	} while (remain);
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
-	return remain;
+	return err;
 }
 
 static int
@@ -1599,18 +1603,14 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry *relocs =
 		u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
 	unsigned int i;
-	int err;
+	int err = 0;
 
 	for (i = 0; i < entry->relocation_count; i++) {
-		u64 offset = eb_relocate_entry(eb, ev, &relocs[i]);
-
-		if ((s64)offset < 0) {
-			err = (int)offset;
-			goto err;
-		}
+		err = eb_relocate_entry(eb, ev, &relocs[i], NULL);
+		if (err)
+			break;
 	}
-	err = 0;
-err:
+
 	reloc_cache_reset(&eb->reloc_cache, eb);
 	return err;
 }
-- 
2.43.0

