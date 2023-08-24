Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28447879A7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A2110E5BA;
	Thu, 24 Aug 2023 20:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9C710E5B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:53:58 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id
 6a1803df08f44-64b3504144cso1569676d6.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 13:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692910437; x=1693515237;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lbYHPtht31pDWnNKizt7dLhO8dz2qVeAy2pQOUOnpoY=;
 b=NHHKIv0g2gNu0NZm2jVFFZke17sz2Hi1xeg0ElQGA/Jm6r+zD3WQaAJk7nDN0LS+y8
 vLO4VUfRw7aLTyfm43lAv7m5OoHobehqmperJyog7ZK7zWX5qmin4uRax2Kir1bYDGTz
 iYDvcHh804LqL0Hd1sVrwAPOo4QR9a/eHyv+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692910437; x=1693515237;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lbYHPtht31pDWnNKizt7dLhO8dz2qVeAy2pQOUOnpoY=;
 b=MlVVKsnyor0YPvLRP1+eTB4ERrNpZjyvb5PuPFttVqquwJKyEydM3Ie3mO9p5X04VA
 4wmBLo4WvYOqVEfwAJy05Qs1TjTgqjGV+as2d++w5pUzJDMOIbSLw7WySoLP+R3srSiM
 0oaTfJ2rlPIOOtSkBqZCA29zVWvWD6uAIh9QebmwoeNtOLj7Y/uxDZh4JhEbEWp0IYZB
 uaAooF9XEhtvbPB9RJDjBTtW8OETQjrlA2ZpSI9KY7dNW7w7CR0cOCy0Zdd+qhrhk2jN
 6r7BN13Dqtcy51N31nlP/MMhQzB/0zwvu7M7Iazx/VjWif0p/Tf7Il42N2SKfg8zoxi2
 Uj0A==
X-Gm-Message-State: AOJu0YxJo+/GDY8kfmfgx+LGYoZMWSrSbLUDFoE5yTo7ZgztiPbI95L/
 RcBUKuHjUp3Wb+UMyFeKU7DLmdDg5FjkjbRFEgM=
X-Google-Smtp-Source: AGHT+IFiVJOd4KML3x4eVNMPjMGguJR4j6N11CQy6AOXEp4AEnkN6mUalwaiteIIJ5VznutRDCHIZQ==
X-Received: by 2002:a0c:aa42:0:b0:647:290f:b9a with SMTP id
 e2-20020a0caa42000000b00647290f0b9amr14245061qvb.62.1692910436958; 
 Thu, 24 Aug 2023 13:53:56 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 d2-20020a0ce442000000b0064f5020df91sm62038qvm.28.2023.08.24.13.53.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 13:53:56 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:50:16 -0400
Message-ID: <20230824205335.500163-2-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824205335.500163-1-gildekel@chromium.org>
References: <20230824205335.500163-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/6] drm/i915/dp_link_training: Add a final
 failing state to link training fallback
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of silently giving up when all link-training fallback values are
exhausted, this patch modifies the fallback's failure branch to reduces
both max_link_lane_count and max_link_rate to zero (0) and continues to
emit uevents until userspace stops attempting to modeset.

By doing so, we ensure the failing connector, which is in
link-status=Bad, has all its modes pruned (due to effectively having a
bandwidth of 0Gbps).

It is then the userspace's responsibility to ignore connectors with no
modes, even if they are marked as connected.

Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7067ee3a4bd3..2152ddbab557 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -276,8 +276,12 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,

 static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
+	/* This occurs when max link rate drops to 0 via link training fallback*/
+	if (index < 0)
+		return 0;
+
 	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
+			index >= intel_dp->num_common_rates))
 		return 162000;

 	return intel_dp->common_rates[index];
@@ -318,6 +322,9 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	switch (intel_dp->max_link_lane_count) {
+	/* This occurs when max link lane count drops to 0 via link training fallback*/
+	case 0:
+		return 0;
 	case 1:
 	case 2:
 	case 4:
@@ -672,7 +679,14 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		intel_dp->max_link_lane_count = lane_count >> 1;
 	} else {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
+		/*
+		 * Ensure all of the connector's modes are pruned in the next
+		 * probe by effectively reducing its bandwidth to 0 so userspace
+		 * can ignore it within the next modeset attempt.
+		 */
+		intel_dp->max_link_rate = 0;
+		intel_dp->max_link_lane_count = 0;
+		return 0;
 	}

 	return 0;
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
