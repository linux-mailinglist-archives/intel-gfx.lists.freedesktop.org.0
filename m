Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC2C49EEEF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70F310E3F3;
	Thu, 27 Jan 2022 23:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D3C10E41C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643326885; x=1674862885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uo8Hinpj5wKso9fbv9Nnp+BaOry90wUlZ4Gv9A23iPc=;
 b=EmDE5bgVQ71Gjtcze9bbcLD8SD2DVNQA1xEBxlArLiJh5iSiGbJSZteN
 9q9vXBS1iKvKFJv1wSxVWhjaU4ZUJ/pNOW/c9R9b673TCc3gY/SBwip1f
 YNuM8XfUQB9XCBFbTCu3oq7aJx4SVJ4jztAcKVXEhGhgjkCEBvZbYuINO
 QvALKcHIafu9JeYHZj8c1GVA7fVk+t5z6PvRzReqlD6ahXVOiEy+gteXw
 DP6ltZqDXWaAoq96+rvMb1CrrC6SAQxGpTLaJrboh4OJ2zfisLIzvqIy8
 askXE35C6z9LHBJDgZY94erhv4y2EJrY+fso0bHHgETWJwnT6oq5vbQG5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230573046"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="230573046"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="563985275"
Received: from mrea-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.251.14.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:25 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:41:17 -0800
Message-Id: <20220127234118.111015-2-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220127234118.111015-1-michael.cheng@intel.com>
References: <20220127234118.111015-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Re-work intel_write_status_page
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Re-work intel_write_status_page to use drm_clflush_virt_range. This
will prevent compiler errors when building for non-x86 architectures.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 08559ace0ada..e6189fffa7a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -4,6 +4,7 @@
 
 #include <asm/cacheflush.h>
 #include <drm/drm_util.h>
+#include <drm/drm_cache.h>
 
 #include <linux/hashtable.h>
 #include <linux/irq_work.h>
@@ -144,15 +145,9 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 	 * of extra paranoia to try and ensure that the HWS takes the value
 	 * we give and that it doesn't end up trapped inside the CPU!
 	 */
-	if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		mb();
-		clflush(&engine->status_page.addr[reg]);
-		engine->status_page.addr[reg] = value;
-		clflush(&engine->status_page.addr[reg]);
-		mb();
-	} else {
-		WRITE_ONCE(engine->status_page.addr[reg], value);
-	}
+	drm_clflush_virt_range(&engine->status_page.addr[reg], PAGE_SIZE);
+	WRITE_ONCE(engine->status_page.addr[reg], value);
+	drm_clflush_virt_range(&engine->status_page.addr[reg], PAGE_SIZE);
 }
 
 /*
-- 
2.25.1

