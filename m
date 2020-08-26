Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F408D2536FC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 20:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08006EACC;
	Wed, 26 Aug 2020 18:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A387B6EACF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 18:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598466376;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7K7gHdedqiVbmUKSx9Su58MqOV5iGPwjtfCRwew8VFI=;
 b=eeexZ+8ifJZB7z0Mg9Su99LRQ6s117Kmr59xOOFVcHUooFBljJ5wvo4FflS6sJFe4elH78
 WazGRn84+6yYu0BATI10EKopk+oHnrFw80r39sgHbJ53PooS+bgTcun7+aqlc1OnOsfd8u
 MU2jMDXYhMwqdEb42rcbMNSpACecgsA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-D7iPjlF3NEablcm0g_qEWw-1; Wed, 26 Aug 2020 14:26:14 -0400
X-MC-Unique: D7iPjlF3NEablcm0g_qEWw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BE5A1015DC4;
 Wed, 26 Aug 2020 18:26:11 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-119-77.rdu2.redhat.com
 [10.10.119.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6EE9110021AA;
 Wed, 26 Aug 2020 18:26:09 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:24:55 -0400
Message-Id: <20200826182456.322681-20-lyude@redhat.com>
In-Reply-To: <20200826182456.322681-1-lyude@redhat.com>
References: <20200826182456.322681-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v5 19/20] drm/i915/dp: Extract
 drm_dp_read_dpcd_caps()
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since DP 1.3, it's been possible for DP receivers to specify an
additional set of DPCD capabilities, which can take precedence over the
capabilities reported at DP_DPCD_REV.

Basically any device supporting DP is going to need to read these in an
identical manner, in particular nouveau, so let's go ahead and just move
this code out of i915 into a shared DRM DP helper that we can use in
other drivers.

v2:
* Remove redundant dpcd[DP_DPCD_REV] == 0 check
* Fix drm_dp_dpcd_read() ret checks

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Sean Paul <sean@poorly.run>
---
 drivers/gpu/drm/drm_dp_helper.c             | 77 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c     | 60 +---------------
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 -
 drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
 include/drm/drm_dp_helper.h                 |  3 +
 5 files changed, 83 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 46d88ef4f59ac..9ca88e6c78820 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -433,6 +433,83 @@ static u8 drm_dp_downstream_port_count(const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 	return port_count;
 }
 
