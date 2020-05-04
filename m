Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DE21C42DB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 19:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C486E44A;
	Mon,  4 May 2020 17:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A9A6E3BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 12:35:55 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d17so20669293wrg.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2020 05:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BpZ2tTqoeXKrWgpDQmnHsIHennZ1LVUi0osEW1fGlEo=;
 b=EU1lZX/9CsgHT2q3awrxcqiuk3XRW7+uxEFJK7dYBjpzBhTOkItouiAVelbOT4Fm26
 zFRWo43SxeeZbR63iKD/41cSMiMQWu7PDjokZNELWfv52Kql2r+GIGmm16ArBY/B4cOk
 fLH769ujHhDdXkpz52G+For+cVCxJHAwn1/QUhcqGp5j5uWNuOAoQgbQ748zC4WM9mBw
 gPLhAhJvtro44G1wYKMtPYFKkeA4n7acBNI8r3rip8dKHEaszrga64R0INb/0Ow9jdKT
 1HyEwaqKwkr6LlD0mUCisMjBoGIA+YkxXMi7fo/kqUtKDyGnToZr8h8EMxwyTw3N7wSu
 uEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BpZ2tTqoeXKrWgpDQmnHsIHennZ1LVUi0osEW1fGlEo=;
 b=mqWvWKBi5IUo5e4HBPvZO0M0JUdzkK7A7o8Ae7zpZPyu8uThol5usGyI8sqF2EwfW2
 zCyFfFc9sSMrVqsqiUaJaEKxiW/a+BRrDkXsouKtQ1+9XYqpQr/R9e1oOgvfw3xUK6aL
 ZyoM0wZJCYgvFfZcPaV2/1+5v49vtLKYXCmcvUtKiHFYckhvhyR/5n486Ky2m9rLAcMs
 sAsRWN7cdDM5GZqo+4O0jD5lvxvhgdDhZRy+VBDdjZ7NAqlKVMf4JvC3PSbie1AJA37R
 xcQ2cX0YWiW9WEEt9eyayCja3WBohiLntZKUIi2Fw5wQo7q30k4kug3d4N5qiD69seyS
 dREQ==
X-Gm-Message-State: AGi0PuamLsMGZDxawt3fe5g2oiQzY/lDH/Cuw7yvOroDFr4xLM9JgWWj
 VF6DFhEUttUXoL+9Lrv9GCU=
X-Google-Smtp-Source: APiQypI1c7UO9lW6d+Ck8dBWshcDwzeWth33/JeWulsqTdNm8lsHhJCNuH0tTnsvfA6pL8PTsWNKiw==
X-Received: by 2002:a5d:6985:: with SMTP id g5mr19465115wru.398.1588595754054; 
 Mon, 04 May 2020 05:35:54 -0700 (PDT)
Received: from xyz-CELSIUS-H720.fritz.box (x5f74a5da.dyn.telefonica.de.
 [95.116.165.218])
 by smtp.gmail.com with ESMTPSA id h1sm13653576wme.42.2020.05.04.05.35.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 05:35:53 -0700 (PDT)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: Ramalingam C <ramalingam.c@intel.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  4 May 2020 14:35:24 +0200
Message-Id: <20200504123524.7731-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 May 2020 17:32:53 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: HDCP: retry link integrity check on
 failure
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Oliver Barta <oliver.barta@aptiv.com>

A single Ri mismatch doesn't automatically mean that the link integrity
is broken. Update and check of Ri and Ri' are done asynchronously. In
case an update happens just between the read of Ri' and the check against
Ri there will be a mismatch even if the link integrity is fine otherwise.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 010f37240710..3156fde392f2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_connector *connector =
@@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
 		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
-		drm_err(&i915->drm,
-			"Ri' mismatch detected, link check failed (%x)\n",
+		drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
 			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
 							port)));
 		return false;
@@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	return true;
 }
 
+static
+bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
+	int retry;
+
+	for (retry = 0; retry < 3; retry++)
+		if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
+			return true;
+
+	drm_err(&i915->drm, "Link check failed\n");
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
