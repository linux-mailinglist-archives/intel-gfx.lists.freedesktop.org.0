Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E1514588E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 16:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828C56F586;
	Wed, 22 Jan 2020 15:23:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9901A6F583;
 Wed, 22 Jan 2020 15:23:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 07:23:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="427437177"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.10.247])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jan 2020 07:23:53 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:23:49 +0000
Message-Id: <20200122152349.12154-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152349.12154-1-tvrtko.ursulin@linux.intel.com>
References: <20200122152349.12154-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_engine_topology: Fix virtual
 engine check
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Engine class/instance have to be u16 for the virtual engine check to work.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reported-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem_engine_topology.c | 2 +-
 lib/igt_gt.h                   | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index c3645eab8538..989a6e26d6ef 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -105,7 +105,7 @@ static const char *class_names[] = {
 };
 
 static void init_engine(struct intel_execution_engine2 *e2,
-			int class, int instance, uint64_t flags)
+			uint16_t class, uint16_t instance, uint64_t flags)
 {
 	int ret;
 
diff --git a/lib/igt_gt.h b/lib/igt_gt.h
index 6a8eceb68817..e880cd4ed11f 100644
--- a/lib/igt_gt.h
+++ b/lib/igt_gt.h
@@ -96,8 +96,8 @@ bool gem_class_can_store_dword(int fd, int class);
 
 extern const struct intel_execution_engine2 {
 	char name[16];
-	int class;
-	int instance;
+	uint16_t class;
+	uint16_t instance;
 	uint64_t flags;
 	bool is_virtual;
 } intel_execution_engines2[];
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
