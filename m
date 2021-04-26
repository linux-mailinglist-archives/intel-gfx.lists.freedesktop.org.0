Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77DC36B46D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 16:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41ECF88065;
	Mon, 26 Apr 2021 14:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 471 seconds by postgrey-1.36 at gabe;
 Mon, 26 Apr 2021 12:52:15 UTC
Received: from ustc.edu.cn (email6.ustc.edu.cn [IPv6:2001:da8:d800::8])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAE0E6E077
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 12:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mail.ustc.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
 Message-Id:MIME-Version:Content-Transfer-Encoding; bh=t1M07dmc0X
 SfEa2oDvK22eZQFb4J04a5FzYvFFyBYrs=; b=cDOcSZndW0THeDUdAI8bhVRHMf
 Kdyk1JaB4qEvbBRSpEtn55UjvdOczXF54Smz6bWuIAl/fQk052hShSeNOir11kj6
 pz5905jaJfC7UUgFkyuqoOJk/5CX+LpZIgerJlPpt/+3nk3O6DoTJVZo3I7lmN3Z
 /1um/6XuIQO5pcBS4=
Received: from ubuntu.localdomain (unknown [202.38.69.14])
 by newmailweb.ustc.edu.cn (Coremail) with SMTP id
 LkAmygB3fER+tYZgC8VKAA--.5358S4; 
 Mon, 26 Apr 2021 20:43:42 +0800 (CST)
From: Lv Yunlong <lyl2019@mail.ustc.edu.cn>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 chris@chris-wilson.co.uk
Date: Mon, 26 Apr 2021 05:43:40 -0700
Message-Id: <20210426124340.4238-1-lyl2019@mail.ustc.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: LkAmygB3fER+tYZgC8VKAA--.5358S4
X-Coremail-Antispam: 1UD129KBjvJXoWrurWkXr48tF1fXr48WFy8Xwb_yoW8Jry5pw
 43uFyYvrnYyr12ya13Xa1UZFySy343KrWrGayv9a1v9r13JFy7tr9YyrW8JFyUCr1xJryS
 qF1xCrWfZFy7JaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUBj14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
 6r4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
 0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr
 1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IE
 rcIFxwACI402YVCY1x02628vn2kIc2xKxwCY02Avz4vE14v_Xr1l42xK82IYc2Ij64vIr4
 1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
 67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
 8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAv
 wI8IcIk0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
 AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUhiSQUUUUU=
X-CM-SenderInfo: ho1ojiyrz6zt1loo32lwfovvfxof0/
X-Mailman-Approved-At: Mon, 26 Apr 2021 14:02:18 +0000
Subject: [Intel-gfx] [PATCH] drm/i9i5/gt: Fix a double free in
 gen8_preallocate_top_level_pdp
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
Cc: intel-gfx@lists.freedesktop.org, Lv Yunlong <lyl2019@mail.ustc.edu.cn>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our code analyzer reported a double free bug.

In gen8_preallocate_top_level_pdp, pde and pde->pt.base are allocated
via alloc_pd(vm) with one reference. If pin_pt_dma() failed, pde->pt.base
is freed by i915_gem_object_put() with a reference dropped. Then free_pd
calls free_px() defined in intel_ppgtt.c, which calls i915_gem_object_put()
to put pde->pt.base again.

As pde->pt.base is protected by refcount, so the second put will not free
pde->pt.base actually. But, maybe it is better to remove the first put?

Fixes: 82adf901138cc ("drm/i915/gt: Shrink i915_page_directory's slab bucket")
Signed-off-by: Lv Yunlong <lyl2019@mail.ustc.edu.cn>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 755522ced60d..3ae16945bd43 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -630,7 +630,6 @@ static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
 
 		err = pin_pt_dma(vm, pde->pt.base);
 		if (err) {
-			i915_gem_object_put(pde->pt.base);
 			free_pd(vm, pde);
 			return err;
 		}
-- 
2.25.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
