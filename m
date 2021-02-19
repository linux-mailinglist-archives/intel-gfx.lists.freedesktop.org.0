Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 963723200D5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 22:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9C86EC81;
	Fri, 19 Feb 2021 21:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA5B6EC84
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 21:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613771745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BG9rfBAC5UC92yAuOvtZ91qZtwTw7ltIdQXv7dZCTbs=;
 b=Yf88ICCm4ri2ubkYFF8ZoRHoUKHfKDxtXqpwe2XIX6nLNSHzWW2RCj+TVHubyNaXRu85y4
 btSSUc682CrwK/9k1jsHOQHb9jmpoQOsm0Cd4Xlwrt8mdmPyGkXxyf7j8WnL3KeTBGJVNs
 dFZe1UbIEd7zKAfaa1amFnMuUYLD4kk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-600-IV6RkYLAOzm1rGiIf10gNA-1; Fri, 19 Feb 2021 16:55:41 -0500
X-MC-Unique: IV6RkYLAOzm1rGiIf10gNA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8F9618A08C3;
 Fri, 19 Feb 2021 21:55:38 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-118-5.rdu2.redhat.com [10.10.118.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7FBB46A03C;
 Fri, 19 Feb 2021 21:55:36 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Date: Fri, 19 Feb 2021 16:53:20 -0500
Message-Id: <20210219215326.2227596-25-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-1-lyude@redhat.com>
References: <20210219215326.2227596-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 24/30] drm/dp_dual_mode: Pass drm_device to
 drm_dp_dual_mode_max_tmds_clock()
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

Another function we need to pass drm_device down to in order to start using
drm_dbg_*().

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/drm_dp_dual_mode_helper.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 include/drm/drm_dp_dual_mode_helper.h     | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_dual_mode_helper.c b/drivers/gpu/drm/drm_dp_dual_mode_helper.c
index a63d7de85309..4a26b3e1f78f 100644
--- a/drivers/gpu/drm/drm_dp_dual_mode_helper.c
+++ b/drivers/gpu/drm/drm_dp_dual_mode_helper.c
@@ -252,6 +252,7 @@ EXPORT_SYMBOL(drm_dp_dual_mode_detect);
 
 /**
  * drm_dp_dual_mode_max_tmds_clock - Max TMDS clock for DP dual mode adaptor
+ * @dev: &drm_device to use
  * @type: DP dual mode adaptor type
  * @adapter: I2C adapter for the DDC bus
  *
@@ -265,7 +266,7 @@ EXPORT_SYMBOL(drm_dp_dual_mode_detect);
  * Returns:
  * Maximum supported TMDS clock rate for the DP dual mode adaptor in kHz.
  */
-int drm_dp_dual_mode_max_tmds_clock(enum drm_dp_dual_mode_type type,
+int drm_dp_dual_mode_max_tmds_clock(const struct drm_device *dev, enum drm_dp_dual_mode_type type,
 				    struct i2c_adapter *adapter)
 {
 	uint8_t max_tmds_clock;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index b2442148b7f1..ef875fc48646 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2638,7 +2638,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 
 	hdmi->dp_dual_mode.type = type;
 	hdmi->dp_dual_mode.max_tmds_clock =
-		drm_dp_dual_mode_max_tmds_clock(type, adapter);
+		drm_dp_dual_mode_max_tmds_clock(&dev_priv->drm, type, adapter);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
diff --git a/include/drm/drm_dp_dual_mode_helper.h b/include/drm/drm_dp_dual_mode_helper.h
index 8cb0dcd98a99..aabf9c951380 100644
--- a/include/drm/drm_dp_dual_mode_helper.h
+++ b/include/drm/drm_dp_dual_mode_helper.h
@@ -106,7 +106,7 @@ enum drm_dp_dual_mode_type {
 
 enum drm_dp_dual_mode_type
 drm_dp_dual_mode_detect(const struct drm_device *dev, struct i2c_adapter *adapter);
-int drm_dp_dual_mode_max_tmds_clock(enum drm_dp_dual_mode_type type,
+int drm_dp_dual_mode_max_tmds_clock(const struct drm_device *dev, enum drm_dp_dual_mode_type type,
 				    struct i2c_adapter *adapter);
 int drm_dp_dual_mode_get_tmds_output(enum drm_dp_dual_mode_type type,
 				     struct i2c_adapter *adapter, bool *enabled);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
