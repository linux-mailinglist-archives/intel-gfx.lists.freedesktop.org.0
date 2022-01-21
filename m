Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09524498124
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B186010EACB;
	Mon, 24 Jan 2022 13:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F74610E4B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 22:23:29 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5AEA71F465DE;
 Fri, 21 Jan 2022 22:23:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642803808;
 bh=HywVXqkFYUQwQW4dizv3Olfnjyz5xHTBWsw+8hLC6G0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lQO7v8wqZgjG4t7epyy4tdf0MD1VH9tb7Rxqs6L1Ah58wtvNYW+PqusUMKyyOqZXR
 b/QTEIVUppvFOlc2o6T5/5vuGL6wz71Gw57f+fxdVJyMHbfH50+hHT0cnPnr5JTqVl
 YKG8fGICCEQGcPBPFchRMRMD6KjNWNlT5s19FRaCF0a16EFjaeNnDwRK0AYzRsNjvz
 RYCQT5DCc1QLYj3u4aWE9EEY+uiLe9ZLdRoVu2g+EJADkVOK1yYvxN0/V0ZA17Kq+9
 6FgYSh/N6uoPPrbNHT1TVBSD96n1Z8FeZJMhwdG1EX7k5LIZmhEQ1Kwi+ylguF6dvs
 WA1h8WXxs0vlw==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 22:22:50 +0000
Message-Id: <20220121222252.3296117-4-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] [RFC PATCH 3/5] drm/i915/flat-CCS: move GET_CCS_SIZE
 macro into driver-wide header
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It has to be used by other files other than low-level migration code.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 1 -
 drivers/gpu/drm/i915/i915_drv.h         | 5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index a210c911905e..716f2f51c7f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -16,7 +16,6 @@ struct insert_pte_data {
 };
 
 #define CHUNK_SZ SZ_8M /* ~1ms at 8GiB/s preemption delay */
-#define GET_CCS_SIZE(i915, size)	(HAS_FLAT_CCS(i915) ? (size) >> 8 : 0)
 
 static bool engine_supports_migration(struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5623892ceab9..6b890a6674e4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -105,6 +105,7 @@
 #include "i915_request.h"
 #include "i915_scheduler.h"
 #include "gt/intel_timeline.h"
+#include "gt/intel_gpu_commands.h"
 #include "i915_vma.h"
 
 
@@ -1526,6 +1527,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_FLAT_CCS(dev_priv)   (INTEL_INFO(dev_priv)->has_flat_ccs)
 
+#define GET_CCS_SIZE(i915, size) (HAS_FLAT_CCS(i915) ? \
+				  DIV_ROUND_UP(size, NUM_CCS_BYTES_PER_BLOCK) \
+				  0)
+
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
-- 
2.34.1

