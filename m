Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 624381411B6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:31:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC4E6F8DC;
	Fri, 17 Jan 2020 19:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCCB6F8D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:31:08 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id 192so14856859ywy.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cE4plDgeOaA1EdeFDIGVj5csFXNHOxdShFqwh4J/5Fc=;
 b=WMXiEassOBYE9KIMY/hA/5Xm4kX4pFBtFP7Z/WC/qytrK3VWYV6QLb6qPBt85nU6pQ
 4aHo8J9IGB5Z9YW8ufzzu6RJ3j/NsQYm2ey9FWG6f1ynRtE9dbhQX3oUp7RAdSojRcyY
 f70uVgeKR/BJIzePGP8lT+0813UGeIqYy67Kj/EW49nA70AMFdwcCd4599UJrV65vr8m
 fA1b8luLcrRpZ6GvOF1x0ZswYtFRW0mPydDWrx42z2yij5f9NZvclMs2rDErAlsZj6zY
 ZusZHmQ+uzS1/Q1p/QlwBRRikMZCAwsG1auEnnd8p9+TqoTlodPrPQuhlICStQNIMtdn
 +1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cE4plDgeOaA1EdeFDIGVj5csFXNHOxdShFqwh4J/5Fc=;
 b=XRTeMS2+FdwEFlgxioSvx2ObDfXvIIHnjivFA9wNG6vAeKTmpJ1l9kpFFNXUJmd+qI
 GAk59ss4myqH8xAKKrobYrlScQjNCdFkvl6sI1eGHwa4rtgYj4Uf9pMMCW6rcVZCBGgt
 pr+WTqHxT90PijST3nrbCazeSLBX3O5z8aVLvBtHImaemrRjjEPdHkveIyZgC3Uw+ww8
 A7q3EOcLdCyHw4HX46rYmQXH0HLEuBGqdHqLh3Ne1y9CgcnwxPAICZM91WlpdtqKNr3J
 SWRIboVHCNvPps3mk5/yG0RsNJJq8Kgk5l97Wl70Hb1sqyr7DwxQDYhpB1SUuWCyNmF+
 qZMw==
X-Gm-Message-State: APjAAAVRcgd9hU22F64NQ5BTZQApBrfWxBcK4RhVcWMUlU6srL+3kKZA
 /thU43Nn8QSqJaZx5mUmphu7zg==
X-Google-Smtp-Source: APXvYqyckStytURl9B6tgOLARMKeyE9aLWO+1WYovvHBWnXcs94qq1uKa+LYIGFqlTUz76q5Qn6pxg==
X-Received: by 2002:a81:7a43:: with SMTP id v64mr30586336ywc.95.1579289467846; 
 Fri, 17 Jan 2020 11:31:07 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id m16sm11439344ywa.90.2020.01.17.11.31.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 11:31:07 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 14:30:53 -0500
Message-Id: <20200117193103.156821-3-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
References: <20200117193103.156821-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/12] drm/i915: Clear the repeater bit on
 HDCP disable
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

On HDCP disable, clear the repeater bit. This ensures if we connect a
non-repeater sink after a repeater, the bit is in the state we expect.

Fixes: ee5e5e7a5e0f (drm/i915: Add HDCP framework + base implementation)
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.17+
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-3-sean@poorly.run #v2

Changes in v2:
-Added to the set
Changes in v3:
-None
  I had previously agreed that clearing the rep_ctl bits on enable would
  also be a good idea. However when I committed that idea to code, it
  didn't look right. So let's rely on enables and disables being paired
  and everything outside of that will be considered a bug
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index eaab9008feef..c4394c8e10eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -773,6 +773,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 	enum port port = intel_dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
+	u32 repeater_ctl;
 	int ret;
 
 	DRM_DEBUG_KMS("[%s:%d] HDCP is being disabled...\n",
@@ -787,6 +788,10 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
+	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
+						   port);
+	I915_WRITE(HDCP_REP_CTL, I915_READ(HDCP_REP_CTL) & ~repeater_ctl);
+
 	ret = hdcp->shim->toggle_signalling(intel_dig_port, false);
 	if (ret) {
 		DRM_ERROR("Failed to disable HDCP signalling\n");
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
