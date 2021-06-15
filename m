Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE043A8338
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE3C6E32F;
	Tue, 15 Jun 2021 14:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-m121144.qiye.163.com (mail-m121144.qiye.163.com
 [115.236.121.144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA40389A8B;
 Tue, 15 Jun 2021 11:35:33 +0000 (UTC)
DKIM-Signature: a=rsa-sha256;
 b=LCMgXEXCnH8bunLOeWTLK80R8+e2+H+pe0HMAbAqTSsiRAnsmVv0ZpCgIt2mNVruTOzsOp35ctWxDLOhffgc0v9W0vUhivb2SYrO2Llmr57uBpgsm3rnGrOMUbVoDEODciyHGzFNt4SOzyU8AxdqrPnx/p5r/hJWiTeSOIeYcCw=;
 s=default; c=relaxed/relaxed; d=vivo.com; v=1;
 bh=F8L2Jk4gNuieXDSNGB0VS1LdlVC21RK9z8gbYlLG0oA=;
 h=date:mime-version:subject:message-id:from;
Received: from Wanjb.localdomain (unknown [36.152.145.182])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 69B5DAC03EA;
 Tue, 15 Jun 2021 19:35:29 +0800 (CST)
From: Wan Jiabing <wanjiabing@vivo.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, CQ Tang <cq.tang@intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Tue, 15 Jun 2021 19:35:20 +0800
Message-Id: <20210615113522.6867-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGR1OTVYfTUtDSkJDT01NThlVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
 hKTFVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxw6Kzo6Qj8LHUhWI00wVjYR
 HChPCUhVSlVKTUlITE5NQkhLSk5LVTMWGhIXVQwaFRESGhkSFRw7DRINFFUYFBZFWVdZEgtZQVlI
 TVVKTklVSk9OVUpDSVlXWQgBWUFJT0lNNwY+
X-HM-Tid: 0a7a0f747b26b039kuuu69b5dac03ea
X-Mailman-Approved-At: Tue, 15 Jun 2021 14:50:28 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Remove duplicate include of
 intel_region_lmem.h
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
Cc: Wan Jiabing <wanjiabing@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the following checkinclude.pl warning:
drivers/gpu/drm/i915/gt/intel_region_lmem.c
8	#include "intel_region_lmem.h"
     12	#include "intel_region_lmem.h"

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f7366b054f8e..119eeec98837 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -9,7 +9,6 @@
 #include "intel_region_ttm.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
-#include "intel_region_lmem.h"
 
 static int init_fake_lmem_bar(struct intel_memory_region *mem)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
