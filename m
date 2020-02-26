Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A741704AA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:44:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEFD6EAE2;
	Wed, 26 Feb 2020 16:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D326E141
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 08:07:33 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c84so1912810wme.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 00:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to
 :mime-version:content-transfer-encoding;
 bh=vLBYMVxroQxfU2ifC1FpQ29n9FEKaNZfgfTVw31UqM4=;
 b=gNVOrpMEI23cNd1EZPvjXe0ZIBDHfj+zbQ0xsn9IvYR5hw+m8AK3sMLwPmHIbG1CNG
 YX8OnybeDoC/3GcFP1EmGdfyvYzptu2HbXAyFUVUvy60DaoY1lAjmA86mU94RrBGVRvc
 +pZ/ah4xBOy3t1I0gxOPH92UiWzTZ4FPBMSy9LH6JatnUOnuFFla9lQOX5dmwcL4bxgv
 3N1K3cgkI2/jMylC11XlIHR3HMbYpaWk3x+lu6DphtE7K0w1W2RvZ0I1MDxRr5chb6Kv
 /16EpfqbkNjFQaci1PAGybz3SvzQQdfJbXJSqkVXXRr1nIXS9y1jHqYSFiGE15X+qOBO
 BBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to:mime-version:content-transfer-encoding;
 bh=vLBYMVxroQxfU2ifC1FpQ29n9FEKaNZfgfTVw31UqM4=;
 b=t3x+FLTbMVsAUf09Zjk10cnYK2+bh9QGbWTCIHkGdBfb8HuFEQEyOJ/zQWwxbPH0u+
 TJtROY1GGGuX0IDBTGplvSSSdgUtBX5sfXTsiR2NK9ry/W8si585yrrL43Rirun3focv
 c5sheiPOseIW8DqikRBeFimpjYDip9IpLFNui5HcSrEL0VR/G7fAwAhSlhplI7BygWmr
 ci6oEk9D1yhiX8YkVGZd8UdrCrqa3hqTYH4PNrt3UlWqCeQ/P27plH8dpcnh1HvP0w26
 yx8naSOF5G9c5BUPv3s7W21aQmKEvlrPLlN1ahJrSCKT2+SSXN3hgOuekoFnakAs5ZW6
 YIbA==
X-Gm-Message-State: APjAAAVpir5Ki+ouKz//bAJgRyFNYz6m2VrWNW0uyXeW7By+WkBCTjL+
 5DQ+zHQcT2MaJlBUl1EmTDYL80tdVn0=
X-Google-Smtp-Source: APXvYqxD8IFK3yTbOUclQly6Y2MPEkdOxw0wNi5U1q9cSdWCHzaZwcFiod7i9LDZNpUjES2VQAi0Kw==
X-Received: by 2002:a05:600c:3d1:: with SMTP id
 z17mr4096134wmd.90.1582704451724; 
 Wed, 26 Feb 2020 00:07:31 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d001122.dyn.telefonica.de.
 [77.0.17.34])
 by smtp.gmail.com with ESMTPSA id t3sm2147494wrx.38.2020.02.26.00.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:07:31 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed, 26 Feb 2020 09:06:45 +0100
Message-Id: <20200226080645.7421-3-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200226080645.7421-1-oliver.barta@aptiv.com>
References: <20200226080645.7421-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 26 Feb 2020 16:44:12 +0000
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: HDCP: retry link integrity check
 on failure
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
Reply-To: Oliver Barta <oliver.barta@aptiv.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A single Ri mismatch doesn't automatically mean that the
link integrity is broken. Update and check of Ri and Ri'
are done asynchronously. In case an update happens just
between the read of Ri' and the check against Ri there will
be a mismatch even if the link integrity is fine otherwise.

A failure can also be caused by transmission errors on DDC.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 14912daad7ff..5711745d0006 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1505,7 +1505,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
 {
 	struct drm_i915_private *dev_priv =
 		intel_dig_port->base.base.dev->dev_private;
@@ -1529,7 +1529,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	if (wait_for((I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
-		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
+		DRM_DEBUG("Ri' mismatch detected (%x)\n",
 			  I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
 						port)));
 		return false;
@@ -1537,6 +1537,19 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	return true;
 }
 
+static
+bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+{
+	int retry;
+
+	for (retry = 0; retry < 3; retry++)
+		if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
+			return true;
+
+	DRM_ERROR("Link check failed\n");
+	return false;
+}
+
 struct hdcp2_hdmi_msg_timeout {
 	u8 msg_id;
 	u16 timeout;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
