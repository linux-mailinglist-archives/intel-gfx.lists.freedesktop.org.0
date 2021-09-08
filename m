Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD97403375
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 06:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD0C6E10C;
	Wed,  8 Sep 2021 04:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A216E10B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 04:45:39 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-T3oAqp9gOwip4D_ZIeRrxw-1; Wed, 08 Sep 2021 00:45:35 -0400
X-MC-Unique: T3oAqp9gOwip4D_ZIeRrxw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F9541006AA3;
 Wed,  8 Sep 2021 04:45:35 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BC55660938;
 Wed,  8 Sep 2021 04:45:33 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 14:45:27 +1000
Message-Id: <20210908044528.2976010-2-airlied@gmail.com>
In-Reply-To: <20210908044528.2976010-1-airlied@gmail.com>
References: <20210908044528.2976010-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/uncore: split the fw get function
 into separate vfunc
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

constify it while here. drop the put function since it was never
overloaded and always has done the same thing, no point in
indirecting it for show.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 62 +++++++++++++++--------------
 drivers/gpu/drm/i915/intel_uncore.h |  7 ++--
 2 files changed, 36 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/int=
el_uncore.c
index 6b38bc2811c1..d0bbfc320604 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -396,7 +396,7 @@ intel_uncore_fw_release_timer(struct hrtimer *timer)
=20
 =09GEM_BUG_ON(!domain->wake_count);
 =09if (--domain->wake_count =3D=3D 0)
-=09=09uncore->funcs.force_wake_put(uncore, domain->mask);
+=09=09fw_domains_put(uncore, domain->mask);
=20
 =09spin_unlock_irqrestore(&uncore->lock, irqflags);
=20
@@ -454,7 +454,7 @@ intel_uncore_forcewake_reset(struct intel_uncore *uncor=
e)
=20
 =09fw =3D uncore->fw_domains_active;
 =09if (fw)
-=09=09uncore->funcs.force_wake_put(uncore, fw);
+=09=09fw_domains_put(uncore, fw);
=20
 =09fw_domains_reset(uncore, uncore->fw_domains);
 =09assert_forcewakes_inactive(uncore);