+static int drm_dp_read_extended_dpcd_caps(struct drm_dp_aux *aux,
+					  u8 dpcd[DP_RECEIVER_CAP_SIZE])
+{
+	u8 dpcd_ext[6];
+	int ret;
+
+	/*
+	 * Prior to DP1.3 the bit represented by
+	 * DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT was reserved.
+	 * If it is set DP_DPCD_REV at 0000h could be at a value less than
+	 * the true capability of the panel. The only way to check is to
+	 * then compare 0000h and 2200h.
+	 */
+	if (!(dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
+	      DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT))
+		return 0;
+
+	ret = drm_dp_dpcd_read(aux, DP_DP13_DPCD_REV, &dpcd_ext,
+			       sizeof(dpcd_ext));
+	if (ret < 0)
+		return ret;
+	if (ret != sizeof(dpcd_ext))
+		return -EIO;
+
+	if (dpcd[DP_DPCD_REV] > dpcd_ext[DP_DPCD_REV]) {
+		DRM_DEBUG_KMS("%s: Extended DPCD rev less than base DPCD rev (%d > %d)\n",
+			      aux->name, dpcd[DP_DPCD_REV],
+			      dpcd_ext[DP_DPCD_REV]);
+		return 0;
+	}
+
+	if (!memcmp(dpcd, dpcd_ext, sizeof(dpcd_ext)))
+		return 0;
+
+	DRM_DEBUG_KMS("%s: Base DPCD: %*ph\n",
+		      aux->name, DP_RECEIVER_CAP_SIZE, dpcd);
+
+	memcpy(dpcd, dpcd_ext, sizeof(dpcd_ext));
+
+	return 0;
+}
+
+/**
+ * drm_dp_read_dpcd_caps() - read DPCD caps and extended DPCD caps if
+ * available
+ * @aux: DisplayPort AUX channel
+ * @dpcd: Buffer to store the resulting DPCD in
+ *
+ * Attempts to read the base DPCD caps for @aux. Additionally, this function
+ * checks for and reads the extended DPRX caps (%DP_DP13_DPCD_REV) if
+ * present.
+ *
+ * Returns: %0 if the DPCD was read successfully, negative error code
+ * otherwise.
+ */
+int drm_dp_read_dpcd_caps(struct drm_dp_aux *aux,
+			  u8 dpcd[DP_RECEIVER_CAP_SIZE])
+{
+	int ret;
+
+	ret = drm_dp_dpcd_read(aux, DP_DPCD_REV, dpcd, DP_RECEIVER_CAP_SIZE);
+	if (ret < 0)
+		return ret;
+	if (ret != DP_RECEIVER_CAP_SIZE || dpcd[DP_DPCD_REV] == 0)
+		return -EIO;
+
+	ret = drm_dp_read_extended_dpcd_caps(aux, dpcd);
+	if (ret < 0)
+		return ret;
+
+	DRM_DEBUG_KMS("%s: DPCD: %*ph\n",
+		      aux->name, DP_RECEIVER_CAP_SIZE, dpcd);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_dp_read_dpcd_caps);
+
 /**
  * drm_dp_read_downstream_info() - read DPCD downstream port info if available
  * @aux: DisplayPort AUX channel
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0de94fc6289be..284b15f845926 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4449,62 +4449,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	}
 }
 
-static void
-intel_dp_extended_receiver_capabilities(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 dpcd_ext[6];
-
-	/*
-	 * Prior to DP1.3 the bit represented by
-	 * DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT was reserved.
-	 * if it is set DP_DPCD_REV at 0000h could be at a value less than
-	 * the true capability of the panel. The only way to check is to
-	 * then compare 0000h and 2200h.
-	 */
-	if (!(intel_dp->dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
-	      DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT))
-		return;
-
-	if (drm_dp_dpcd_read(&intel_dp->aux, DP_DP13_DPCD_REV,
-			     &dpcd_ext, sizeof(dpcd_ext)) != sizeof(dpcd_ext)) {
-		drm_err(&i915->drm,
-			"DPCD failed read at extended capabilities\n");
-		return;
-	}
-
-	if (intel_dp->dpcd[DP_DPCD_REV] > dpcd_ext[DP_DPCD_REV]) {
-		drm_dbg_kms(&i915->drm,
-			    "DPCD extended DPCD rev less than base DPCD rev\n");
-		return;
-	}
-
-	if (!memcmp(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext)))
-		return;
-
-	drm_dbg_kms(&i915->drm, "Base DPCD: %*ph\n",
-		    (int)sizeof(intel_dp->dpcd), intel_dp->dpcd);
-
-	memcpy(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext));
-}
-
-bool
-intel_dp_read_dpcd(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
-	if (drm_dp_dpcd_read(&intel_dp->aux, 0x000, intel_dp->dpcd,
-			     sizeof(intel_dp->dpcd)) < 0)
-		return false; /* aux transfer failed */
-
-	intel_dp_extended_receiver_capabilities(intel_dp);
-
-	drm_dbg_kms(&i915->drm, "DPCD: %*ph\n", (int)sizeof(intel_dp->dpcd),
-		    intel_dp->dpcd);
-
-	return intel_dp->dpcd[DP_DPCD_REV] != 0;
-}
-
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 {
 	u8 dprx = 0;
@@ -4563,7 +4507,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	/* this function is meant to be called only once */
 	drm_WARN_ON(&dev_priv->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
 
-	if (!intel_dp_read_dpcd(intel_dp))
+	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
 		return false;
 
 	drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
@@ -4650,7 +4594,7 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 {
 	int ret;
 
-	if (!intel_dp_read_dpcd(intel_dp))
+	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd))
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b901ab850cbd9..0a3af3410d52e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -99,7 +99,6 @@ bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
 bool
 intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
 
-bool intel_dp_read_dpcd(struct intel_dp *intel_dp);
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_max_data_rate(int max_link_clock, int max_lanes);
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index b781bf4696443..dc1b35559afdf 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -571,7 +571,7 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 	}
 
-	if (!intel_dp_read_dpcd(dp)) {
+	if (drm_dp_read_dpcd_caps(&dp->aux, dp->dpcd) != 0) {
 		DRM_ERROR("LSPCON DPCD read failed\n");
 		return false;
 	}
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index bc5cb8c503fbc..85513eeb21966 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1607,6 +1607,9 @@ static inline ssize_t drm_dp_dpcd_writeb(struct drm_dp_aux *aux,
 	return drm_dp_dpcd_write(aux, offset, &value, 1);
 }
 
+int drm_dp_read_dpcd_caps(struct drm_dp_aux *aux,
+			  u8 dpcd[DP_RECEIVER_CAP_SIZE]);
+
 int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
 				 u8 status[DP_LINK_STATUS_SIZE]);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
