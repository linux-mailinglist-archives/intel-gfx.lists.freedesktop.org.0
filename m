Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A08132816
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 14:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEC666E07F;
	Tue,  7 Jan 2020 13:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF066E082;
 Tue,  7 Jan 2020 13:50:51 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 627125F4EBFE2DB72D19;
 Tue,  7 Jan 2020 21:50:45 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 7 Jan 2020
 21:50:39 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <ville.syrjala@linux.intel.com>, <chris@chris-wilson.co.uk>,
 <tvrtko.ursulin@intel.com>, <yuehaibing@huawei.com>, <matthew.auld@intel.com>
Date: Tue, 7 Jan 2020 21:50:14 +0800
Message-ID: <20200107135014.36472-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
Subject: [Intel-gfx] [PATCH -next] drm/i915: Add missing include file
 <linux/math64.h>
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix build error:
./drivers/gpu/drm/i915/selftests/i915_random.h: In function i915_prandom_u32_max_state:
./drivers/gpu/drm/i915/selftests/i915_random.h:48:23: error:
 implicit declaration of function mul_u32_u32; did you mean mul_u64_u32_div? [-Werror=implicit-function-declaration]
  return upper_32_bits(mul_u32_u32(prandom_u32_state(state), ep_ro));

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 7ce5b6850b47 ("drm/i915/selftests: Use mul_u32_u32() for 32b x 32b -> 64b result")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/gpu/drm/i915/selftests/i915_random.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_random.h b/drivers/gpu/drm/i915/selftests/i915_random.h
index 35cc69a..f650cfb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_random.h
+++ b/drivers/gpu/drm/i915/selftests/i915_random.h
@@ -26,6 +26,7 @@
 #define __I915_SELFTESTS_RANDOM_H__
 
 #include <linux/random.h>
+#include <linux/math64.h>
 
 #include "../i915_selftest.h"
 
-- 
2.7.4


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
