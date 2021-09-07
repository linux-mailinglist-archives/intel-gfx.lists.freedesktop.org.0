Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA8C402444
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA3F89D4F;
	Tue,  7 Sep 2021 07:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008C889D4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:48 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-8alPqkqsPTWjgnHvF2GsgQ-1; Tue, 07 Sep 2021 03:26:39 -0400
X-MC-Unique: 8alPqkqsPTWjgnHvF2GsgQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F6896C500;
 Tue,  7 Sep 2021 07:26:39 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BDBB760936;
 Tue,  7 Sep 2021 07:26:37 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:47 +1000
Message-Id: <20210907072549.2962226-24-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 23/25] drm/i915/display: move fdi_rx_config into
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
 drivers/gpu/drm/i915/display/intel_crt.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h          | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i91=
5/display/intel_crt.c
index 97a274f0a38d..5caa4e2c6b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1111,7 +1111,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv=
)
 =09=09u32 fdi_config =3D FDI_RX_POLARITY_REVERSED_LPT |
 =09=09=09=09 FDI_RX_LINK_REVERSAL_OVERRIDE;
=20
-=09=09dev_priv->fdi_rx_config =3D intel_de_read(dev_priv,
+=09=09dev_priv->display->fdi_rx_config =3D intel_de_read(dev_priv,
 =09=09=09=09=09=09=09FDI_RX_CTL(PIPE_A)) & fdi_config;
 =09}
=20
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i91=
5/display/intel_fdi.c
index fc92c7f5d4c9..4f018021d115 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -683,7 +683,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 =09=09       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_R=
X_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
=20
 =09/* Enable the PCH Receiver FDI PLL */
-=09rx_ctl_val =3D dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
+=09rx_ctl_val =3D dev_priv->display->fdi_rx_config | FDI_RX_ENHANCE_FRAME_=
ENABLE |
 =09=09     FDI_RX_PLL_ENABLE |
 =09=09     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 =09intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index c73140ccdb44..248fe12aa62d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -965,6 +965,8 @@ struct drm_i915_display {
 =09=09=09int ssc;
 =09=09} ref_clks;
 =09} dpll;
+
+=09u32 fdi_rx_config;
 };
=20
 struct drm_i915_private {
@@ -1102,8 +1104,6 @@ struct drm_i915_private {
=20
 =09struct drm_i915_gem_object *vlv_pctx;
=20
-=09u32 fdi_rx_config;
-
 =09u32 suspend_count;
 =09bool power_domains_suspended;
 =09struct i915_suspend_saved_registers regfile;
--=20
2.31.1

