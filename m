Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4196631C94C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 12:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43CAB89DA7;
	Tue, 16 Feb 2021 11:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1001 seconds by postgrey-1.36 at gabe;
 Mon, 15 Feb 2021 11:49:12 UTC
Received: from m12-13.163.com (m12-13.163.com [220.181.12.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F4F6E10A
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 11:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=jqOKNqjixeHymtVGiT
 /YXCDtkOtiKO4vy73LiPAvZ6U=; b=e51yYAzJFzAmwdTbuQCyKxxzDg1nWOovZ8
 JSvx8dWFN75kxO/nbNE6DTdReeDO0DlmPu+2/7ttFlm28cSq8nDyllj1Qm7ohmsD
 BqiK54UknLBENQpyb2njUYr7e9cB8VGZG3UiiaU33TmreNzzh1AariSFHLyNY646
 Zc3ArneCM=
Received: from localhost.localdomain (unknown [125.70.196.55])
 by smtp9 (Coremail) with SMTP id DcCowABHW3tdWypgPnp0fQ--.17946S2;
 Mon, 15 Feb 2021 19:30:46 +0800 (CST)
From: Chen Lin <chen45464546@163.com>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Mon, 15 Feb 2021 19:30:19 +0800
Message-Id: <1613388619-3276-1-git-send-email-chen45464546@163.com>
X-Mailer: git-send-email 1.7.9.5
X-CM-TRANSID: DcCowABHW3tdWypgPnp0fQ--.17946S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF4UCFy5CFy7CFW5ur4DJwb_yoW3Arg_Gr
 1UZrZrWrWUZFsI9a43W398XFyYyr1Uuay8Z3WSvas3Jas2y3s0yrW2qFyUZFn7WFW7JF9I
 q3WDWFsYyrZrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0bTmDUUUUU==
X-Originating-IP: [125.70.196.55]
X-CM-SenderInfo: hfkh0kqvuwkkiuw6il2tof0z/1tbiygY6nlQHLJC4DQAAsy
X-Mailman-Approved-At: Tue, 16 Feb 2021 11:04:13 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unused function pointer
 typedef long_pulse_detect_func
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
 dri-devel@lists.freedesktop.org, Chen Lin <chen.lin5@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chen Lin <chen.lin5@zte.com.cn>

Remove the 'long_pulse_detect_func' typedef as it is not used.

Signed-off-by: Chen Lin <chen.lin5@zte.com.cn>
---
 drivers/gpu/drm/i915/i915_irq.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 6cdb052..c294ac6 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -78,7 +78,6 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
-typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
 typedef u32 (*hotplug_enables_func)(struct drm_i915_private *i915,
 				    enum hpd_pin pin);
 
-- 
1.7.9.5


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
