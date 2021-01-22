Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DBD3003F7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 14:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733B96E9F1;
	Fri, 22 Jan 2021 13:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1006 seconds by postgrey-1.36 at gabe;
 Fri, 22 Jan 2021 02:16:05 UTC
Received: from m12-16.163.com (m12-16.163.com [220.181.12.16])
 by gabe.freedesktop.org (Postfix) with SMTP id D24BD89CCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=FUpAD7mi2xl59ZcPW1
 4M9M2HliTKwesJrNAhCSn/9vo=; b=ZMBKAimrzBI5kDL2jdY3K/DOjJ8tNCtJxD
 ai2RcnzVY9tRD7/Nub/O57WOCJVN00fYRjF0T4tBRuaza70Iagx1cntXj0DUBRSB
 RoEoMvLUsd9YstaFzNmS3A7oAtSfTUm3saOMQCiCDN7ebMGvKNzRSFNvGRXQt4S9
 6nXeKiufk=
Received: from localhost.localdomain (unknown [119.3.119.20])
 by smtp12 (Coremail) with SMTP id EMCowAC3GSziMApgmL4iYQ--.52373S4;
 Fri, 22 Jan 2021 09:56:54 +0800 (CST)
From: Pan Bian <bianpan2016@163.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Andi Shyti <andi.shyti@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
Date: Thu, 21 Jan 2021 17:56:40 -0800
Message-Id: <20210122015640.16002-1-bianpan2016@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: EMCowAC3GSziMApgmL4iYQ--.52373S4
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrWUAFyxKrW7KrW5Cw4xXrb_yoWfWrbEg3
 y7Zr97WrWDCFn0vFn8uwsxAFyIkF1rZr4xtw1xta1ftr13Aa1DWFZ7ZFyUXr4xWayUXF9F
 qF1kZFsIvrnrujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbw0etUUUUU==
X-Originating-IP: [119.3.119.20]
X-CM-SenderInfo: held01tdqsiiqw6rljoofrz/1tbiNgYiclWBlvTBgwAAsU
X-Mailman-Approved-At: Fri, 22 Jan 2021 13:18:34 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Fix potential memory leak
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
Cc: Pan Bian <bianpan2016@163.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Object out is not released on path that no VMA instance found. The root
cause is jumping to an unexpected label on the error path.

Fixes: a47e788c2310 ("drm/i915/selftests: Exercise CS TLB invalidation")
Signed-off-by: Pan Bian <bianpan2016@163.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index c53a222e3dec..713770fb2b92 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1880,7 +1880,7 @@ static int igt_cs_tlb(void *arg)
 	vma = i915_vma_instance(out, vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
-		goto out_put_batch;
+		goto out_put_out;
 	}
 
 	err = i915_vma_pin(vma, 0, 0,
-- 
2.17.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
