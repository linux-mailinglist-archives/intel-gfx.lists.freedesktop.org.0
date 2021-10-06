Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD944236EA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 06:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F64B6E4E3;
	Wed,  6 Oct 2021 04:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com (unknown [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC956E4E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 04:20:05 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507--2NQlfpeNH2XOhuDOm1A2g-1; Wed, 06 Oct 2021 00:19:53 -0400
X-MC-Unique: -2NQlfpeNH2XOhuDOm1A2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF2F9362F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 04:19:52 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D6FAA5C1A1;
 Wed,  6 Oct 2021 04:19:51 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
Date: Wed,  6 Oct 2021 14:19:48 +1000
Message-Id: <20211006041948.2735798-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH] drm/i915/irq: don't use gt ptr for no reason.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Neither of these functions want the gt at all, just pass regs
and i915.

Just noticed in passing.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_ir=
q.c
index 77680bca46ee..67e3ac07f07d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2652,9 +2652,8 @@ static irqreturn_t gen8_irq_handler(int irq, void *ar=
g)
 }
=20
 static u32
-gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
+gen11_gu_misc_irq_ack(void __iomem * const regs, const u32 master_ctl)
 {
-=09void __iomem * const regs =3D gt->uncore->regs;
 =09u32 iir;
=20
 =09if (!(master_ctl & GEN11_GU_MISC_IRQ))
@@ -2668,10 +2667,10 @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u3=
2 master_ctl)
 }
=20
 static void
-gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
+gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 {
 =09if (iir & GEN11_GU_MISC_GSE)
-=09=09intel_opregion_asle_intr(gt->i915);
+=09=09intel_opregion_asle_intr(i915);
 }
=20
 static inline u32 gen11_master_intr_disable(void __iomem * const regs)
@@ -2715,7 +2714,6 @@ static irqreturn_t gen11_irq_handler(int irq, void *a=
rg)
 {
 =09struct drm_i915_private *i915 =3D arg;
 =09void __iomem * const regs =3D i915->uncore.regs;
-=09struct intel_gt *gt =3D &i915->gt;
 =09u32 master_ctl;
 =09u32 gu_misc_iir;
=20
@@ -2729,17 +2727,17 @@ static irqreturn_t gen11_irq_handler(int irq, void =
*arg)
 =09}
=20
 =09/* Find, queue (onto bottom-halves), then clear each source */
-=09gen11_gt_irq_handler(gt, master_ctl);
+=09gen11_gt_irq_handler(&i915->gt, master_ctl);
=20
 =09/* IRQs are synced during runtime_suspend, we don't require a wakeref *=
/
 =09if (master_ctl & GEN11_DISPLAY_IRQ)
 =09=09gen11_display_irq_handler(i915);
=20
-=09gu_misc_iir =3D gen11_gu_misc_irq_ack(gt, master_ctl);
+=09gu_misc_iir =3D gen11_gu_misc_irq_ack(regs, master_ctl);
=20
 =09gen11_master_intr_enable(regs);
=20
-=09gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+=09gen11_gu_misc_irq_handler(i915, gu_misc_iir);
=20
 =09pmu_irq_stats(i915, IRQ_HANDLED);
=20
@@ -2771,7 +2769,6 @@ static inline void dg1_master_intr_enable(void __iome=
m * const regs)
 static irqreturn_t dg1_irq_handler(int irq, void *arg)
 {
 =09struct drm_i915_private * const i915 =3D arg;
-=09struct intel_gt *gt =3D &i915->gt;
 =09void __iomem * const regs =3D i915->uncore.regs;
 =09u32 master_tile_ctl, master_ctl;
 =09u32 gu_misc_iir;
@@ -2795,16 +2792,16 @@ static irqreturn_t dg1_irq_handler(int irq, void *a=
rg)
 =09=09return IRQ_NONE;
 =09}
=20
-=09gen11_gt_irq_handler(gt, master_ctl);
+=09gen11_gt_irq_handler(&i915->gt, master_ctl);
=20
 =09if (master_ctl & GEN11_DISPLAY_IRQ)
 =09=09gen11_display_irq_handler(i915);
=20
-=09gu_misc_iir =3D gen11_gu_misc_irq_ack(gt, master_ctl);
+=09gu_misc_iir =3D gen11_gu_misc_irq_ack(regs, master_ctl);
=20
 =09dg1_master_intr_enable(regs);
=20
-=09gen11_gu_misc_irq_handler(gt, gu_misc_iir);
+=09gen11_gu_misc_irq_handler(i915, gu_misc_iir);
=20
 =09pmu_irq_stats(i915, IRQ_HANDLED);
=20
--=20
2.25.4

