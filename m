Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D25F4BDA14
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB1B10E80B;
	Mon, 21 Feb 2022 14:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193E310E80B;
 Mon, 21 Feb 2022 14:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645452422; x=1676988422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iH8jE2ltVwzGVWuQJELoCtTFIqbJFkO3iwlDsCVelWk=;
 b=bOy9EIUFF6dOadCjpLkUlo+8a1MdkfyGQJnsDW8j20Q/tphAfDDjVz/S
 OT3BKHtfPDo+Mw7kGHE9yqPi1bmBusvTbS16kxcoZIjYlF8M/sbiEwK7o
 w/6CMHrFqpo42HVqJTG3p/HMe/+qY9zDaHYggf2S4AeYlAUFdtz3sHRPX
 NkqQDBGCdt8y36q0jwbHXHlWZ21qNj3tygttBbwUTtYhvf1Vp07aY9oEB
 cmYY/T8/8B8OOklYfMRp9H5yeAWvYfVe8fpBAGRKIpK+vL3eI1oovwBdt
 hCgrmK/Jwmb4zLjhIiBkoeY3ZUcqx5bCGqCqh5R9QdYNT89NgCLAhnHKK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="312259063"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="312259063"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:03:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="547348652"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:03:57 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:03:42 +0000
Message-Id: <20220221140342.2487679-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221140342.2487679-1-matthew.auld@intel.com>
References: <20220221140342.2487679-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] test/i915/gem_exec_await: prefer
 gem_mmap__device_coherent
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it play nice on at least DG1.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/gem_exec_await.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_exec_await.c b/tests/i915/gem_exec_await.c
index bf8eb682..fe176595 100644
--- a/tests/i915/gem_exec_await.c
+++ b/tests/i915/gem_exec_await.c
@@ -126,8 +126,8 @@ static void wide(int fd, const intel_ctx_t *ctx, int ring_size,
 		if (ahnd)
 			exec[e].exec[0].flags = EXEC_OBJECT_PINNED;
 
-		exec[e].cmd = gem_mmap__wc(fd, exec[e].exec[0].handle,
-					   0, 4096, PROT_WRITE);
+		exec[e].cmd = gem_mmap__device_coherent(fd, exec[e].exec[0].handle,
+							0, 4096, PROT_WRITE);
 
 		gem_set_domain(fd, exec[e].exec[0].handle,
 			       I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
-- 
2.34.1

