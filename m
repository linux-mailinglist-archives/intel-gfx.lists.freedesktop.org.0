Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402A329253E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 12:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C996E909;
	Mon, 19 Oct 2020 10:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D2D6E909
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 10:12:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22755041-1500050 
 for multiple; Mon, 19 Oct 2020 11:12:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 11:12:30 +0100
Message-Id: <20201019101230.29860-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Force VT'd workarounds when running
 as a guest OS
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
Cc: Stefan Fritsch <sf@sfritsch.de>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If i915.ko is being used as a passthrough device, it does not know if
the host is using intel_iommu. Mixing the iommu and gfx causing a few
issues (such as scanout overfetch) which we need to workaround inside
the driver, so if we detect we are running under a hypervisor, also
assume the device access is being virtualised.

Reported-by: Stefan Fritsch <sf@sfritsch.de>
Suggested-by: Stefan Fritsch <sf@sfritsch.de>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Stefan Fritsch <sf@sfritsch.de>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/i915_drv.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1a5729932c81..02a3dac412d8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -33,6 +33,8 @@
 #include <uapi/drm/i915_drm.h>
 #include <uapi/drm/drm_fourcc.h>
 
+#include <asm/hypervisor.h>
+
 #include <linux/io-mapping.h>
 #include <linux/i2c.h>
 #include <linux/i2c-algo-bit.h>
@@ -1760,6 +1762,13 @@ static inline bool intel_vtd_active(void)
 	if (intel_iommu_gfx_mapped)
 		return true;
 #endif
+
+#ifdef CONFIG_HYPERVISOR_GUEST
+	/* Running as a guest, we assume the host is enforcing VT'd */
+	if (x86_hyper_type != X86_HYPER_NATIVE)
+		return true;
+#endif
+
 	return false;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
