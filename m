Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0548E12B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343D110E848;
	Thu, 13 Jan 2022 23:51:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A1710E828;
 Thu, 13 Jan 2022 23:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117882; x=1673653882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Ns9f54sQ0FFKcckW1Q8QuWkdIa7EiFseSzm7AxV988=;
 b=a179MEMQeRJcxHXZh4qn1G+kJvu59K+O6CId6i8VkBuL9XnphF5gst4T
 LU7mTIDGUKXDAFXNvxmaVm6o976NeNd62CfAaaYWB7mLnspGOTckZL/rF
 mWMZh8a6jxg2Dchs9kr3yVj8Q3gS2XZ4KXh7T27erT7K9noGOTF7OIij8
 5jNeWoML3BnZIQhWS1xlXurCcqf5oGdLZVCSQEWXkYugHNS41vPkv10f3
 R05TSYZIeVentHie1Ax2Oa+jRyTC/UfEMlnodCZDct6ew3YjvHJ1BlcKi
 DEPgpWvubQDtIHN0zlB7qM5asZjqjBzFc53kthU8NrzlICQAfTn8fMIo2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268502301"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268502301"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783044"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:21 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:15 -0800
Message-Id: <20220113235118.1575410-13-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 12/15] tests/i915/gem_exec_fence:
 Configure correct context
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The update to use intel_ctx_t missed a line that configures the
context to allow hanging. Fix that.

Fixes: 09c36188b ("tests/i915/gem_exec_fence: Convert to intel_ctx_t (v2)")
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/gem_exec_fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 196236b27..5e45d0518 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -3139,7 +3139,7 @@ igt_main
 			igt_hang_t hang;
 
 			igt_fixture {
-				hang = igt_allow_hang(i915, 0, 0);
+				hang = igt_allow_hang(i915, ctx->id, 0);
 				intel_allocator_multiprocess_start();
 			}
 
-- 
2.25.1

