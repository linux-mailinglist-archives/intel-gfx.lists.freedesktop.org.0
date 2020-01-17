Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1CF1411C7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182206F8EA;
	Fri, 17 Jan 2020 19:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA6F6F8DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:31:17 +0000 (UTC)
Received: by mail-yw1-xc42.google.com with SMTP id l22so14845340ywc.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s3OkfGIoleUm6Rec1dUioh8HFNHKiCT+sLnujPKvY3w=;
 b=V4rTLTFz7oekQnIaAzZ0x/kQRqewFQHPankUsezx/D9KTFTM56/vb4ZvkCpRAhthYz
 ggtS6x8+w+gE6uedyfexbeqtv1gBh3pk9ykTsaR6T+GtctQ5M297NNZ4PZ3P3p5L+D+Z
 BbI5UVsPz8Z7efxNKSiE24Ewn/31h73b3NcI0MP43lWWy+T2BAXgw6S097wYSo2stQvM
 XMZC/XxJRenXJAbVTWVNIuvZpCQY6nG0OW4UtNTSNlrOuRzMa/FGTwaMdgPaGnhflgy1
 7By0T/APf4wtXJgWggmFUDGjkIBY2H/vf5Qku3/sy+WfkvvXJCiHxRS8Hpb2K1v+QxWV
 cNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s3OkfGIoleUm6Rec1dUioh8HFNHKiCT+sLnujPKvY3w=;
 b=tUl+i1KSZBYoH9EqymXrIxVgVb3lB/rGUgGa/u8rbVZsdYXY83qVHYbfjgZUCCFjw9
 Z05N+xJIsmOxxY/LN+1q8AWRRvdMzSsNvWj+nGnN0Gc+zgNi6acPZ3y/TLBmLPn4tuOI
 woGct0k982EYGfzuaHimAGkWg/hO6/nIR1EQmpR3a2GkxKkIBgZO7LSqO7KeXd9FnKAj
 uAbsTvBRLK3REYXM2tEOOZEQWGkqhH0J86fBuuotIBuCvASQtgA12NZvTDk+pY1jDJcy
 8PBJuFAesEaZZQXIMjoM4g+QrWrw9JPtc8Flvr0MmjpICdPQBw4DWSRDHTl7FvSkNCPv
 Dx+g==
X-Gm-Message-State: APjAAAXb+l/TOTd9Qnhvn+GMpiwWNPOJfGR/mTb01dmKPLKDKldVvd7u
 WHZpEi3QSarwQL5fFQE98YkOCw==
X-Google-Smtp-Source: APXvYqxNTK9OOHmQjK67mkq0DyWDKlvmtO4zuL5OC2OlrkCBm06kYY/0ZM6EpUly6J7H0iaAPZCpcQ==
X-Received: by 2002:a81:9a82:: with SMTP id
 r124mr29108959ywg.469.1579289476593; 
 Fri, 17 Jan 2020 11:31:16 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id s5sm11732242ywb.34.2020.01.17.11.31.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 11:31:16 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 14:31:00 -0500
Message-Id: <20200117193103.156821-10-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
References: <20200117193103.156821-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/12] drm/i915: Support DP MST in
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
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-10-sean@poorly.run #v2

Changes in v2:
-None
Changes in v3:
-None
---
 .../drm/i915/display/intel_display_types.h    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b488e8b1478e..d7f4897a1eb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1460,6 +1460,18 @@ static inline bool intel_encoder_is_dig_port(struct intel_encoder *encoder)
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
@@ -1468,6 +1480,8 @@ enc_to_dig_port(struct intel_encoder *encoder)
 	if (intel_encoder_is_dig_port(intel_encoder))
 		return container_of(&encoder->base, struct intel_digital_port,
 				    base.base);
+	else if (intel_encoder_is_mst(intel_encoder))
+		return enc_to_mst(encoder)->primary;
 	else
 		return NULL;
 }
@@ -1478,13 +1492,6 @@ conn_to_dig_port(struct intel_connector *connector)
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
