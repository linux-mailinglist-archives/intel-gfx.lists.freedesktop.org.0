Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6411197E2C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8927F6E3EE;
	Mon, 30 Mar 2020 14:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B206EA97;
 Sat, 28 Mar 2020 00:04:33 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 87312fee;
 Fri, 27 Mar 2020 23:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=BPXvm8QBjsmfO2gncU0J68R+kso=; b=lHnY9UVPHQV8txCJDSBm
 /qBou90bx9JLt0t32kPkZBBGEybZk6ppAot+UYEZ0daIS/ZNYXnrsvBsuJ4HJPfn
 LfpWFmDgo8tqLIMT1iNLItH9VoM2eLbpMW2iWxyiX4s0KXSWkxPB2VOKUvSamzgO
 fFZEQkLPY8WT6jGtf3UP/tXLT6/HNryWicR6+OO6faN2osiek5NARUqJr0JwZvB+
 wgXDVDt7IHL7wL2n5ecG52dVaHFO/Z7UUiad5D4uTADxfPuyF6uK/tepFZFMdO3e
 xleEYD8fb4ypPR6AVfyvHlijeTLqPLVlqyyotUA5HSzfAbMQdAGNCDhp5G5V0EqQ
 rA==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 61147157
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 27 Mar 2020 23:56:58 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk, linux-kernel@vger.kernel.org
Date: Fri, 27 Mar 2020 18:04:22 -0600
Message-Id: <20200328000422.98978-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 30 Mar 2020 14:16:11 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: check to see if the FPU is available
 before using it
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's not safe to just grab the FPU willy nilly without first checking to
see if it's available. This patch adds the usual call to may_use_simd()
and falls back to boring memcpy if it's not available.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 drivers/gpu/drm/i915/i915_memcpy.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index fdd550405fd3..7c0e022586bc 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -24,6 +24,7 @@
 
 #include <linux/kernel.h>
 #include <asm/fpu/api.h>
+#include <asm/simd.h>
 
 #include "i915_memcpy.h"
 
@@ -38,6 +39,12 @@ static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
 #ifdef CONFIG_AS_MOVNTDQA
 static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 {
+	if (unlikely(!may_use_simd())) {
+		memcpy(dst, src, len);
+		return;
+	}
+
+
 	kernel_fpu_begin();
 
 	while (len >= 4) {
@@ -67,6 +74,11 @@ static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 
 static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
 {
+	if (unlikely(!may_use_simd())) {
+		memcpy(dst, src, len);
+		return;
+	}
+
 	kernel_fpu_begin();
 
 	while (len >= 4) {
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