@@ -562,7 +562,7 @@ static void forcewake_early_sanitize(struct intel_uncor=
e *uncore,
 =09intel_uncore_forcewake_reset(uncore);
 =09if (restore_forcewake) {
 =09=09spin_lock_irq(&uncore->lock);
-=09=09uncore->funcs.force_wake_get(uncore, restore_forcewake);
+=09=09uncore->fw_get_funcs->force_wake_get(uncore, restore_forcewake);
=20
 =09=09if (intel_uncore_has_fifo(uncore))
 =09=09=09uncore->fifo_count =3D fifo_free_entries(uncore);
@@ -623,7 +623,7 @@ static void __intel_uncore_forcewake_get(struct intel_u=
ncore *uncore,
 =09}
=20
 =09if (fw_domains)
-=09=09uncore->funcs.force_wake_get(uncore, fw_domains);
+=09=09uncore->fw_get_funcs->force_wake_get(uncore, fw_domains);
 }
=20
 /**
@@ -644,7 +644,7 @@ void intel_uncore_forcewake_get(struct intel_uncore *un=
core,
 {
 =09unsigned long irqflags;
=20
-=09if (!uncore->funcs.force_wake_get)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09assert_rpm_wakelock_held(uncore->rpm);
@@ -711,7 +711,7 @@ void intel_uncore_forcewake_get__locked(struct intel_un=
core *uncore,
 {
 =09lockdep_assert_held(&uncore->lock);
=20
-=09if (!uncore->funcs.force_wake_get)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09__intel_uncore_forcewake_get(uncore, fw_domains);
@@ -733,7 +733,7 @@ static void __intel_uncore_forcewake_put(struct intel_u=
ncore *uncore,
 =09=09=09continue;
 =09=09}
=20
-=09=09uncore->funcs.force_wake_put(uncore, domain->mask);
+=09=09fw_domains_put(uncore, domain->mask);
 =09}
 }
=20
@@ -750,7 +750,7 @@ void intel_uncore_forcewake_put(struct intel_uncore *un=
core,
 {
 =09unsigned long irqflags;
=20
-=09if (!uncore->funcs.force_wake_put)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09spin_lock_irqsave(&uncore->lock, irqflags);
@@ -769,7 +769,7 @@ void intel_uncore_forcewake_flush(struct intel_uncore *=
uncore,
 =09struct intel_uncore_forcewake_domain *domain;
 =09unsigned int tmp;
=20
-=09if (!uncore->funcs.force_wake_put)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09fw_domains &=3D uncore->fw_domains;
@@ -793,7 +793,7 @@ void intel_uncore_forcewake_put__locked(struct intel_un=
core *uncore,
 {
 =09lockdep_assert_held(&uncore->lock);
=20
-=09if (!uncore->funcs.force_wake_put)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09__intel_uncore_forcewake_put(uncore, fw_domains);
@@ -801,7 +801,7 @@ void intel_uncore_forcewake_put__locked(struct intel_un=
core *uncore,
=20
 void assert_forcewakes_inactive(struct intel_uncore *uncore)
 {
-=09if (!uncore->funcs.force_wake_get)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09drm_WARN(&uncore->i915->drm, uncore->fw_domains_active,
@@ -818,7 +818,7 @@ void assert_forcewakes_active(struct intel_uncore *unco=
re,
 =09if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
 =09=09return;
=20
-=09if (!uncore->funcs.force_wake_get)
+=09if (!uncore->fw_get_funcs)
 =09=09return;
=20
 =09spin_lock_irq(&uncore->lock);
@@ -1605,7 +1605,7 @@ static noinline void ___force_wake_auto(struct intel_=
uncore *uncore,
 =09for_each_fw_domain_masked(domain, fw_domains, uncore, tmp)
 =09=09fw_domain_arm_timer(domain);
=20
-=09uncore->funcs.force_wake_get(uncore, fw_domains);
+=09uncore->fw_get_funcs->force_wake_get(uncore, fw_domains);
 }
=20
 static inline void __force_wake_auto(struct intel_uncore *uncore,
@@ -1866,6 +1866,18 @@ static void intel_uncore_fw_domains_fini(struct inte=
l_uncore *uncore)
 =09=09fw_domain_fini(uncore, d->id);
 }
=20
+static const struct intel_uncore_fw_get uncore_get_fallback =3D {
+=09.force_wake_get =3D fw_domains_get_with_fallback
+};
+
+static const struct intel_uncore_fw_get uncore_get_normal =3D {
+=09.force_wake_get =3D fw_domains_get
+};
+
+static const struct intel_uncore_fw_get uncore_get_thread_status =3D {
+=09.force_wake_get =3D fw_domains_get_with_thread_status
+};
+
 static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 {
 =09struct drm_i915_private *i915 =3D uncore->i915;
@@ -1881,8 +1893,7 @@ static int intel_uncore_fw_domains_init(struct intel_=
uncore *uncore)
 =09=09intel_engine_mask_t emask =3D INTEL_INFO(i915)->platform_engine_mask=
;
 =09=09int i;
=20
-=09=09uncore->funcs.force_wake_get =3D fw_domains_get_with_fallback;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_fallback;
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 =09=09=09       FORCEWAKE_RENDER_GEN9,
 =09=09=09       FORCEWAKE_ACK_RENDER_GEN9);
@@ -1907,8 +1918,7 @@ static int intel_uncore_fw_domains_init(struct intel_=
uncore *uncore)
 =09=09=09=09       FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(i));
 =09=09}
 =09} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
-=09=09uncore->funcs.force_wake_get =3D fw_domains_get_with_fallback;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_fallback;
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 =09=09=09       FORCEWAKE_RENDER_GEN9,
 =09=09=09       FORCEWAKE_ACK_RENDER_GEN9);
@@ -1918,16 +1928,13 @@ static int intel_uncore_fw_domains_init(struct inte=
l_uncore *uncore)
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
 =09=09=09       FORCEWAKE_MEDIA_GEN9, FORCEWAKE_ACK_MEDIA_GEN9);
 =09} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-=09=09uncore->funcs.force_wake_get =3D fw_domains_get;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_normal;
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 =09=09=09       FORCEWAKE_VLV, FORCEWAKE_ACK_VLV);
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
 =09=09=09       FORCEWAKE_MEDIA_VLV, FORCEWAKE_ACK_MEDIA_VLV);
 =09} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-=09=09uncore->funcs.force_wake_get =3D
-=09=09=09fw_domains_get_with_thread_status;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_thread_status;
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 =09=09=09       FORCEWAKE_MT, FORCEWAKE_ACK_HSW);
 =09} else if (IS_IVYBRIDGE(i915)) {
@@ -1942,9 +1949,7 @@ static int intel_uncore_fw_domains_init(struct intel_=
uncore *uncore)
 =09=09 * (correctly) interpreted by the test below as MT
 =09=09 * forcewake being disabled.
 =09=09 */
-=09=09uncore->funcs.force_wake_get =3D
-=09=09=09fw_domains_get_with_thread_status;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_thread_status;
=20
 =09=09/* We need to init first for ECOBUS access and then
 =09=09 * determine later if we want to reinit, in case of MT access is
@@ -1975,9 +1980,7 @@ static int intel_uncore_fw_domains_init(struct intel_=
uncore *uncore)
 =09=09=09=09       FORCEWAKE, FORCEWAKE_ACK);
 =09=09}
 =09} else if (GRAPHICS_VER(i915) =3D=3D 6) {
-=09=09uncore->funcs.force_wake_get =3D
-=09=09=09fw_domains_get_with_thread_status;
-=09=09uncore->funcs.force_wake_put =3D fw_domains_put;
+=09=09uncore->fw_get_funcs =3D &uncore_get_thread_status;
 =09=09fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 =09=09=09       FORCEWAKE, FORCEWAKE_ACK);
 =09}
@@ -2186,8 +2189,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncor=
e)
 =09}
=20
 =09/* make sure fw funcs are set if and only if we have fw*/
-=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.forc=
e_wake_get);
-=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.forc=
e_wake_put);
+=09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->fw_get_fun=
cs);
 =09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.read=
