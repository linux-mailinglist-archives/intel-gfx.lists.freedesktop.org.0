Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9532B378CD1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 15:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13116E47B;
	Mon, 10 May 2021 13:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [159.69.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526016E1BE;
 Mon, 10 May 2021 13:33:58 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 23BDFC800AB;
 Mon, 10 May 2021 15:33:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10026)
 with LMTP id tbOqOCSke9IB; Mon, 10 May 2021 15:33:55 +0200 (CEST)
Received: from wsembach-tuxedo.fritz.box
 (p200300E37F0dA80022824231f945140A.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f0d:a800:2282:4231:f945:140a])
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPA id D6648C800A7;
 Mon, 10 May 2021 15:33:55 +0200 (CEST)
From: Werner Sembach <wse@tuxedocomputers.com>
To: ville.syrjala@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Mon, 10 May 2021 15:33:47 +0200
Message-Id: <20210510133349.14491-2-wse@tuxedocomputers.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210510133349.14491-1-wse@tuxedocomputers.com>
References: <20210510133349.14491-1-wse@tuxedocomputers.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/3] drm/i915/display: New function to avoid
 duplicate code in upcomming commits
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Moves some checks that later will be performed 2 times to an own function.
This avoids duplicate code later on.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 42 +++++++++++++++--------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 46de56af33db..2f1ca91387e4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1861,6 +1861,32 @@ static int intel_hdmi_port_clock(int clock, int bpc)
 	return clock * bpc / 8;
 }
 
+static enum drm_mode_status
+intel_hdmi_mode_clock_valid(struct intel_hdmi *hdmi, int clock, bool has_hdmi_sink)
+{
+	struct drm_device *dev = intel_hdmi_to_dev(hdmi);
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum drm_mode_status status;
+
+	/* check if we can do 8bpc */
+	status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
+				       true, has_hdmi_sink);
+
+	if (has_hdmi_sink) {
+		/* if we can't do 8bpc we may still be able to do 12bpc */
+		if (status != MODE_OK && !HAS_GMCH(dev_priv))
+			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
+						       true, has_hdmi_sink);
+
+		/* if we can't do 8,12bpc we may still be able to do 10bpc */
+		if (status != MODE_OK && DISPLAY_VER(dev_priv) >= 11)
+			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
+						       true, has_hdmi_sink);
+	}
+
+	return status;
+}
+
 static enum drm_mode_status
 intel_hdmi_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
@@ -1891,21 +1917,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	if (drm_mode_is_420_only(&connector->display_info, mode))
 		clock /= 2;
 
-	/* check if we can do 8bpc */
-	status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
-				       true, has_hdmi_sink);
-
-	if (has_hdmi_sink) {
-		/* if we can't do 8bpc we may still be able to do 12bpc */
-		if (status != MODE_OK && !HAS_GMCH(dev_priv))
-			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
-						       true, has_hdmi_sink);
-
-		/* if we can't do 8,12bpc we may still be able to do 10bpc */
-		if (status != MODE_OK && DISPLAY_VER(dev_priv) >= 11)
-			status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
-						       true, has_hdmi_sink);
-	}
+	status = intel_hdmi_mode_clock_valid(hdmi, clock, has_hdmi_sink);
 	if (status != MODE_OK)
 		return status;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
