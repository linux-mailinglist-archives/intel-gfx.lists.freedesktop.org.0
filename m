Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4F497C50
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC48D10E14B;
	Mon, 24 Jan 2022 09:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFCE610E14B;
 Mon, 24 Jan 2022 09:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643017470; x=1674553470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Uq9km/pUGOMPoh2yEdRQyliJEvvPBEktYmFlgcV5ndo=;
 b=bx3zDUvJrq77HQrrK0hrqwEz1t0kposOHYv3zzNmIAvafbE4Hth/VDYu
 WgmgZweYijAtW7Vt9BgE9V2B7wqlK4ZahaFnbBKp/GhYh70XTyUYPf1Ro
 zIgi/MHO+UN5qdTdXY+3ZhMEcOA4zs2Rara2Y7DvZl2TE2CVqdXDoZvHs
 6MTYNT5U3rr8yIJS6MG+0jyxxbUgrJXuFx2523/zyh46z6Gu7J+inMO95
 6rCijymqyUIUuYlm/y6UiOeWM7QJiT8KGPTFtGoHMJANejEF82U5kwM09
 Q6QTyyIetrAWKqj7beWUQ9Mv4Uk/9zNZzeqfObCyu5fZc5AQlrwXk3h40 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="243603788"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="243603788"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:44:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="519881632"
Received: from mtarral-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.51.157])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:44:25 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Mon, 24 Jan 2022 11:44:18 +0200
Message-Id: <20220124094418.2661-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: fix header file inclusion for
 might_alloc()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace "linux/slab.h" with "linux/sched/mm.h" header inclusion
as the first is not required, while the second, if not included,
prodouces the following error:

drivers/gpu/drm/i915/i915_vma_resource.c: In function ‘i915_vma_resource_bind_dep_await’:
drivers/gpu/drm/i915/i915_vma_resource.c:381:9: error: implicit declaration of function ‘might_alloc’; did you mean ‘might_lock’? [-Werror=implicit-function-declaration]
  381 |         might_alloc(gfp);
      |         ^~~~~~~~~~~
      |         might_lock

Fixes: 2f6b90da9192 ("drm/i915: Use vma resources for async unbinding")
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
Hi,

v3: fixed a typo in the commit log (prduces/produces). (Thanks
    Thomas Zimmermann)

v2: added the 'Fixes' tag (I think I got the right commit) and
    Thomas Hellström r-b.

Andi

 drivers/gpu/drm/i915/i915_vma_resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index 1f41c0c699eb..bbb0ff14272f 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -4,7 +4,7 @@
  */
 
 #include <linux/interval_tree_generic.h>
-#include <linux/slab.h>
+#include <linux/sched/mm.h>
 
 #include "i915_sw_fence.h"
 #include "i915_vma_resource.h"
-- 
2.34.1

