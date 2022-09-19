Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4A05BCD2C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AE510E643;
	Mon, 19 Sep 2022 13:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 903 seconds by postgrey-1.36 at gabe;
 Mon, 19 Sep 2022 12:00:11 UTC
Received: from mail-m971.mail.163.com (mail-m971.mail.163.com [123.126.97.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DDC610E60E
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 12:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=8Z6VR
 MVnFiwYg2tgIGNm+G/z7O/NWLomSY9fqDE4nLw=; b=IJdSLJhdafdIdK+vqsH5G
 iiq2yzHI3EPhpCZ0amdDWK4Zb6c03jHtE7ztEniz45L2X9q1/WS7lCsWCgD+D9Tq
 jl4rcEW3FwPfauQV22aY7pJntWMGB1ve2Q3OoDnU47Z/f6Dqs8QCuS1Ph+TwJvZd
 vWXSW+RUWaVSjn63bqDh/0=
Received: from leanderwang-LC2.localdomain (unknown [111.206.145.21])
 by smtp1 (Coremail) with SMTP id GdxpCgCXWq4uVihjKbAUeA--.11366S2;
 Mon, 19 Sep 2022 19:44:46 +0800 (CST)
From: Zheng Wang <zyytlz.wz@163.com>
To: jani.nikula@linux.intel.com
Date: Mon, 19 Sep 2022 19:44:45 +0800
Message-Id: <20220919114445.150200-1-zyytlz.wz@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: GdxpCgCXWq4uVihjKbAUeA--.11366S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxWrWkZw45WF1rZw1UAFWDurg_yoW5Cr47pF
 WUXa1DAFs5A3y2vr4xA3WkZF15AF1fWry8Gr95K3ZayFn8tF1ktFZ8ZFW2gr9I9F97Cr1f
 Ar4UtF47Ca47XaDanT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRsjjPUUUUU=
X-Originating-IP: [111.206.145.21]
X-CM-SenderInfo: h2113zf2oz6qqrwthudrp/1tbiGg6BU1aEC3fV5wAAsa
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:09 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: fix double-free bug in
 split_2MB_gtt_entry
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
Cc: security@kernel.org, alex000young@gmail.com, airlied@linux.ie,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 hackerzheng666@gmail.com, zyytlz.wz@163.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is a double-free security bug in split_2MB_gtt_entry.

Here is a calling chain :
ppgtt_populate_spt->ppgtt_populate_shadow_entry->split_2MB_gtt_entry.

If intel_gvt_dma_map_guest_page failed, it will call
ppgtt_invalidate_spt, which will finally call ppgtt_free_spt and
kfree(spt). But the caller does not notice that, and it will call
ppgtt_free_spt again in error path.

Fix this by only freeing spt in ppgtt_invalidate_spt in good case.

Reported-by: Zheng Wang <hackerzheng666@gmail.com> Zhuorao Yang <alex000young@gmail.com>

Signed-off-by: Zheng Wang <zyytlz.wz@163.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index ce0eb03709c3..550519f0acca 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -959,7 +959,7 @@ static inline int ppgtt_put_spt(struct intel_vgpu_ppgtt_spt *spt)
 	return atomic_dec_return(&spt->refcount);
 }
 
-static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt);
+static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt, int is_error);
 
 static int ppgtt_invalidate_spt_by_shadow_entry(struct intel_vgpu *vgpu,
 		struct intel_gvt_gtt_entry *e)
@@ -995,7 +995,7 @@ static int ppgtt_invalidate_spt_by_shadow_entry(struct intel_vgpu *vgpu,
 				ops->get_pfn(e));
 		return -ENXIO;
 	}
-	return ppgtt_invalidate_spt(s);
+	return ppgtt_invalidate_spt(s, 0);
 }
 
 static inline void ppgtt_invalidate_pte(struct intel_vgpu_ppgtt_spt *spt,
@@ -1016,7 +1016,7 @@ static inline void ppgtt_invalidate_pte(struct intel_vgpu_ppgtt_spt *spt,
 	intel_gvt_dma_unmap_guest_page(vgpu, pfn << PAGE_SHIFT);
 }
 
-static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt)
+static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt, int is_error)
 {
 	struct intel_vgpu *vgpu = spt->vgpu;
 	struct intel_gvt_gtt_entry e;
@@ -1059,9 +1059,11 @@ static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt)
 		}
 	}
 
-	trace_spt_change(spt->vgpu->id, "release", spt,
+	if (!is_error) {
+		trace_spt_change(spt->vgpu->id, "release", spt,
 			 spt->guest_page.gfn, spt->shadow_page.type);
-	ppgtt_free_spt(spt);
+		ppgtt_free_spt(spt);
+	}
 	return 0;
 fail:
 	gvt_vgpu_err("fail: shadow page %p shadow entry 0x%llx type %d\n",
@@ -1215,7 +1217,7 @@ static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
 		ret = intel_gvt_dma_map_guest_page(vgpu, start_gfn + sub_index,
 						   PAGE_SIZE, &dma_addr);
 		if (ret) {
-			ppgtt_invalidate_spt(spt);
+			ppgtt_invalidate_spt(spt, 1);
 			return ret;
 		}
 		sub_se.val64 = se->val64;
@@ -1393,7 +1395,7 @@ static int ppgtt_handle_guest_entry_removal(struct intel_vgpu_ppgtt_spt *spt,
 			ret = -ENXIO;
 			goto fail;
 		}
-		ret = ppgtt_invalidate_spt(s);
+		ret = ppgtt_invalidate_spt(s, 0);
 		if (ret)
 			goto fail;
 	} else {
-- 
2.25.1

