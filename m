Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147348789B3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 21:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9328F10EB1A;
	Mon, 11 Mar 2024 20:48:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9GEx6C/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C15110EC07
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 20:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710190123; x=1741726123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t0ny5oYX64JjaQAEhS7fHn9Kll0r7I/rxP7+P9d8Prc=;
 b=j9GEx6C/y5qtPDh3RrY7u/5wh+pEiXbpDsG3UZ/eMXRqIPN/9v6g5t0b
 CsHZ+PGRuXgtDqXJAg0x9y82HHsTczirOyU74Ps418kKcbfBTWuSidPBf
 eX5kvLHUa8G+3Z4e9/Yuu2T1XAe9TriJUz3r4RsBBGmhcHp4EC2I+5yPu
 zxiRLY9up5jSFKDuw/BgKdswSZVj/WFCPTYlXPEJ+HQnilkomfrkvXGgS
 IiOyi6t4QTo/GJzydIjyo1qx+UoBJM20KEzfhxL3m1rx/Ly4+WVAKLqNh
 JcMz3j9oyambzl3LXv1xsvV+OZLb6XZD4zSC/NtWD/G8RRxlNgTcqYrbP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="27350383"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="27350383"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 13:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="48739713"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 13:48:42 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 matthew.d.roper@intel.com, lionel.g.landwerlin@intel.com,
 chris.p.wilson@linux.intel.com, brian.welty@intel.com
Subject: [PATCH] drm/i915/gem: Execbuffer objects must have struct pages.
Date: Mon, 11 Mar 2024 13:37:42 -0700
Message-Id: <20240311203742.3004155-1-jonathan.cavitt@intel.com>
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
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3a771afb083e..e680f78ce34d1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3313,6 +3313,13 @@ eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
 	unsigned int i;
 
 	for_each_batch_create_order(eb, i) {
+		/* Do not write requests to objects without struct pages. */
+		if (eb->batches[i]->vma &&
+		    !i915_gem_object_has_struct_page(eb->batches[i]->vma-obj)) {
+			out_fence = ERR_PTR(-EINVAL);
+			return out_fence;
+		}
+
 		/* Allocate a request for this batch buffer nice and early. */
 		eb->requests[i] = i915_request_create(eb_find_context(eb, i));
 		if (IS_ERR(eb->requests[i])) {
-- 
2.25.1