_fw_domains);
 =09GEM_BUG_ON(intel_uncore_has_forcewake(uncore) !=3D !!uncore->funcs.writ=
e_fw_domains);
=20
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/int=
el_uncore.h
index 3c0b0a8b5250..1a7448f5f16f 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -84,12 +84,12 @@ enum forcewake_domains {
 =09FORCEWAKE_ALL =3D BIT(FW_DOMAIN_ID_COUNT) - 1,
 };
=20
-struct intel_uncore_funcs {
+struct intel_uncore_fw_get {
 =09void (*force_wake_get)(struct intel_uncore *uncore,
 =09=09=09       enum forcewake_domains domains);
-=09void (*force_wake_put)(struct intel_uncore *uncore,
-=09=09=09       enum forcewake_domains domains);
+};
=20
+struct intel_uncore_funcs {
 =09enum forcewake_domains (*read_fw_domains)(struct intel_uncore *uncore,
 =09=09=09=09=09=09  i915_reg_t r);
 =09enum forcewake_domains (*write_fw_domains)(struct intel_uncore *uncore,
@@ -137,6 +137,7 @@ struct intel_uncore {
 =09unsigned int fw_domains_table_entries;
=20
 =09struct notifier_block pmic_bus_access_nb;
+=09const struct intel_uncore_fw_get *fw_get_funcs;
 =09struct intel_uncore_funcs funcs;
=20
 =09unsigned int fifo_count;
--=20
2.31.1

