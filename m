Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E129E4031E0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03AF6E0EF;
	Wed,  8 Sep 2021 00:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32CD6E0EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:03 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-C49tt96cPnysotNTQqfJlw-1; Tue, 07 Sep 2021 20:39:59 -0400
X-MC-Unique: C49tt96cPnysotNTQqfJlw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E78A5188;
 Wed,  8 Sep 2021 00:39:58 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD03660C7F;
 Wed,  8 Sep 2021 00:39:56 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:26 +1000
Message-Id: <20210908003944.2972024-4-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 03/21] drm/i915/wm: move the update watermark
 wrapper to display side.
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

A vague goal is to have the vfunc table be the api between
wm and display, not having direction function calls cross
the boundary.

This aligns the legacy update_wm with the newer vfuncs.

The comment probably needs to live somewhere else, it seems
like it should live in the pm side though not the display side,
but I brought it along for the ride.
---
 drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.c              | 39 -------------------
 drivers/gpu/drm/i915/intel_pm.h              |  1 -
 3 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index d95283bf2631..b495371c1889 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -125,6 +125,46 @@ static void ilk_pfit_enable(const struct intel_crtc_st=
ate *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 =09=09=09=09=09 struct drm_modeset_acquire_ctx *ctx);
=20
+
+/**
+ * intel_update_watermarks - update FIFO watermark values based on current=
 modes
+ * @crtc: the #intel_crtc on which to compute the WM
+ *
+ * Calculate watermark values for the various WM regs based on current mod=
e
+ * and plane configuration.
+ *
+ * There are several cases to deal with here:
+ *   - normal (i.e. non-self-refresh)
+ *   - self-refresh (SR) mode
+ *   - lines are large relative to FIFO size (buffer can hold up to 2)
+ *   - lines are small relative to FIFO size (buffer can hold more than 2
+ *     lines), so need to account for TLB latency
+ *
+ *   The normal calculation is:
+ *     watermark =3D dotclock * bytes per pixel * latency
+ *   where latency is platform & configuration dependent (we assume pessim=
al
+ *   values here).
+ *
+ *   The SR calculation is:
+ *     watermark =3D (trunc(latency/line time)+1) * surface width *
+ *       bytes per pixel
+ *   where
+ *     line time =3D htotal / dotclock
+ *     surface width =3D hdisplay for normal plane and 64 for cursor
+ *   and latency is assumed to be high, as above.
+ *
+ * The final value programmed to the register should always be rounded up,
+ * and include an extra 2 entries to account for clock crossings.
+ *
+ * We don't use the sprite, so we can ignore that.  And on Crestline we ha=
ve
+ * to set the non-SR watermarks to 8.
+ */
+static void intel_update_watermarks(struct drm_i915_private *dev_priv)
+{
+=09if (dev_priv->display.update_wm)
+=09=09dev_priv->display.update_wm(dev_priv);
+}
+
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c
index 406baa49e6ad..4054c6f7a2f9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7132,45 +7132,6 @@ void ilk_wm_get_hw_state(struct drm_i915_private *de=
v_priv)
 =09=09!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_D=
IS);
 }
=20
-/**
- * intel_update_watermarks - update FIFO watermark values based on current=
 modes
- * @crtc: the #intel_crtc on which to compute the WM
- *
- * Calculate watermark values for the various WM regs based on current mod=
e
- * and plane configuration.
- *
- * There are several cases to deal with here:
- *   - normal (i.e. non-self-refresh)
- *   - self-refresh (SR) mode
- *   - lines are large relative to FIFO size (buffer can hold up to 2)
- *   - lines are small relative to FIFO size (buffer can hold more than 2
- *     lines), so need to account for TLB latency
- *
- *   The normal calculation is:
- *     watermark =3D dotclock * bytes per pixel * latency
- *   where latency is platform & configuration dependent (we assume pessim=
al
- *   values here).
- *
- *   The SR calculation is:
- *     watermark =3D (trunc(latency/line time)+1) * surface width *
- *       bytes per pixel
- *   where
- *     line time =3D htotal / dotclock
- *     surface width =3D hdisplay for normal plane and 64 for cursor
- *   and latency is assumed to be high, as above.
- *
- * The final value programmed to the register should always be rounded up,
- * and include an extra 2 entries to account for clock crossings.
- *
- * We don't use the sprite, so we can ignore that.  And on Crestline we ha=
ve
- * to set the non-SR watermarks to 8.
- */
-void intel_update_watermarks(struct drm_i915_private *dev_priv)
-{
-=09if (dev_priv->display.update_wm)
-=09=09dev_priv->display.update_wm(dev_priv);
-}
-
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
 {
 =09u32 val;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_p=
m.h
index 99bce0b4f5fb..990cdcaf85ce 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -29,7 +29,6 @@ struct skl_wm_level;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
-void intel_update_watermarks(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
--=20
2.31.1

