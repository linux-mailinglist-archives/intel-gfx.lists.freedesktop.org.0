Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F9B2A6582
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 14:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577656ED10;
	Wed,  4 Nov 2020 13:47:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5626ED0F
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 13:47:57 +0000 (UTC)
IronPort-SDR: EV+pKbAa5Pm1bEJDy7tvWg4tYVu4wfs7G313g2KSkrYdDyyWGEJbqxWQIehYJpipXk39KwmVR0
 9Bfep/hpSYCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="169361300"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="169361300"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:47:57 -0800
IronPort-SDR: 7eS6ioeIV/c2vVxXcbBQw8Fj8HkDs4ZgTt2LtRin7YoSmzr4OAZ2FblfiPosFpH60gHMd7xv64
 xcUB8LhEGt9g==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="471228724"
Received: from marak-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.42.32])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 05:47:56 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  4 Nov 2020 13:47:43 +0000
Message-Id: <20201104134743.916027-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201104134743.916027-1-tvrtko.ursulin@linux.intel.com>
References: <20201104134743.916027-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/2] drm/i915: Use ABI engine class in error state
 ecode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Instead of printing out the internal engine mask, which can change between
kernel versions making it difficult to map to actual engines, present a
bitmask of hanging engines ABI classes. For example:

  [drm] GPU HANG: ecode 9:24dffffd:8, in gem_exec_schedu [1334]

Notice the swapped the order of ecode and bitmask which makes the new
versus old bug reports are obvious.

Engine ABI class is useful to quickly categorize render vs media etc hangs
in bug reports. Considering virtual engine even more so than the current
scheme.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 857db66cc4a3..e7d9af184d58 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1659,17 +1659,16 @@ static u32 generate_ecode(const struct intel_engine_coredump *ee)
 static const char *error_msg(struct i915_gpu_coredump *error)
 {
 	struct intel_engine_coredump *first = NULL;
+	unsigned int hung_classes = 0;
 	struct intel_gt_coredump *gt;
-	intel_engine_mask_t engines;
 	int len;
 
-	engines = 0;
 	for (gt = error->gt; gt; gt = gt->next) {
 		struct intel_engine_coredump *cs;
 
 		for (cs = gt->engine; cs; cs = cs->next) {
 			if (cs->hung) {
-				engines |= cs->engine->mask;
+				hung_classes |= BIT(cs->engine->uabi_class);
 				if (!first)
 					first = cs;
 			}
@@ -1677,9 +1676,11 @@ static const char *error_msg(struct i915_gpu_coredump *error)
 	}
 
 	len = scnprintf(error->error_msg, sizeof(error->error_msg),
-			"GPU HANG: ecode %d:%x:%08x",
-			INTEL_GEN(error->i915), engines,
-			generate_ecode(first));
+			"GPU HANG: ecode %d:%08x:%x",
+			INTEL_GEN(error->i915),
+			generate_ecode(first),
+			hung_classes);
+
 	if (first && first->context.pid) {
 		/* Just show the first executing process, more is confusing */
 		len += scnprintf(error->error_msg + len,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
