Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075182A7D44
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 12:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CA06E0F4;
	Thu,  5 Nov 2020 11:38:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27AB6E0F4
 for <Intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 11:38:54 +0000 (UTC)
IronPort-SDR: 27g8u5ylqkfpoAhA/XucgY3wdZ1+mzG5sNLuWDxn1jEEGSyOMxFYriFPu3pDggNn75wnUlDQ5m
 aWsbb1tLhAsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="168585680"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="168585680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:38:54 -0800
IronPort-SDR: 0+Sgd8TBLb10cZZtH/EKoTYo97ZWFJ2k6EvMTG9dy/ARcaIp8yYwI9Zmku9dXSzhSgTbpGrYRe
 UmdoOjVS20dQ==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="471613463"
Received: from sharonma-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.237.124])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:38:52 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 11:38:42 +0000
Message-Id: <20201105113842.1395391-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201104134743.916027-2-tvrtko.ursulin@linux.intel.com>
References: <20201104134743.916027-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2 2/2] drm/i915: Use ABI engine class in error
 state ecode
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

  [drm] GPU HANG: ecode 9:8:24dffffd, in gem_exec_schedu [1334]

Engine ABI class is useful to quickly categorize render vs media etc hangs
in bug reports. Considering virtual engine even more so than the current
scheme.

v2:
 * Do not re-order fields. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 857db66cc4a3..d8cac4c5881f 100644
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
@@ -1678,7 +1677,7 @@ static const char *error_msg(struct i915_gpu_coredump *error)
 
 	len = scnprintf(error->error_msg, sizeof(error->error_msg),
 			"GPU HANG: ecode %d:%x:%08x",
-			INTEL_GEN(error->i915), engines,
+			INTEL_GEN(error->i915), hung_classes,
 			generate_ecode(first));
 	if (first && first->context.pid) {
 		/* Just show the first executing process, more is confusing */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
