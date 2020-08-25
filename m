Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AFA252112
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 21:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27A26E985;
	Tue, 25 Aug 2020 19:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9236E977
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 19:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598385065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FoJgAywLSmPncmEOb5Y08Z/vDr6xNQ/ynVpN/BSyS3c=;
 b=JUl6rg0f9rVMZjkexTbS+YkllpvOgvi4k5A9LrdSeVr07oY5lRLLLaj+OPbHik5JJcKRQl
 GJHCY0nYBY2BnS+y/eFSaxeY4qcQI+k/WEYWrw35iQNKFmHm/mz81H4+Hb1GNKeU5ByCbj
 fMFcV2l2AoiTUbU76HyhUl33sNj4Krk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-y2sEQKG4P1OvDJtIB7RaDw-1; Tue, 25 Aug 2020 15:51:03 -0400
X-MC-Unique: y2sEQKG4P1OvDJtIB7RaDw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A199189E62A;
 Tue, 25 Aug 2020 19:51:01 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-120-227.rdu2.redhat.com
 [10.10.120.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 52B425D9D3;
 Tue, 25 Aug 2020 19:50:59 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Tue, 25 Aug 2020 15:50:13 -0400
Message-Id: <20200825195027.74681-7-lyude@redhat.com>
In-Reply-To: <20200825195027.74681-1-lyude@redhat.com>
References: <20200825195027.74681-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-gfx] [RFC v4 06/20] drm/nouveau/kms: Search for encoders'
 connectors properly
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 James Jones <jajones@nvidia.com>, YueHaibing <yuehaibing@huawei.com>,
 open list <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.de>,
 Ben Skeggs <bskeggs@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Nirmoy Das <nirmoy.aiemd@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While the way we find the associated connector for an encoder is just
fine for legacy modesetting, it's not correct for nv50+ since that uses
atomic modesetting. For reference, see the drm_encoder kdocs.

Fix this by removing nouveau_encoder_connector_get(), and replacing it
with nv04_encoder_get_connector(), nv50_outp_get_old_connector(), and
nv50_outp_get_new_connector().

v2:
* Don't line-wrap for_each_(old|new)_connector_in_state in
  nv50_outp_get_(old|new)_connector() - sravn
v3:
* Fix potential uninitialized usage of nv_connector (needs to be
  initialized to NULL at the start). Thanks kernel test robot!
v4:
* Actually fix uninitialized nv_connector usage in
  nv50_audio_component_get_eld(). The previous fix wouldn't have worked
  since we would have started out with nv_connector == NULL, but
  wouldn't clear it after a single drm_for_each_encoder() iteration.
  Thanks again Kernel bot!

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Ben Skeggs <bskeggs@redhat.com>
---
 drivers/gpu/drm/nouveau/dispnv04/dac.c      |  2 +-
 drivers/gpu/drm/nouveau/dispnv04/dfp.c      |  7 +-
 drivers/gpu/drm/nouveau/dispnv04/disp.c     | 18 +++++
 drivers/gpu/drm/nouveau/dispnv04/disp.h     |  4 +
 drivers/gpu/drm/nouveau/dispnv04/tvnv04.c   |  2 +-
 drivers/gpu/drm/nouveau/dispnv04/tvnv17.c   |  2 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c     | 88 +++++++++++++++++----
 drivers/gpu/drm/nouveau/nouveau_connector.c | 14 ----
 drivers/gpu/drm/nouveau/nouveau_encoder.h   |  6 +-
 9 files changed, 105 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv04/dac.c b/drivers/gpu/drm/nouveau/dispnv04/dac.c
index ffdd447d87068..22d10f3285597 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/dac.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/dac.c
@@ -419,7 +419,7 @@ static void nv04_dac_commit(struct drm_encoder *encoder)
 	helper->dpms(encoder, DRM_MODE_DPMS_ON);
 
 	NV_DEBUG(drm, "Output %s is running on CRTC %d using output %c\n",
-		 nouveau_encoder_connector_get(nv_encoder)->base.name,
+		 nv04_encoder_get_connector(nv_encoder)->base.name,
 		 nv_crtc->index, '@' + ffs(nv_encoder->dcb->or));
 }
 
