Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E408369A2D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 20:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6456EC42;
	Fri, 23 Apr 2021 18:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5266EC30
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 18:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619203542;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bcsMGtj1LuRlLRRf+NneAzyPaC62wDCq434F0KB8s/o=;
 b=K53mIdD9YXjfX9WjgQ4eQe9ZK4HGQNGXZAePgvbXWimfLmAu+3T72aVdMnMzo73CwtZtxv
 Hs+Cmbt8ooT4y72F/XVmn1MuoSz6s2m+/aV8fL6y0XleSpHQ1NuWHFFjy1pRHkeOK9Wyz6
 XGlyahcjxcigcgC+W0MlihD+VzUhGps=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-NE-SWWH1NEqpyn3kzonZUA-1; Fri, 23 Apr 2021 14:45:35 -0400
X-MC-Unique: NE-SWWH1NEqpyn3kzonZUA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7DBF1067046;
 Fri, 23 Apr 2021 18:44:53 +0000 (UTC)
Received: from Ruby.lyude.net (ovpn-114-74.rdu2.redhat.com [10.10.114.74])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BBA56090F;
 Fri, 23 Apr 2021 18:44:51 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Thierry Reding <thierry.reding@gmail.com>
Date: Fri, 23 Apr 2021 14:43:01 -0400
Message-Id: <20210423184309.207645-10-lyude@redhat.com>
In-Reply-To: <20210423184309.207645-1-lyude@redhat.com>
References: <20210423184309.207645-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH v4 09/17] drm/dp_dual_mode: Pass drm_device to
 drm_dp_dual_mode_set_tmds_output()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, David Airlie <airlied@linux.ie>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Another function that we'll need to pass a drm_device (and not drm_dp_aux)
down to so that we can move over to using drm_dbg_*().

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/drm_dp_dual_mode_helper.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 +--
 include/drm/drm_dp_dual_mode_helper.h     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_dual_mode_helper.c b/drivers/gpu/drm/drm_dp_dual_mode_helper.c
index 9ee75c568c37..a63d7de85309 100644
--- a/drivers/gpu/drm/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/drm_dp_dual_mode_helper.c
@@ -336,6 +336,7 @@ EXPORT_SYMBOL(drm_dp_dual_mode_get_tmds_output);
 
 /**
  * drm_dp_dual_mode_set_tmds_output - Enable/disable TMDS output buffers in the DP dual mode adaptor
+ * @dev: &drm_device to use
  * @type: DP dual mode adaptor type
  * @adapter: I2C adapter for the DDC bus
  * @enable: enable (as opposed to disable) the TMDS output buffers
@@ -349,7 +350,7 @@ EXPORT_SYMBOL(drm_dp_dual_mode_get_tmds_output);
  * Returns:
  * 0 on success, negative error code on failure
  */
-int drm_dp_dual_mode_set_tmds_output(enum drm_dp_dual_mode_type type,
+int drm_dp_dual_mode_set_tmds_output(const struct drm_device *dev, enum drm_dp_dual_mode_type type,
 				     struct i2c_adapter *adapter, bool enable)
 {
 	uint8_t tmds_oen = enable ? 0 : DP_DUAL_MODE_TMDS_DISABLE;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 08fb98dac169..fc3e7a9396b5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1251,8 +1251,7 @@ void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
 		    enable ? "Enabling" : "Disabling");
 
-	drm_dp_dual_mode_set_tmds_output(hdmi->dp_dual_mode.type,
-					 adapter, enable);
+	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm, hdmi->dp_dual_mode.type, adapter, enable);
 }
 
 static int intel_hdmi_hdcp_read(struct intel_digital_port *dig_port,
diff --git a/include/drm/drm_dp_dual_mode_helper.h b/include/drm/drm_dp_dual_mode_helper.h
index 23ce849152f3..8cb0dcd98a99 100644
--- a/include/drm/drm_dp_dual_mode_helper.h
+++ b/include/drm/drm_dp_dual_mode_helper.h
@@ -110,7 +110,7 @@ int drm_dp_dual_mode_max_tmds_clock(enum drm_dp_dual_mode_type type,
 				    struct i2c_adapter *adapter);
 int drm_dp_dual_mode_get_tmds_output(enum drm_dp_dual_mode_type type,
 				     struct i2c_adapter *adapter, bool *enabled);
-int drm_dp_dual_mode_set_tmds_output(enum drm_dp_dual_mode_type type,
+int drm_dp_dual_mode_set_tmds_output(const struct drm_device *dev, enum drm_dp_dual_mode_type type,
 				     struct i2c_adapter *adapter, bool enable);
 const char *drm_dp_get_dual_mode_type_name(enum drm_dp_dual_mode_type type);
 
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
