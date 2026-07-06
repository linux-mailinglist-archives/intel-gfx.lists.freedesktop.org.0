Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xeEVLu+NS2rBVQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:13:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B0C70FB72
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:13:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF1F10E8CF;
	Mon,  6 Jul 2026 11:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62FD10E347;
 Mon,  6 Jul 2026 11:13:47 +0000 (UTC)
X-UUID: bd1b28d0792b11f1aa26b74ffac11d73-20260706
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12, REQID:615fdcf3-dd64-45a7-ae4b-d9ac2a6c1cc5, IP:0,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:0
X-CID-META: VersionHash:e7bac3a, CLOUDID:b54be00bfd7698c547a44b9c0b80abf1,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:102|850|865|898,TC:nil,Content:0|15|50,E
 DM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA
 :0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: bd1b28d0792b11f1aa26b74ffac11d73-20260706
X-User: lilinmao@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
 (envelope-from <lilinmao@kylinos.cn>)
 (Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
 with ESMTP id 1941358266; Mon, 06 Jul 2026 19:13:38 +0800
From: Linmao Li <lilinmao@kylinos.cn>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andi Shyti <andi.shyti@linux.intel.com>,
 Konstantin Khorenko <khorenko@virtuozzo.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Cc: Linmao Li <lilinmao@kylinos.cn>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/guc: Sort multi-lrc engines by logical instance
Date: Mon,  6 Jul 2026 19:13:23 +0800
Message-Id: <20260706111328.618675-1-lilinmao@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,virtuozzo.com,Intel.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kylinos.cn:from_mime,kylinos.cn:email,kylinos.cn:mid];
	FROM_NEQ_ENVFROM(0.00)[lilinmao@kylinos.cn,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DMARC_NA(0.00)[kylinos.cn];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36B0C70FB72

logical_sort() looks up the engine for each logical instance i by
scanning all MAX_ENGINE_INSTANCE + 1 slots of the engines array, even
though its only caller initializes just num_engines entries, so the
scan can dereference uninitialized stack pointers.  In addition, the
final memcpy() passes *engines and *sorted instead of the arrays
themselves, so it copies engine structure data rather than the pointer
arrays.

Replace the implementation with a plain sort() of the initialized part
of the array, keyed by the logical mask.  This touches only initialized
entries, does not copy anything by hand, and does not rely on the
logical numbering being contiguous.

Fixes: f9d72092cb49 ("drm/i915/guc: Add basic GuC multi-lrc selftest")
Signed-off-by: Linmao Li <lilinmao@kylinos.cn>
---
 .../drm/i915/gt/uc/selftest_guc_multi_lrc.c   | 28 ++++++++++---------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
index 28e8a092f4e7..b56768d202b0 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/sort.h>
+
 #include "gt/intel_gt_print.h"
 #include "selftests/igt_spinner.h"
 #include "selftests/igt_reset.h"
@@ -10,21 +12,21 @@
 #include "gt/intel_engine_heartbeat.h"
 #include "gem/selftests/mock_context.h"
 
+static int cmp_logical_instance(const void *a, const void *b)
+{
+	const struct intel_engine_cs *ea = *(const struct intel_engine_cs **)a;
+	const struct intel_engine_cs *eb = *(const struct intel_engine_cs **)b;
+
+	if (ea->logical_mask < eb->logical_mask)
+		return -1;
+	if (ea->logical_mask > eb->logical_mask)
+		return 1;
+	return 0;
+}
+
 static void logical_sort(struct intel_engine_cs **engines, int num_engines)
 {
-	struct intel_engine_cs *sorted[MAX_ENGINE_INSTANCE + 1];
-	int i, j;
-
-	for (i = 0; i < num_engines; ++i)
-		for (j = 0; j < MAX_ENGINE_INSTANCE + 1; ++j) {
-			if (engines[j]->logical_mask & BIT(i)) {
-				sorted[i] = engines[j];
-				break;
-			}
-		}
-
-	memcpy(*engines, *sorted,
-	       sizeof(struct intel_engine_cs *) * num_engines);
+	sort(engines, num_engines, sizeof(*engines), cmp_logical_instance, NULL);
 }
 
 static struct intel_context *
-- 
2.25.1

