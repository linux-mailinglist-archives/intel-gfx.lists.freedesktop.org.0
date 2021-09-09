Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31762404398
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCB06E42C;
	Thu,  9 Sep 2021 02:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FD36E42C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 02:34:34 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-d3fkp02CPMSBAXDOJa2akQ-1; Wed, 08 Sep 2021 22:34:30 -0400
X-MC-Unique: d3fkp02CPMSBAXDOJa2akQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19BA51019983;
 Thu,  9 Sep 2021 02:34:29 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8A2BF5D9C6;
 Thu,  9 Sep 2021 02:34:27 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Thu,  9 Sep 2021 12:34:20 +1000
Message-Id: <20210909023420.2988944-3-airlied@gmail.com>
In-Reply-To: <20210909023420.2988944-1-airlied@gmail.com>
References: <20210909023420.2988944-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uncore: constify the register
 vtables.
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

This reworks the uncore function vtable so that it's constant.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 133 +++++++++++++++++-----------
 drivers/gpu/drm/i915/intel_uncore.h |   8 +-
 2 files changed, 83 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/int=
el_uncore.c
index 8652e4221404..e0e7f133f2b9 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1737,32 +1737,24 @@ __vgpu_write(8)
 __vgpu_write(16)
 __vgpu_write(32)
=20
-#define ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, x) \
-do { \
-=09(uncore)->funcs.mmio_writeb =3D x##_write8; \
-=09(uncore)->funcs.mmio_writew =3D x##_write16; \
-=09(uncore)->funcs.mmio_writel =3D x##_write32; \
-} while (0)
-
-#define ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, x) \
-do { \
-=09(uncore)->funcs.mmio_readb =3D x##_read8; \
-=09(uncore)->funcs.mmio_readw =3D x##_read16; \
-=09(uncore)->funcs.mmio_readl =3D x##_read32; \
-=09(uncore)->funcs.mmio_readq =3D x##_read64; \
-} while (0)
-
-#define ASSIGN_WRITE_MMIO_VFUNCS(uncore, x) \
-do { \
-=09ASSIGN_RAW_WRITE_MMIO_VFUNCS((uncore), x); \
-=09(uncore)->funcs.write_fw_domains =3D x##_reg_write_fw_domains; \
-} while (0)
-
-#define ASSIGN_READ_MMIO_VFUNCS(uncore, x) \
-do { \
-=09ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, x); \
-=09(uncore)->funcs.read_fw_domains =3D x##_reg_read_fw_domains; \
-} while (0)
+#define MMIO_RAW_WRITE_VFUNCS(x)     \
+=09.mmio_writeb =3D x##_write8,   \
+=09.mmio_writew =3D x##_write16,  \
+=09.mmio_writel =3D x##_write32
+
+#define MMIO_RAW_READ_VFUNCS(x)=09  \
+=09.mmio_readb =3D x##_read8,  \
+=09.mmio_readw =3D x##_read16, \
+=09.mmio_readl =3D x##_read32, \
+=09.mmio_readq =3D x##_read64
+
+#define MMIO_WRITE_FW_VFUNCS(x)=09=09=09=09\
+=09MMIO_RAW_WRITE_VFUNCS(x),=09=09=09\
+=09.write_fw_domains =3D x##_reg_write_fw_domains
+
+#define MMIO_READ_FW_VFUNCS(x)=09=09=09=09\
+=09MMIO_RAW_READ_VFUNCS(x),=09=09=09\
+=09.read_fw_domains =3D x##_reg_read_fw_domains
=20
 static int __fw_domain_init(struct intel_uncore *uncore,
 =09=09=09    enum forcewake_domain_id domain_id,
@@ -2067,22 +2059,64 @@ void intel_uncore_init_early(struct intel_uncore *u=
ncore,
 =09uncore->debug =3D &i915->mmio_debug;
 }
=20
+static const struct intel_uncore_funcs vgpu_funcs =3D {
+=09MMIO_RAW_WRITE_VFUNCS(vgpu),
+=09MMIO_RAW_READ_VFUNCS(vgpu),
+};
+
+static const struct intel_uncore_funcs gen5_funcs =3D {
+=09MMIO_RAW_WRITE_VFUNCS(gen5),
+=09MMIO_RAW_READ_VFUNCS(gen5),
+};
+
+static const struct intel_uncore_funcs gen2_funcs =3D {
+=09MMIO_RAW_WRITE_VFUNCS(gen2),
+=09MMIO_RAW_READ_VFUNCS(gen2),
+};
+
 static void uncore_raw_init(struct intel_uncore *uncore)
 {
 =09GEM_BUG_ON(intel_uncore_has_forcewake(uncore));
=20
 =09if (intel_vgpu_active(uncore->i915)) {
-=09=09ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, vgpu);
-=09=09ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, vgpu);
+=09=09uncore->funcs =3D &vgpu_funcs;
 =09} else if (GRAPHICS_VER(uncore->i915) =3D=3D 5) {
-=09=09ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen5);
-=09=09ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen5);
+=09=09uncore->funcs =3D &gen5_funcs;
 =09} else {
-=09=09ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, gen2);
-=09=09ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, gen2);
+=09=09uncore->funcs =3D &gen2_funcs;
 =09}
 }
