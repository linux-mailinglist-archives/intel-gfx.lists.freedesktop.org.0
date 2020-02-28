Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1F173DE3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C900E6F484;
	Fri, 28 Feb 2020 17:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35B36F473
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:19:20 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e8so3605523wrm.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to
 :mime-version:content-transfer-encoding;
 bh=5Snul1mQYsXQKqD98wu2BS2piWBOWoNGOiiZ66SipW4=;
 b=THDxqMV5azA5bLtqLzs+XqW+icQA+ma7dvSIDCZKuU8aw/iIEGhYvUGCP6EqsYHy1p
 w9Aj/4kjWW0JxlvBL5+fE61X+NX+z8r7NXd5oxe1dCyNuC34i3O8BMXqlZ1C2u0CK3Qe
 kg4TZU35gVTWsDU6qkhFRcys0r/y93dPlxseYDNbXypwfl/dR7J5kxAlXFAejKPfY/HG
 cSfzZXonwvGxWrQp7wowm9tTMirdBP+9iZqdSiJvMYmCQ590C+oFC+HpzNyH7F6tqBbf
 Fsp5LxTAHyu7WzH2+SQXGxFVY8Bt1CV/AYMScf5dguxWiHZ0cUYLQp0yJxG0v4rs3oIt
 xWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to:mime-version:content-transfer-encoding;
 bh=5Snul1mQYsXQKqD98wu2BS2piWBOWoNGOiiZ66SipW4=;
 b=XLovFnpf6fdww1+tZbR590aqvRrcEXLMZm7b4S7o4+i5jUUj5WlwJFz13uHKOD69Gd
 rduDQR1yLi3ABFdrhTeM/hg+67yGu1i0ycZ6//CUUIYPZK43POBGe7d/mxxVQlSR7h8G
 CiYF1FxdDjD8L63Kg9sZcLA3w8EIm4J6U85l2kDlWChiw4Dfnpc02jsV2z4PIO7gIHZ0
 bMjANHtYg0oMuFHAmVpBmkvr1sednVv2B/rOZtCCGzP4gEENULpW0AElg0zTbbSq11pU
 EUwvcIgN+zU7uo8QEK3jD9CrWw/dbjNGqOHfCuTjf+NB7VASNpbDxAZL2hce9PKiI6dF
 k1kg==
X-Gm-Message-State: APjAAAWhAhyc3jFDp91NyM50bYss9VazhygBUa6CU03rHBRfTzbCkIqJ
 zVaDZCC9P/S+bydimZuupbK0Fvy7OcM=
X-Google-Smtp-Source: APXvYqyqGvKhp8K4er1Pl7ikhTpdu6VcjHBv1p9JNltinVPjgd0dOjkVhsU4PeJSwgBhbHfDXzavnQ==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr5354091wrn.209.1582906759135; 
 Fri, 28 Feb 2020 08:19:19 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d080c20.dyn.telefonica.de.
 [77.8.12.32])
 by smtp.gmail.com with ESMTPSA id i7sm3162028wma.32.2020.02.28.08.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 08:19:18 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 28 Feb 2020 17:18:21 +0100
Message-Id: <20200228161821.6667-3-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228161821.6667-1-oliver.barta@aptiv.com>
References: <20200226080645.7421-1-oliver.barta@aptiv.com>
 <20200228161821.6667-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 17:04:38 +0000
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: HDCP: retry link integrity
 check on failure
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

From: Oliver Barta <oliver.barta@aptiv.com>

A single Ri mismatch doesn't automatically mean that the link integrity
is broken. Update and check of Ri and Ri' are done asynchronously. In
case an update happens just between the read of Ri' and the check against
Ri there will be a mismatch even if the link integrity is fine otherwise.
A failure can also be caused by transmission errors on DDC.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
---
[v2] Rebased patch series from master to drm-intel-next-queued branch.

 drivers/gpu/drm/i915/display/intel_hdmi.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ac4276157182..296b4e1bb3c6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1516,7 +1516,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
 }
 
 static
-bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
+bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	struct intel_connector *connector =
@@ -1539,13 +1539,26 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
 		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
-		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
+		DRM_DEBUG("Ri' mismatch detected (%x)\n",
 			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
 		return false;
 	}
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
