Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7CB45531
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 12:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F2310EB80;
	Fri,  5 Sep 2025 10:46:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KZ5/y5ec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C018A10EB80;
 Fri,  5 Sep 2025 10:46:51 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id
 98e67ed59e1d1-327ae052173so1252048a91.0; 
 Fri, 05 Sep 2025 03:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757069211; x=1757674011; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N75ssSm8Um/3uGsHvwaswAdcEWrC1+q1BqxSLPoiKOo=;
 b=KZ5/y5ecHyXIBkHVzh5L7ILhWKR50mP4SXxs/4qaLAttTcqEq9nMZ+XrfCjF2NCUXN
 Hg+DKeQYc2ntF1tSscjV9GjbZItUHr21w5uujasc5N5dqccTJv0RDzZYF5Vc0NLKTFZU
 65J6s3iH46+Nwov8PdZ5OovYze8BF77b9ayTMJ97/nfKDbp03E5/rXwajQywRf2VPG/7
 xE+OiUlqzzwzCYv/chUPCXgM83TwiX3q4tiWwHFDhD2Dl8YTJV7bGztWmYlEQAVUL2wn
 lo6qELKLqet196l3zB6+NviaHTvz6FWVQYqBpMBnlCt2Jn6SLuVRFQZ3j0kpPNnRTuod
 TkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757069211; x=1757674011;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=N75ssSm8Um/3uGsHvwaswAdcEWrC1+q1BqxSLPoiKOo=;
 b=YhbMvzFJADnZMm0BOWjMoEDeTifvUJwHVur+0KUpYZs3K6SskwbbJq94Vjo2XrFbLS
 bbOc89xA2gdZN8oNzK3XtlmPSDbb6xopuLAEGZZug7j6CLW5V+rTSxaWwL1JCke548BZ
 QSI4NMMGo5WgmxoRG9/UrGxaZxH7ffeIe5yQPFlE/iq83VS0IjVfmgOfk8sKdK+06Vh+
 uy9JtWPZuqt3hgJPFYwKvGimJy3z2EDOfCPB7JzHCcw4MzPVkXd+rVu532dswVQnwI5D
 jQ6KUFahLoS6y0dq7hPAzN+bTqqPsi68Ipr3jr92SJdnhJNrzkH4bDwXWe9CNiXI0Qxv
 4TCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKm8ai3fqrxn6w3ozTSC4uYmWrurEE280cDuyIVLCNUZh+uiucJNxxs2l9qKCNKHwSMiCeo8o0xw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzUNgxGeZeqrD7E1WO9hENaPUyu7dfejReRYpSG7ta+f7s1fAjM
 WlsDFqit2cfij9wEvPWzOost6k8QD3M9GhHwDJabT9BKvNNetJv7HfJrxwJCUep7
X-Gm-Gg: ASbGncueQ1Ij85S5tvg74RKH2A+fuUEfQsN2kPt+EoIaNriLPDesfZjva5WKRNtN7NQ
 qkIJZQf1g9Be3ZEv6QMPxK3F6AlvL9/0eTE4msWj6NuVAmThqkGdZRDWVQ5jhaYVA9VTn5g6BAH
 q2cuAN8R/sE2IG+CirZiaCURhw9L0bXvq9bokiRH5uGb3QaX3beJjE7SUNZhWh2M/wO/iIEc1uM
 OQ0JYWsbmV8oq4D3wnWNwl9hro2SyOH8KoBFaNwC/WV8IJotoMVN7bhRni2F8MvX0GiHDvtjF5Y
 tYl/9SDHEE9E6rdm0uO2RkvRUT5Pd3ds3ny83/J55xTUxA6rehIXxCcy7pXa/BRQWIU1Qnh3sBw
 PhUwiVnRSyeNiRfXc3xs+b2GOIw1TCq5PysDNIwwv
X-Google-Smtp-Source: AGHT+IGG2BrplzuiqTRlxJRUhW0eusqEtbw3mNpvRdMaQj3DMEDi0JZmoBjP+nmeKEwZQwj61RcxuA==
X-Received: by 2002:a17:90b:2fc5:b0:32b:355a:9de with SMTP id
 98e67ed59e1d1-32b355a0c1emr14791408a91.32.1757069210960; 
 Fri, 05 Sep 2025 03:46:50 -0700 (PDT)
Received: from localhost ([134.134.137.72]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-77235e27440sm20316166b3a.66.2025.09.05.03.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Sep 2025 03:46:50 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/display: log fail from intel_sdvo_enable_hotplug
Date: Fri,  5 Sep 2025 13:46:25 +0300
Message-ID: <20250905104626.1274147-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
References: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Report in log if intel_sdvo_enable_hotplug failed

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 87aff2754f69..99a5ef1401a8 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2052,8 +2052,10 @@ static void intel_sdvo_enable_hotplug(struct intel_encoder *encoder)
 {
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 
-	intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
-			     &intel_sdvo->hotplug_active, 2);
+	if (!intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
+				  &intel_sdvo->hotplug_active, 2))
+		drm_warn(intel_sdvo->base.base.dev,
+			 "Failed to enable hotplug on SDVO encoder\n");
 }
 
 static enum intel_hotplug_state
-- 
2.43.0