=20
+static const struct intel_uncore_funcs gen12_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(gen12_fwtable),
+=09MMIO_READ_FW_VFUNCS(gen11_fwtable)
+};
+
+static const struct intel_uncore_funcs gen11_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(gen11_fwtable),
+=09MMIO_READ_FW_VFUNCS(gen11_fwtable)
+};
+
+static const struct intel_uncore_funcs fwtable_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(fwtable),
+=09MMIO_READ_FW_VFUNCS(fwtable)
+};
+
+static const struct intel_uncore_funcs gen8_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(gen8),
+=09MMIO_READ_FW_VFUNCS(gen6)
+};
+
+static const struct intel_uncore_funcs vlv_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(gen6),
+=09MMIO_READ_FW_VFUNCS(fwtable)
+};
+
+static const struct intel_uncore_funcs gen6_funcs =3D {
+=09MMIO_WRITE_FW_VFUNCS(gen6),
+=09MMIO_READ_FW_VFUNCS(gen6)
+};
+
 static int uncore_forcewake_init(struct intel_uncore *uncore)
 {
 =09struct drm_i915_private *i915 =3D uncore->i915;
@@ -2097,38 +2131,29 @@ static int uncore_forcewake_init(struct intel_uncor=
e *uncore)
=20
 =09if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 55)) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+=09=09uncore->funcs =3D &gen12_funcs;
 =09} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 50)) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+=09=09uncore->funcs =3D &gen12_funcs;
 =09} else if (GRAPHICS_VER(i915) >=3D 12) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+=09=09uncore->funcs =3D &gen12_funcs;
 =09} else if (GRAPHICS_VER(i915) =3D=3D 11) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+=09=09uncore->funcs =3D &gen11_funcs;
 =09} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+=09=09uncore->funcs =3D &fwtable_funcs;
 =09} else if (IS_CHERRYVIEW(i915)) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __chv_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+=09=09uncore->funcs =3D &fwtable_funcs;
 =09} else if (GRAPHICS_VER(i915) =3D=3D 8) {
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
+=09=09uncore->funcs =3D &gen8_funcs;
 =09} else if (IS_VALLEYVIEW(i915)) {
 =09=09ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+=09=09uncore->funcs =3D &vlv_funcs;
 =09} else if (IS_GRAPHICS_VER(i915, 6, 7)) {
-=09=09ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
-=09=09ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
+=09=09uncore->funcs =3D &gen6_funcs;
 =09}
=20
 =09uncore->pmic_bus_access_nb.notifier_call =3D i915_pmic_bus_access_notif=
ier;
@@ -2171,8 +2196,8 @@ int intel_uncore_init_mmio(struct intel_uncore *uncor=
e)
=20
 =09/* make sure fw funcs are set if and only if we have fw*/
 =09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->fw_get_fun=
cs);
-=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.read=
_fw_domains);
-=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.writ=
e_fw_domains);
+=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs->rea=
d_fw_domains);
+=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs->wri=
te_fw_domains);
=20
 =09if (HAS_FPGA_DBG_UNCLAIMED(i915))
 =09=09uncore->flags |=3D UNCORE_HAS_FPGA_DBG_UNCLAIMED;
@@ -2511,10 +2536,10 @@ intel_uncore_forcewake_for_reg(struct intel_uncore =
*uncore,
 =09=09return 0;
=20
 =09if (op & FW_REG_READ)
-=09=09fw_domains =3D uncore->funcs.read_fw_domains(uncore, reg);
+=09=09fw_domains =3D uncore->funcs->read_fw_domains(uncore, reg);
=20
 =09if (op & FW_REG_WRITE)
-=09=09fw_domains |=3D uncore->funcs.write_fw_domains(uncore, reg);
+=09=09fw_domains |=3D uncore->funcs->write_fw_domains(uncore, reg);
=20
 =09drm_WARN_ON(&uncore->i915->drm, fw_domains & ~uncore->fw_domains);
=20
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/int=
el_uncore.h
index 1950380c0d79..92b4279119d2 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -144,7 +144,7 @@ struct intel_uncore {
=20
 =09struct notifier_block pmic_bus_access_nb;
 =09const struct intel_uncore_fw_get *fw_get_funcs;
-=09struct intel_uncore_funcs funcs;
+=09const struct intel_uncore_funcs *funcs;
=20
 =09unsigned int fifo_count;
=20
@@ -318,14 +318,14 @@ __raw_write(64, q)
 static inline u##x__ intel_uncore_##name__(struct intel_uncore *uncore, \
 =09=09=09=09=09   i915_reg_t reg) \
 { \
-=09return uncore->funcs.mmio_read##s__(uncore, reg, (trace__)); \
+=09return uncore->funcs->mmio_read##s__(uncore, reg, (trace__)); \
 }
=20
 #define __uncore_write(name__, x__, s__, trace__) \
 static inline void intel_uncore_##name__(struct intel_uncore *uncore, \
 =09=09=09=09=09 i915_reg_t reg, u##x__ val) \
 { \
-=09uncore->funcs.mmio_write##s__(uncore, reg, val, (trace__)); \
+=09uncore->funcs->mmio_write##s__(uncore, reg, val, (trace__)); \
 }
=20
 __uncore_read(read8, 8, b, true)
@@ -344,7 +344,7 @@ __uncore_write(write_notrace, 32, l, false)
  * an arbitrary delay between them. This can cause the hardware to
  * act upon the intermediate value, possibly leading to corruption and
  * machine death. For this reason we do not support intel_uncore_write64,
- * or uncore->funcs.mmio_writeq.
+ * or uncore->funcs->mmio_writeq.
  *
  * When reading a 64-bit value as two 32-bit values, the delay may cause
  * the two reads to mismatch, e.g. a timestamp overflowing. Also note that
--=20
2.31.1

