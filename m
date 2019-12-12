Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC211D6AE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA2A6E13F;
	Thu, 12 Dec 2019 19:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6EB6E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:47 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id k17so890436ybp.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bn8u7pWoGg8zc5v1qOSMV2dK0Bpj2CVY/zjmmsWGbeU=;
 b=Lq8o1DtCawZ2UaJpL+tR++oWBU7eAZYFAf6ClWLF+HkVmTGVZTSrK3mizEeTsj4G7U
 6M5OjJaE6/OfpDgs0c1juJghoFRIdfxEPYUTOSvyu8pBcrPYSLS2rWwbuiNCUE87hGZ2
 nMev0T8C83X6zDJtWwMaT8hqKT1eFjqoE3AXONpYEqEOqYG0ZRInGEuDqLxKmi3HpUFz
 VXVAPOHXGsLck6Iko3yOGWEJKLDlwyAPna8mkevPp7S0mP9PzoQ0JkzPArh1dffkYD2W
 eku2zSWPLo7GMsu7BjmGd9sc6Uxp9x/w0ttjgRvHGe+q0kORnsjEW2GTUucSNwed33O8
 Nmeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bn8u7pWoGg8zc5v1qOSMV2dK0Bpj2CVY/zjmmsWGbeU=;
 b=EnOleyylT1h9mlOEaLl5nregh5uPg28ElJckwBUETgmo0K2fRXSfqPZDpzEmItoHrS
 VjmZ9xT1zyxNMDGTigN9RP91xrOzIQJ5UkSoCaYi1PAUYjRxAXxDeZ5X+QEADudCpnro
 TC/LxjIqHiPnTO04Lm8XCT294bjA+lp7THB86TEBdNY2Q9VPosKVd7Mbq10tzYWTIuaS
 KsNIA+zWrMdxMRf1plL0hDX+9cfxv+rh0/YzxOWDVO8JU8V5ZJ/HdDzdTkdYDFTaDPAZ
 OUxhuW/5VaAjeIDuXDe6LWTHeazki0nhEYBoqN8MnoGZyTQWijFUr6Uc/IE2fBGwNdaj
 1xIQ==
X-Gm-Message-State: APjAAAXjoxUuIdEYimeaop4rxx0eKjO+AMsmD5miGKjHPm06nWqvEXfq
 xgdHDwNkLStV08y0HDoSRQXNqg==
X-Google-Smtp-Source: APXvYqyCB/OMGpF38Yo211kR+L9o/xTHWxPl81L2KDxLemk7M0v356TJayX4RSNA4Tl01jjJlobAWw==
X-Received: by 2002:a25:208b:: with SMTP id g133mr5761792ybg.71.1576177366194; 
 Thu, 12 Dec 2019 11:02:46 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id x84sm2815532ywg.47.2019.12.12.11.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:45 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:27 -0500
Message-Id: <20191212190230.188505-10-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/12] drm/i915: Support DP MST in
 enc_to_dig_port() function
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Although DP_MST fake encoders are not subclassed from digital ports,
they are associated with them. Support these encoders.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-9-sean@poorly.run #v1

Changes in v2:
-none
---
 .../drm/i915/display/intel_display_types.h    | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8e98840fc597..ac5af925e403 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1459,6 +1459,17 @@ static inline bool intel_encoder_is_dig_port(struct intel_encoder *encoder)
 	}
 }
 
+static inline bool intel_encoder_is_mst(struct intel_encoder *encoder)
+{
+	return encoder->type == INTEL_OUTPUT_DP_MST;
+}
+
+static inline struct intel_dp_mst_encoder *
+enc_to_mst(struct drm_encoder *encoder)
+{
+	return container_of(encoder, struct intel_dp_mst_encoder, base.base);
+}
+
 static inline struct intel_digital_port *
 enc_to_dig_port(struct drm_encoder *encoder)
 {
@@ -1467,6 +1478,8 @@ enc_to_dig_port(struct drm_encoder *encoder)
 	if (intel_encoder_is_dig_port(intel_encoder))
 		return container_of(encoder, struct intel_digital_port,
 				    base.base);
+	else if (intel_encoder_is_mst(intel_encoder))
+		return enc_to_mst(encoder)->primary;
 	else
 		return NULL;
 }
@@ -1477,12 +1490,6 @@ conn_to_dig_port(struct intel_connector *connector)
 	return enc_to_dig_port(&intel_attached_encoder(&connector->base)->base);
 }
 
-static inline struct intel_dp_mst_encoder *
-enc_to_mst(struct drm_encoder *encoder)
-{
-	return container_of(encoder, struct intel_dp_mst_encoder, base.base);
-}
-
 static inline struct intel_dp *enc_to_intel_dp(struct drm_encoder *encoder)
 {
 	return &enc_to_dig_port(encoder)->dp;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
