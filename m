Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBCB28CC61
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398DB6E8C1;
	Tue, 13 Oct 2020 11:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D483F6E8C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 11:18:51 +0000 (UTC)
IronPort-SDR: ugVeXq2SDh0o+d08k5+isRZhovRjzmojyDTSy1qKEDzYm7+920Qq/5IzKcKbdJeCkWwT0KG1zr
 6uUKLiFPqUqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="166003442"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="166003442"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:18:46 -0700
IronPort-SDR: /CsIy0dxuz43RgvOcfBGN7zb/6mSeP80sE61dUzzOKXULzSYmEQJeuQq2V+hzHPpGR87Hz9kw2
 Px13StRHMjkQ==
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="463451319"
Received: from jnavarro-mobl3.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.3.12])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:18:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 12:18:39 +0100
Message-Id: <20201013111839.96637-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execbuf: don't allow zero batch_len
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per the ABI batch_len is u32, however if the batch_len is left unset,
then the kernel will just assume batch_len is the size of the whole
batch object, however since the vma->size is u64, while the batch_len is
just u32 we can end up with batch_len = 0 if we are given too large batch
object(e.g 1ULL << 32), which doesn't look the intended behaviour and
probably leads to explosions on some HW.

Testcase: igt/gem_exec_params/larger-than-life-batch
Fixes: 0b5372727be3 ("drm/i915/cmdparser: Use cached vmappings")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 4b09bcd70cf4..80c738c72e6e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -869,8 +869,13 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		return -EINVAL;
 	}
 
-	if (eb->batch_len == 0)
+	if (eb->batch_len == 0) {
 		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
+		if (unlikely(eb->batch_len == 0)) {
+			drm_dbg(&i915->drm, "Attempting to use too large batch\n");
+			return -EINVAL;
+		}
+	}
 
 	return 0;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
