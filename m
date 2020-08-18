Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FE5248A23
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6267F89FC0;
	Tue, 18 Aug 2020 15:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B1F89FC0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:40:21 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id b14so18643790qkn.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OVIMBIpTtiou/vhtsc0XFyKqkDVrbxyZQK6DnrhDDDc=;
 b=QfaaW9r9YHLi5HYjLCk4BSPLhRARpCuPjWNOxJO76VNsDN/eGVVYLxJgGMHZe0Wapd
 n/O0WF30gqvwXNjwCW/8gMi+6MY1wbt9H+QsTrgZrncMbtWZUXTG4URWsOmRgkmkD81O
 qfhoeKHxWzqlJ0qcvOkoKFaMYSczxAMhn152GWTBpiNsOY2aYtR+PGemT843mhfs+M37
 uGQX4VSbxHy9cTnEDTd9pJl93V+0FE03/M3PULopzC3Un+U5+pU5E0GnEpaGQdIeGRPu
 ypcz4wR+UQGPmiG3+6+n6+tOvFLQdd+QhfvZAGn2B0H2+vdWZhFKCbswnjAL8SPmUhpB
 EKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OVIMBIpTtiou/vhtsc0XFyKqkDVrbxyZQK6DnrhDDDc=;
 b=Tra4Fub2VfkMpAggnykXWfpKQQ2yEb6gbUHis9bB82Jtq9mSJrM51ipphQmEkOUVbp
 0kuCAfvy+THk/d4v5Bv8hvilebZAq2HqiySn9IVbTpQQRdilFGh5yMk61awCT5uHcyWp
 an6MZ14xOgeHcrPRuMpA4bsmZHnDFJAfATfRwQ0qqTOJXq12wK7qT7r5ze+48vbarwAq
 v3E/TMdbQ1HsbXgOsrgTRxIVYZXrfpGJ7QW00d4Q8Um4ujWEFZTd+Oxbu0a/6bPOnSM8
 WpLxl3uy99otMA9o7nI2LrmtWZ3uqC7j8tckkzc+vBfdXpXfGkPDtpTXkzzY4igMZjfN
 /y1g==
X-Gm-Message-State: AOAM5326yvr1p85rKVKugED6NXPwaXpeHmsilGH0LVfghwazpk3jOPqX
 TpMMiNbSeRAK4ZUTMSEv/Ens6w==
X-Google-Smtp-Source: ABdhPJyheLmR3dUTHqAXmqG41jMVX/Rgjv4V7Yso77I+0HbfeoV3Th+hXo7+b4hCeKdJbKWxvjBymA==
X-Received: by 2002:a05:620a:1292:: with SMTP id
 w18mr17067913qki.158.1597765221076; 
 Tue, 18 Aug 2020 08:40:21 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id h24sm20918765qka.111.2020.08.18.08.40.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:40:20 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:58 -0400
Message-Id: <20200818153910.27894-11-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v8 10/17] drm/i915: Support DP MST in
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Although DP_MST fake encoders are not subclassed from digital ports,
they are associated with them. Support these encoders.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-9-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20191212190230.188505-10-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20200117193103.156821-10-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20200218220242.107265-10-sean@poorly.run #v4
Link: https://patchwork.freedesktop.org/patch/msgid/20200305201236.152307-10-sean@poorly.run #v5
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-10-sean@poorly.run #v6
Link: https://patchwork.freedesktop.org/patch/msgid/20200623155907.22961-11-sean@poorly.run #v7

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
Changes in v8:
-None
---
 .../drm/i915/display/intel_display_types.h    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b6d0ad171432..5e01f2f840c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1531,6 +1531,18 @@ static inline bool intel_encoder_is_dig_port(struct intel_encoder *encoder)
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
@@ -1539,6 +1551,8 @@ enc_to_dig_port(struct intel_encoder *encoder)
 	if (intel_encoder_is_dig_port(intel_encoder))
 		return container_of(&encoder->base, struct intel_digital_port,
 				    base.base);
+	else if (intel_encoder_is_mst(intel_encoder))
+		return enc_to_mst(encoder)->primary;
 	else
 		return NULL;
 }
@@ -1549,13 +1563,6 @@ intel_attached_dig_port(struct intel_connector *connector)
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