diff --git a/drivers/gpu/drm/nouveau/dispnv04/dfp.c b/drivers/gpu/drm/nouveau/dispnv04/dfp.c
index f9f4482c79b54..42687ea2a4ca3 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/dfp.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/dfp.c
@@ -184,7 +184,8 @@ static bool nv04_dfp_mode_fixup(struct drm_encoder *encoder,
 				struct drm_display_mode *adjusted_mode)
 {
 	struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
-	struct nouveau_connector *nv_connector = nouveau_encoder_connector_get(nv_encoder);
+	struct nouveau_connector *nv_connector =
+		nv04_encoder_get_connector(nv_encoder);
 
 	if (!nv_connector->native_mode ||
 	    nv_connector->scaling_mode == DRM_MODE_SCALE_NONE ||
@@ -478,7 +479,7 @@ static void nv04_dfp_commit(struct drm_encoder *encoder)
 	helper->dpms(encoder, DRM_MODE_DPMS_ON);
 
 	NV_DEBUG(drm, "Output %s is running on CRTC %d using output %c\n",
-		 nouveau_encoder_connector_get(nv_encoder)->base.name,
+		 nv04_encoder_get_connector(nv_encoder)->base.name,
 		 nv_crtc->index, '@' + ffs(nv_encoder->dcb->or));
 }
 
@@ -591,7 +592,7 @@ static void nv04_dfp_restore(struct drm_encoder *encoder)
 
 	if (nv_encoder->dcb->type == DCB_OUTPUT_LVDS) {
 		struct nouveau_connector *connector =
-			nouveau_encoder_connector_get(nv_encoder);
+			nv04_encoder_get_connector(nv_encoder);
 
 		if (connector && connector->native_mode)
 			call_lvds_script(dev, nv_encoder->dcb, head,
diff --git a/drivers/gpu/drm/nouveau/dispnv04/disp.c b/drivers/gpu/drm/nouveau/dispnv04/disp.c
index 900ab69df7e8f..3f046b917c85c 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/disp.c
@@ -35,6 +35,24 @@
 
 #include <nvif/if0004.h>
 
+struct nouveau_connector *
+nv04_encoder_get_connector(struct nouveau_encoder *encoder)
+{
+	struct drm_device *dev = to_drm_encoder(encoder)->dev;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct nouveau_connector *nv_connector = NULL;
+
+	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		if (connector->encoder == to_drm_encoder(encoder))
+			nv_connector = nouveau_connector(connector);
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return nv_connector;
+}
+
 static void
 nv04_display_fini(struct drm_device *dev, bool suspend)
 {
diff --git a/drivers/gpu/drm/nouveau/dispnv04/disp.h b/drivers/gpu/drm/nouveau/dispnv04/disp.h
index 495d3284e8766..5ace5e906949a 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/disp.h
+++ b/drivers/gpu/drm/nouveau/dispnv04/disp.h
@@ -6,6 +6,8 @@
 
 #include "nouveau_display.h"
 
+struct nouveau_encoder;
+
 enum nv04_fp_display_regs {
 	FP_DISPLAY_END,
 	FP_TOTAL,
@@ -93,6 +95,8 @@ nv04_display(struct drm_device *dev)
 
 /* nv04_display.c */
 int nv04_display_create(struct drm_device *);
+struct nouveau_connector *
+nv04_encoder_get_connector(struct nouveau_encoder *nv_encoder);
 
 /* nv04_crtc.c */
 int nv04_crtc_create(struct drm_device *, int index);
diff --git a/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c b/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c
index b701a4d8fe760..3ba7b59580d59 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c
@@ -172,7 +172,7 @@ static void nv04_tv_commit(struct drm_encoder *encoder)
 	helper->dpms(encoder, DRM_MODE_DPMS_ON);
 
 	NV_DEBUG(drm, "Output %s is running on CRTC %d using output %c\n",
-		 nouveau_encoder_connector_get(nv_encoder)->base.name,
+		 nv04_encoder_get_connector(nv_encoder)->base.name,
 		 nv_crtc->index, '@' + ffs(nv_encoder->dcb->or));
 }
 
diff --git a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
index 3a9489ed6544f..be28e7bd74903 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
@@ -599,7 +599,7 @@ static void nv17_tv_commit(struct drm_encoder *encoder)
 	helper->dpms(encoder, DRM_MODE_DPMS_ON);
 
 	NV_INFO(drm, "Output %s is running on CRTC %d using output %c\n",
-		nouveau_encoder_connector_get(nv_encoder)->base.name,
+		nv04_encoder_get_connector(nv_encoder)->base.name,
 		nv_crtc->index, '@' + ffs(nv_encoder->dcb->or));
 }
 
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index c4d138f0ca054..255a281249bc8 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -411,6 +411,40 @@ nv50_outp_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
+struct nouveau_connector *
+nv50_outp_get_new_connector(struct nouveau_encoder *outp,
+			    struct drm_atomic_state *state)
+{
+	struct drm_connector *connector;
+	struct drm_connector_state *connector_state;
+	struct drm_encoder *encoder = to_drm_encoder(outp);
+	int i;
+
+	for_each_new_connector_in_state(state, connector, connector_state, i) {
+		if (connector_state->best_encoder == encoder)
+			return nouveau_connector(connector);
+	}
+
+	return NULL;
+}
+
+struct nouveau_connector *
+nv50_outp_get_old_connector(struct nouveau_encoder *outp,
+			    struct drm_atomic_state *state)
+{
+	struct drm_connector *connector;
+	struct drm_connector_state *connector_state;
+	struct drm_encoder *encoder = to_drm_encoder(outp);
+	int i;
+
+	for_each_old_connector_in_state(state, connector, connector_state, i) {
+		if (connector_state->best_encoder == encoder)
+			return nouveau_connector(connector);
+	}
+
+	return NULL;
+}
+
 /******************************************************************************
  * DAC
  *****************************************************************************/
@@ -552,16 +586,31 @@ nv50_audio_component_get_eld(struct device *kdev, int port, int dev_id,
 	struct nouveau_drm *drm = nouveau_drm(drm_dev);
 	struct drm_encoder *encoder;
 	struct nouveau_encoder *nv_encoder;
-	struct nouveau_connector *nv_connector;
+	struct drm_connector *connector;
 	struct nouveau_crtc *nv_crtc;
+	struct drm_connector_list_iter conn_iter;
 	int ret = 0;
 
 	*enabled = false;
+
 	drm_for_each_encoder(encoder, drm->dev) {
+		struct nouveau_connector *nv_connector = NULL;
+
 		nv_encoder = nouveau_encoder(encoder);
-		nv_connector = nouveau_encoder_connector_get(nv_encoder);
+
+		drm_connector_list_iter_begin(drm_dev, &conn_iter);
+		drm_for_each_connector_iter(connector, &conn_iter) {
+			if (connector->state->best_encoder == encoder) {
+				nv_connector = nouveau_connector(connector);
+				break;
+			}
+		}
+		drm_connector_list_iter_end(&conn_iter);
+		if (!nv_connector)
+			continue;
+
 		nv_crtc = nouveau_crtc(encoder->crtc);
-		if (!nv_connector || !nv_crtc || nv_encoder->or != port ||
+		if (!nv_crtc || nv_encoder->or != port ||
 		    nv_crtc->index != dev_id)
 			continue;
 		*enabled = nv_encoder->audio;
@@ -572,6 +621,7 @@ nv50_audio_component_get_eld(struct device *kdev, int port, int dev_id,
 		}
 		break;
 	}
+
 	return ret;
 }
 
@@ -665,7 +715,8 @@ nv50_audio_disable(struct drm_encoder *encoder, struct nouveau_crtc *nv_crtc)
 }
 
 static void
-nv50_audio_enable(struct drm_encoder *encoder, struct drm_display_mode *mode)
+nv50_audio_enable(struct drm_encoder *encoder, struct drm_atomic_state *state,
+		  struct drm_display_mode *mode)
 {
 	struct nouveau_drm *drm = nouveau_drm(encoder->dev);
 	struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
@@ -686,7 +737,7 @@ nv50_audio_enable(struct drm_encoder *encoder, struct drm_display_mode *mode)
 				     (0x0100 << nv_crtc->index),
 	};
 
-	nv_connector = nouveau_encoder_connector_get(nv_encoder);
+	nv_connector = nv50_outp_get_new_connector(nv_encoder, state);
 	if (!drm_detect_monitor_audio(nv_connector->edid))
 		return;
 
@@ -723,7 +774,8 @@ nv50_hdmi_disable(struct drm_encoder *encoder, struct nouveau_crtc *nv_crtc)
 }
 
 static void
-nv50_hdmi_enable(struct drm_encoder *encoder, struct drm_display_mode *mode)
+nv50_hdmi_enable(struct drm_encoder *encoder, struct drm_atomic_state *state,
+		 struct drm_display_mode *mode)
 {
 	struct nouveau_drm *drm = nouveau_drm(encoder->dev);
 	struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
@@ -752,7 +804,7 @@ nv50_hdmi_enable(struct drm_encoder *encoder, struct drm_display_mode *mode)
 	int ret;
 	int size;
 
-	nv_connector = nouveau_encoder_connector_get(nv_encoder);
+	nv_connector = nv50_outp_get_new_connector(nv_encoder, state);
 	if (!drm_detect_hdmi_monitor(nv_connector->edid))
 		return;
 
@@ -798,7 +850,7 @@ nv50_hdmi_enable(struct drm_encoder *encoder, struct drm_display_mode *mode)
 		+ args.pwr.vendor_infoframe_length;
 	nvif_mthd(&disp->disp->object, 0, &args, size);
 
-	nv50_audio_enable(encoder, mode);
+	nv50_audio_enable(encoder, state, mode);
 
 	/* If SCDC is supported by the downstream monitor, update
 	 * divider / scrambling settings to what we programmed above.
@@ -1573,7 +1625,8 @@ nv50_sor_update(struct nouveau_encoder *nv_encoder, u8 head,
 }
 
 static void
-nv50_sor_disable(struct drm_encoder *encoder)
+nv50_sor_disable(struct drm_encoder *encoder,
+		 struct drm_atomic_state *state)
 {
 	struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 	struct nouveau_crtc *nv_crtc = nouveau_crtc(nv_encoder->crtc);
@@ -1601,7 +1654,8 @@ nv50_sor_disable(struct drm_encoder *encoder)
 }
 
 static void
-nv50_sor_enable(struct drm_encoder *encoder)
+nv50_sor_enable(struct drm_encoder *encoder,
+		struct drm_atomic_state *state)
 {
 	struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 	struct nouveau_crtc *nv_crtc = nouveau_crtc(encoder->crtc);
@@ -1625,7 +1679,7 @@ nv50_sor_enable(struct drm_encoder *encoder)
 	u8 proto = NV507D_SOR_SET_CONTROL_PROTOCOL_CUSTOM;
 	u8 depth = NV837D_SOR_SET_CONTROL_PIXEL_DEPTH_DEFAULT;
 
-	nv_connector = nouveau_encoder_connector_get(nv_encoder);
+	nv_connector = nv50_outp_get_new_connector(nv_encoder, state);
 	nv_encoder->crtc = encoder->crtc;
 
 	if ((disp->disp->object.oclass == GT214_DISP ||
@@ -1652,7 +1706,7 @@ nv50_sor_enable(struct drm_encoder *encoder)
 			proto = NV507D_SOR_SET_CONTROL_PROTOCOL_SINGLE_TMDS_B;
 		}
 
-		nv50_hdmi_enable(&nv_encoder->base.base, mode);
+		nv50_hdmi_enable(&nv_encoder->base.base, state, mode);
 		break;
 	case DCB_OUTPUT_LVDS:
 		proto = NV507D_SOR_SET_CONTROL_PROTOCOL_LVDS_CUSTOM;
@@ -1693,7 +1747,7 @@ nv50_sor_enable(struct drm_encoder *encoder)
 		else
 			proto = NV887D_SOR_SET_CONTROL_PROTOCOL_DP_B;
 
-		nv50_audio_enable(encoder, mode);
+		nv50_audio_enable(encoder, state, mode);
 		break;
 	default:
 		BUG();
@@ -1706,8 +1760,8 @@ nv50_sor_enable(struct drm_encoder *encoder)
 static const struct drm_encoder_helper_funcs
 nv50_sor_help = {
 	.atomic_check = nv50_outp_atomic_check,
-	.enable = nv50_sor_enable,
-	.disable = nv50_sor_disable,
+	.atomic_enable = nv50_sor_enable,
+	.atomic_disable = nv50_sor_disable,
 };
 
 static void
@@ -2066,7 +2120,7 @@ nv50_disp_atomic_commit_tail(struct drm_atomic_state *state)
 			  outp->clr.mask, outp->set.mask);
 
 		if (outp->clr.mask) {
-			help->disable(encoder);
+			help->atomic_disable(encoder, state);
 			interlock[NV50_DISP_INTERLOCK_CORE] |= 1;
 			if (outp->flush_disable) {
 				nv50_disp_atomic_commit_wndw(state, interlock);
@@ -2105,7 +2159,7 @@ nv50_disp_atomic_commit_tail(struct drm_atomic_state *state)
 			  outp->set.mask, outp->clr.mask);
 
 		if (outp->set.mask) {
-			help->enable(encoder);
+			help->atomic_enable(encoder, state);
 			interlock[NV50_DISP_INTERLOCK_CORE] = 1;
 		}
 
diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c b/drivers/gpu/drm/nouveau/nouveau_connector.c
index e12957e6faa7c..1d5696c39792a 100644
--- a/drivers/gpu/drm/nouveau/nouveau_connector.c
+++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
@@ -391,20 +391,6 @@ find_encoder(struct drm_connector *connector, int type)
 	return NULL;
 }
 
-struct nouveau_connector *
-nouveau_encoder_connector_get(struct nouveau_encoder *encoder)
-{
-	struct drm_device *dev = to_drm_encoder(encoder)->dev;
-	struct drm_connector *drm_connector;
-
-	list_for_each_entry(drm_connector, &dev->mode_config.connector_list, head) {
-		if (drm_connector->encoder == to_drm_encoder(encoder))
-			return nouveau_connector(drm_connector);
-	}
-
-	return NULL;
-}
-
 static void
 nouveau_connector_destroy(struct drm_connector *connector)
 {
diff --git a/drivers/gpu/drm/nouveau/nouveau_encoder.h b/drivers/gpu/drm/nouveau/nouveau_encoder.h
index 6424cdcb4913f..b0e1dad2367d6 100644
--- a/drivers/gpu/drm/nouveau/nouveau_encoder.h
+++ b/drivers/gpu/drm/nouveau/nouveau_encoder.h
@@ -113,7 +113,11 @@ enum drm_mode_status nv50_dp_mode_valid(struct drm_connector *,
 					unsigned *clock);
 
 struct nouveau_connector *
-nouveau_encoder_connector_get(struct nouveau_encoder *encoder);
+nv50_outp_get_new_connector(struct nouveau_encoder *outp,
+			    struct drm_atomic_state *state);
+struct nouveau_connector *
+nv50_outp_get_old_connector(struct nouveau_encoder *outp,
+			    struct drm_atomic_state *state);
 
 int nv50_mstm_detect(struct nv50_mstm *, u8 dpcd[8], int allow);
 void nv50_mstm_remove(struct nv50_mstm *);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
