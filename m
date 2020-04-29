Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C66D1BE7E5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973EF6F3CE;
	Wed, 29 Apr 2020 19:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53CB56F39A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:21 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id x12so2985254qts.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6eXN93n5WsbFLFCMW80MEZcP/cByGzMxe2MgUPU8/k0=;
 b=L0zCC/L8v9LJJGMnmWTLbnCWMCmQNYJMf7QTGkcxRJDE6YmYxBiyXnOrQcC3m0l1oI
 4KSA7yaWr7WToAPSW9NTTyfTtedlpkKJqQmtsLnhECbl80oAhY8Jy8i/XGMX/9eNE1w0
 /LZMak9K8WiXeMo3u+2/Wl3szyvG6MNs7QxLf2/ouW++TAwsTrN3QFbGefnPgdv2xj8D
 tDkii6OwSMZWUIiNpFCPiv4jiO3fAFmsfKxQ+gMQSf3kLDrDNKHATrTcksf57Kf3J0b9
 AlEnGFXJYH0mJT/vcbicdk7EtovSVt13zEcY0jcgU4uhAhTg8hZm5ixE/58FuwaP7Y6U
 iOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6eXN93n5WsbFLFCMW80MEZcP/cByGzMxe2MgUPU8/k0=;
 b=KNmcRgAWRzKDySjnVXB+zaLakYlmjL7ZIIeKIeIOEeltzuGeEZ3W1UG25erQ2aF2sr
 rgNP5Lvi9RZvMATAxLEHuXk5w9BkrBmo8aOQHNOvGw20VGZB8fP5ieL8w2CY8KeDfFr5
 v+7IO37Un5ptoIHm3Bqnafdr3cyG1qeYbZub/+KvAmdhjHoFr4UOduxiJS3AT0M7Z5/z
 m/9w59/O7JgU+Lm5rHXly1l7R75Kezg9rFGb/m73hzKfSTDuJ/r+Yl0JrmrGhsDvthfw
 BGhUFY5e5BTFcG7ErOU4SDMORpY0w0r83O8mO6U5Nn/7MW3pe+p56wvTbleahI+MTuqS
 2zdw==
X-Gm-Message-State: AGi0PuaHWXynQcozqZc/9UpCBMriUXk+wiHPNzqHVnigpV5Y6eZH3TZn
 52FkpKEqu7BYgAc30MDsEj0iPA==
X-Google-Smtp-Source: APiQypIIYGb9JyK3D/uHYr7OG0Fx5C4VJY+BKKFNSeadFySk6dCRyxl0jDjC5qaY0uuDtyL+94HDyg==
X-Received: by 2002:ac8:7096:: with SMTP id y22mr11020900qto.251.1588190120544; 
 Wed, 29 Apr 2020 12:55:20 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id x24sm174595qth.80.2020.04.29.12.55.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:20 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:54:55 -0400
Message-Id: <20200429195502.39919-10-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
References: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v6 09/16] drm/i915: Support DP MST in
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
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
---
 .../drm/i915/display/intel_display_types.h    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 69edfab4e266..f17911e25452 100644
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
