Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8122B205695
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA5406E9E6;
	Tue, 23 Jun 2020 15:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EF96E9E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:59:33 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id a14so3573401qvq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KisYHkYfo7WVdyV9vMO6Rds8JSth48F7ynwvNzantf0=;
 b=QKEH6mYkeuVKOqfaPI7fWG4WfNi/9q0AiZ0PubCeIGoSu1RTgMXvRPfzUQQFSv/MVy
 hX1DTvmp6q1oDr0BtTPSuSywxxImXgQ3yYkZwNYvLa2hQVgcZIzMl3pJU4GqbJ4tdRx6
 ABETT5jnqWe4G7vt2JijgurP7pGiM4tUeVAZM3DkRwZfVEfueW+D2sT9WaqDUwPLiB/G
 DepIeTlA3SiVWEc4PxCm7coHJfJtow1leFtzMUQ3e0wuNteB+xvLALff/fB93Jdx9dhv
 KVM1zc/K57twq/RJLGE4SOKmV/3e0gIgW2TeUx+XTzZ7DDzzxqQktL6gNyDVqR65vGde
 drEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KisYHkYfo7WVdyV9vMO6Rds8JSth48F7ynwvNzantf0=;
 b=FIqtWl+R5NA4lW3igVDylkREPv91l0c/ReR5VfNGVPnGscRH0mDZM5OHKimFwkBRH7
 ILXG0zmm3mBL1mt2PUXd0HedBPVTdmMzFAr3h6KzGZh4Wiq7+8ZExVV23TAu/HE/ljI1
 kS6FXjmXmfwVGMKzFD6muQFg8j6fKX6zxPLJn9YbOHbpdwKVYzInUoNkKOkLP54bW8BG
 CxlKYRxKXey5asoWBg4xjrpSYTggnpy4yJ7/XcUxH94CcchQAKQpHRmMBLeu+pWvu2Y5
 nQM+dVGIs5vJABmU4QmsEm3iF4uosojQ4kfRiRci3fmldbvY2Tfr+D6yBc2xmyhS/nt8
 6neg==
X-Gm-Message-State: AOAM530AS3gYWytzVTegVwtdXHsWoySvC7E0K3wVihPrZ6wTa4HqDA1h
 4xgvjY+SJb/NdWoRBJnkAatejQ==
X-Google-Smtp-Source: ABdhPJyCFupxKeeURsrS87d88VFySVOrkAsmsn0WMsNvNl9wr2GE6boipV8H0dRbk05CSLDmtPOsKg==
X-Received: by 2002:ad4:4a26:: with SMTP id n6mr27674363qvz.176.1592927973193; 
 Tue, 23 Jun 2020 08:59:33 -0700 (PDT)
Received: from localhost ([166.137.96.174])
 by smtp.gmail.com with ESMTPSA id k1sm880510qkj.28.2020.06.23.08.59.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jun 2020 08:59:32 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:59:00 -0400
Message-Id: <20200623155907.22961-11-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200623155907.22961-1-sean@poorly.run>
References: <20200623155907.22961-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v7 10/17] drm/i915: Support DP MST in
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Although DP_MST fake encoders are not subclassed from digital ports,
they are associated with them. Support these encoders.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-9-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-10-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-10-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-10-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-10-sean@poorly.run #v5
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-10-sean@poorly.run #v6

Changes in v2:
-None
Changes in v3:
-None
Changes in v4:
-None
Changes in v5:
-None
Changes in v6:
-None
Changes in v7:
-None
---
 .../drm/i915/display/intel_display_types.h    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1503403a808b..811085ef3fba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1525,6 +1525,18 @@ static inline bool intel_encoder_is_dig_port(struct intel_encoder *encoder)
 	}
 }
 
+static inline bool intel_encoder_is_mst(struct intel_encoder *encoder)
+{
+	return encoder->type == INTEL_OUTPUT_DP_MST;
+}
+
+static inline struct intel_dp_mst_encoder *
+enc_to_mst(struct intel_encoder *encoder)
+{
+	return container_of(&encoder->base, struct intel_dp_mst_encoder,
+			    base.base);
+}
+
 static inline struct intel_digital_port *
 enc_to_dig_port(struct intel_encoder *encoder)
 {
@@ -1533,6 +1545,8 @@ enc_to_dig_port(struct intel_encoder *encoder)
 	if (intel_encoder_is_dig_port(intel_encoder))
 		return container_of(&encoder->base, struct intel_digital_port,
 				    base.base);
+	else if (intel_encoder_is_mst(intel_encoder))
+		return enc_to_mst(encoder)->primary;
 	else
 		return NULL;
 }
@@ -1543,13 +1557,6 @@ intel_attached_dig_port(struct intel_connector *connector)
 	return enc_to_dig_port(intel_attached_encoder(connector));
 }
 
-static inline struct intel_dp_mst_encoder *
-enc_to_mst(struct intel_encoder *encoder)
-{
-	return container_of(&encoder->base, struct intel_dp_mst_encoder,
-			    base.base);
-}
-
 static inline struct intel_dp *enc_to_intel_dp(struct intel_encoder *encoder)
 {
 	return &enc_to_dig_port(encoder)->dp;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
