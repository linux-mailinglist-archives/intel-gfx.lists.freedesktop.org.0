Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C476B136C04
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 12:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298E76E9CE;
	Fri, 10 Jan 2020 11:33:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3516E9CE
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 11:32:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 03:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; d="scan'208";a="254961501"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2020 03:32:56 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 11:32:53 +0000
Message-Id: <20200110113253.12535-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110111126.28241-1-tvrtko.ursulin@linux.intel.com>
References: <20200110111126.28241-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/pmu: Do not use colons or dashes in
 PMU names
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
Cc: Andi Kleen <ak@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We use PCI device path in the registered PMU name in order to distinguish
between multiple GPUs. But since tools/perf reserves a special meaning to
dash and colon characters we need to transliterate them to something else.
We choose an underscore.

v2:
 * Use strreplace. (Chris)
 * Dashes are not good either. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reported-by: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
Fixes: 05488673a4d4 ("drm/i915/pmu: Support multiple GPUs")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index f3ef6700a5f2..28a82c849bac 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1117,12 +1117,17 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
 
-	if (!is_igp(i915))
+	if (!is_igp(i915)) {
 		pmu->name = kasprintf(GFP_KERNEL,
-				      "i915-%s",
+				      "i915_%s",
 				      dev_name(i915->drm.dev));
-	else
+		if (pmu->name) {
+			/* tools/perf reserves colons as special. */
+			strreplace((char *)pmu->name, ':', '_');
+		}
+	} else {
 		pmu->name = "i915";
+	}
 	if (!pmu->name)
 		goto err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
