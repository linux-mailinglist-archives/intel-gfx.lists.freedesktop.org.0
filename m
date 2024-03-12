Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F920879720
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 16:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4AD112E63;
	Tue, 12 Mar 2024 15:06:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sbr/KWFW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D1E112E62
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 15:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710255963; x=1741791963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1nJQxQzkS5ZuFY7+6Z87eoKdUaH/X9DLgyd1lY8/+UU=;
 b=Sbr/KWFWiDPQs2if3TAQjlFziBeEYCfo/LJZ2ehkPx3sLAdyl6N1bnMB
 QXTr++vnLBsJbmKDlM7isazZhTibYmUlC7FcbcyINDz3GW1tNFWt0af1+
 43edb1rsGelSIPe2reRJu2w16GOk1+zqf43FdxXyTbCkERrjecQa3LSR3
 fYltFIQu7rCTqofbj0+HgAU+4C2ktdS8JH5Anr3OSkhWXyBlP2PSxqk3B
 zXUVff01+EgzjDH8WHIV4p08Gob7/uGa0FtXS689u7J1cYWTfpcqSCL1R
 2bUBRoSAOFPblGXGf0TEpETHxYSTL9TPGTm/TWqv4CgN5UgHRe9YeWMeq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="7916903"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="7916903"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 08:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16224177"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 08:06:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 matthew.d.roper@intel.com, lionel.g.landwerlin@intel.com,
 chris.p.wilson@linux.intel.com, brian.welty@intel.com
Subject: [PATCH v2] drm/i915/gem: Execbuffer objects must have struct pages.
Date: Tue, 12 Mar 2024 07:55:06 -0700
Message-Id: <20240312145506.3091929-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
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

We cannot write requests to objects without struct pages, so escape
early if the requests are bound to objects that lack them.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---

v2: s/vma-obj/vma->obj

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3a771afb083e..adb4f9e78cb49 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3313,6 +3313,13 @@ eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
 	unsigned int i;
 
 	for_each_batch_create_order(eb, i) {
+		/* Do not write requests to objects without struct pages. */
+		if (eb->batches[i]->vma &&
+		    !i915_gem_object_has_struct_page(eb->batches[i]->vma->obj)) {
+			out_fence = ERR_PTR(-EINVAL);
+			return out_fence;
+		}
+
 		/* Allocate a request for this batch buffer nice and early. */
 		eb->requests[i] = i915_request_create(eb_find_context(eb, i));
 		if (IS_ERR(eb->requests[i])) {
-- 
2.25.1

