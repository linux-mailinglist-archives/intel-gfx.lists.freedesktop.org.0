Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7A448DC6E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BC510E543;
	Thu, 13 Jan 2022 16:59:54 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CFBC10E543;
 Thu, 13 Jan 2022 16:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093188; x=1673629188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qAgejc1/jV6/dz5/EVZAs0SZZcrAGnoA1mdm1DLVInI=;
 b=ImzQoeTCoVhoR78sHUe9aeQfvd1zz4EsbLU5G3/Bi7LdVKxhJ1RdFVvd
 aLhXD0eKNpRxn4P+wTItWJh40mYDECjrKhYHLUuOIKk3zWOH4dp0Jjkhw
 uBZyz7GxK0VesvRmssKuE6NVLKjiPGlthdU6gu+iCYmd7ZqmcYSBKGv1c
 TGvQ29ugiONIzNGQHx9zmEMPufoWWEGzJfd72P+6lvrWR3NLJWSVFTFFu
 lLCSRdt+FBsETmJptfAp5vcQSQYyQarayCKWxyuNASGW22nfeOuCw6k2a
 2AkANxtvfPf2CYpuLSh2YbegPTJMhR/cUbt+3UgSR2fxgFM4DgGDmJ1P3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396636"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396636"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999180"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:45 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:41 -0800
Message-Id: <20220113165944.1414015-13-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 12/15] tests/i915/gem_exec_fence:
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

Fixes: 09c36188b23f83ef9a7b5414e2a10100adc4291f

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
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

