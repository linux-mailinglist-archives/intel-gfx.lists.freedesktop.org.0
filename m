Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83F8364E0B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 00:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962EA6E479;
	Mon, 19 Apr 2021 22:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A816E486
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 22:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618873020;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JpWF35re5mO8T7PVOXIxt7+uN4UplGneHqyrdOS6vUo=;
 b=fH4TWXRwJV5lAGjRrwVKUZrfhSHT+GKGFb/Xh+E+MbG9ivD5VL2CdSh9B7urkhrb+aD1Xo
 iOfOFg0yg+uVS2BGYRb4def3Fo9sIn12vcYmkmOElS95GNERSW7lG40fbDKLZaN+dgV2A5
 sY344aZ5Wa/NQs7wYSG5u7Nw8yhW6sY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-ogiio_rdMgmzkp-Hu38DaQ-1; Mon, 19 Apr 2021 18:56:53 -0400
X-MC-Unique: ogiio_rdMgmzkp-Hu38DaQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D368107ACCD;
 Mon, 19 Apr 2021 22:56:51 +0000 (UTC)
Received: from Ruby.lyude.net (ovpn-119-153.rdu2.redhat.com [10.10.119.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75D375C1C4;
 Mon, 19 Apr 2021 22:56:49 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Thierry Reding <thierry.reding@gmail.com>
Date: Mon, 19 Apr 2021 18:55:09 -0400
Message-Id: <20210419225523.184856-8-lyude@redhat.com>
In-Reply-To: <20210419225523.184856-1-lyude@redhat.com>
References: <20210419225523.184856-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [PATCH v3 07/20] drm/dp: Clarify DP AUX registration
 time
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
Cc: David Airlie <airlied@linux.ie>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The docs we had for drm_dp_aux_init() and drm_dp_aux_register() were mostly
correct, except for the fact that they made the assumption that all AUX
devices were grandchildren of their respective DRM devices. This is the
case for most normal GPUs, but is almost never the case with SoCs and
display bridges. So, let's fix this documentation to clarify when the right
time to use drm_dp_aux_init() or drm_dp_aux_register() is.

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 57 +++++++++++++++++++++------------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index b34105c41867..b197fdac2334 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1728,13 +1728,21 @@ EXPORT_SYMBOL(drm_dp_remote_aux_init);
  * drm_dp_aux_init() - minimally initialise an aux channel
  * @aux: DisplayPort AUX channel
  *
- * If you need to use the drm_dp_aux's i2c adapter prior to registering it
- * with the outside world, call drm_dp_aux_init() first. You must still
- * call drm_dp_aux_register() once the connector has been registered to
- * allow userspace access to the auxiliary DP channel. Once the AUX channel is
- * no longer being used and has been unregistered with
- * drm_dp_aux_unregister(), the driver must clean up any resources it's
- * allocated with drm_dp_aux_fini().
+ * If you need to use the drm_dp_aux's i2c adapter prior to registering it with
+ * the outside world, call drm_dp_aux_init() first. For drivers which are
+ * grandparents to their AUX adapters (e.g. the AUX adapter is parented by a
+ * &drm_connector), you must still call drm_dp_aux_register() once the connector
+ * has been registered to allow userspace access to the auxiliary DP channel.
+ * Likewise, for such drivers you should also assign &drm_dp_aux.drm_dev as
+ * early as possible so that the &drm_device that corresponds to the AUX adapter
+ * may be mentioned in debugging output from the DRM DP helpers.
+ *
+ * For devices which use a separate platform device for their AUX adapters, this
+ * may be called as early as required by the driver.
+ *
+ * Once the AUX channel is no longer being used and has been unregistered with
+ * drm_dp_aux_unregister(), the driver must clean up any resources its allocated with
+ * drm_dp_aux_fini().
  *
  * Returns:
  * %0 on success, negative error code on failure
@@ -1794,19 +1802,28 @@ EXPORT_SYMBOL(drm_dp_aux_fini);
  * drm_dp_aux_register() - register aux channel
  * @aux: DisplayPort AUX channel
  *
- * Automatically calls drm_dp_aux_init() if this hasn't been done yet. The
- * driver must make sure to call drm_dp_aux_unregister() to unregister the
- * device, and drm_dp_aux_fini() to cleanup the device after it's been
- * unregistered.
- *
- * This should only be called when the underlying &struct drm_connector is
- * initialized already. Therefore the best place to call this is from
- * &drm_connector_funcs.late_register. Not that drivers which don't follow this
- * will Oops when CONFIG_DRM_DP_AUX_CHARDEV is enabled.
- *
- * Drivers which need to use the aux channel before that point (e.g. at driver
- * load time, before drm_dev_register() has been called) need to call
- * drm_dp_aux_init().
+ * Automatically calls drm_dp_aux_init() if this hasn't been done yet. This
+ * should only be called once the parent of @aux, &drm_dp_aux.dev, is
+ * initialized. For devices which are grandparents of their AUX channels,
+ * &drm_dp_aux.dev will typically be the &drm_connector &device which
+ * corresponds to @aux. For these devices, it's advised to call
+ * drm_dp_aux_register() in &drm_connector_funcs.late_register, and likewise to
+ * call drm_dp_aux_unregister() in &drm_connector_funcs.early_unregister.
+ * Functions which don't follow this will likely Oops when
+ * %CONFIG_DRM_DP_AUX_CHARDEV is enabled.
+ *
+ * For devices where the AUX channel is a device that exists independently of
+ * the &drm_device that uses it, such as SoCs and bridge devices, it is
+ * recommended to call drm_dp_aux_register() after a &drm_device has been
+ * assigned to &drm_dp_aux.drm_dev, and likewise to call
+ * drm_dp_aux_unregister() once the &drm_device should no longer be associated
+ * with the AUX channel (e.g. on bridge detach). Additionally, the driver must
+ * call drm_dp_aux_fini() on @aux once it's been unregistered and is no longer
+ * in use.
+ *
+ * Drivers which need to use the aux channel before either of the two points
+ * mentioned above need to call drm_dp_aux_init() in order to use the AUX
+ * channel before registration.
  *
  * Returns 0 on success or a negative error code on failure.
  */
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
