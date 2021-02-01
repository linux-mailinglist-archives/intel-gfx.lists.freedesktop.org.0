Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFFB30A3B3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1606E4E3;
	Mon,  1 Feb 2021 08:57:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4916E48B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757791-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:57:15 +0000
Message-Id: <20210201085715.27435-57-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 57/57] drm/i915: Support secure dispatch on
 gen6/gen7
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Re-enable secure dispatch for gen6/gen7, primarily to workaround the
command parser and overly zealous command validation on Haswell. For
example this prevents making accurate measurements using a journal for
store results from the GPU without CPU intervention.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0e4d7998be53..54063d65d330 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1666,7 +1666,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
-#define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
+#define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 8)
 #define HAS_WT(dev_priv)	HAS_EDRAM(dev_priv)
 
 #define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
