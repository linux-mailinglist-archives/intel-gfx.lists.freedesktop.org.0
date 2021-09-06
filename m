Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E5E401556
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 05:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4406789A86;
	Mon,  6 Sep 2021 03:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A7D89A77
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 03:51:08 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-0Ee9AjalMZWlZwzxbN0TsQ-1; Sun, 05 Sep 2021 23:44:22 -0400
X-MC-Unique: 0Ee9AjalMZWlZwzxbN0TsQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDE8118BA280;
 Mon,  6 Sep 2021 03:44:21 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A1065D9DE;
 Mon,  6 Sep 2021 03:44:18 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Mon,  6 Sep 2021 13:43:53 +1000
Message-Id: <20210906034356.2946530-8-airlied@gmail.com>
In-Reply-To: <20210906034356.2946530-1-airlied@gmail.com>
References: <20210906034356.2946530-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/display: move pps_mmio_base to
 display struct
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

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 6 +++---
 drivers/gpu/drm/i915/i915_drv.h          | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i91=
5/display/intel_pps.c
index a36ec4a818ff..857f3da80e26 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1402,9 +1402,9 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private=
 *dev_priv)
 void intel_pps_setup(struct drm_i915_private *i915)
 {
 =09if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-=09=09i915->pps_mmio_base =3D PCH_PPS_BASE;
+=09=09i915->display.pps_mmio_base =3D PCH_PPS_BASE;
 =09else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-=09=09i915->pps_mmio_base =3D VLV_PPS_BASE;
+=09=09i915->display.pps_mmio_base =3D VLV_PPS_BASE;
 =09else
-=09=09i915->pps_mmio_base =3D PPS_BASE;
+=09=09i915->display.pps_mmio_base =3D PPS_BASE;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 2d4cac666de9..4194a2042abf 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -857,6 +857,8 @@ struct drm_i915_display {
 =09/* MMIO base address for MIPI regs */
 =09u32 mipi_mmio_base;
=20
+=09u32 pps_mmio_base;
+
 =09struct intel_gmbus gmbus[GMBUS_NUM_PINS];
=20
 =09/** gmbus_mutex protects against concurrent usage of the single hw gmbu=
s
@@ -915,8 +917,6 @@ struct drm_i915_private {
=20
 =09struct intel_wopcm wopcm;
=20
-=09u32 pps_mmio_base;
-
 =09struct pci_dev *bridge_dev;
=20
 =09struct rb_root uabi_engines;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_re=
g.h
index 948949c15396..7afb6aa554c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5166,7 +5166,7 @@ enum {
 #define VLV_PPS_BASE=09=09=09(VLV_DISPLAY_BASE + PPS_BASE)
 #define PCH_PPS_BASE=09=09=090xC7200
=20
-#define _MMIO_PPS(pps_idx, reg)=09=09_MMIO(dev_priv->pps_mmio_base -=09\
+#define _MMIO_PPS(pps_idx, reg)=09=09_MMIO(dev_priv->display.pps_mmio_base=
 -=09\
 =09=09=09=09=09      PPS_BASE + (reg) +=09\
 =09=09=09=09=09      (pps_idx) * 0x100)
=20
--=20
2.31.1

