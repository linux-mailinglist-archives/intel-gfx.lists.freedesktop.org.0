Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E77B78741B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA15F10E592;
	Thu, 24 Aug 2023 15:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63C010E592
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:26:47 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id
 d75a77b69052e-4103c24a989so42494031cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692890806; x=1693495606;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=riZEDBsxGUxYiBNsNfBSJSSrSo3XS8od82L/0Yht0fo=;
 b=GZ1l5wFH2Zl1dkTHxQqRhY2R06iWNsYfr59yeRfORO2fjNXN3CmqO59QVrTH5bbIms
 otdRO0NaBhSYjCNZmE3OFWbFCX8+jMOe6kgE3aGVf+F2GDwLnsagV0OOrsV+3C5vfekm
 uiZm9lgqbOFH1U1pxFzV2A3PQLBG0QYq54BZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692890806; x=1693495606;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=riZEDBsxGUxYiBNsNfBSJSSrSo3XS8od82L/0Yht0fo=;
 b=TM0r1J2inbUJnWf+GaV+Wxx7CDE+FgV1zsNSXXpxXTnv1wf/N+pahs1+MVyKAzk9wm
 dAS16QTGKV1gfzynBBBPxXMqHwRxktdVTVMnTALZvtSlZ9g7d8DSKZudTx1voDOyDYyj
 +MMJVVMKsPrrmmOEJkdhGs0wlsTBLi91LpaYWb1UGtjMOKlNtQjBt2Gqbhco/+9MFH32
 gggpAKcCGdp7bV9w5B8CD3EuvAbnYMaMY+tD5LgdW0aU9JL8Gaz+HXXpQXXWLQl6R5AW
 4MdFEOXefLhWtXVLFDZNmdGttFm5akwwv2mis6DzyDAEmWc2KbcqlgYXcWAY3v4HDb5V
 JR+Q==
X-Gm-Message-State: AOJu0Yxq1/VYjoKeTh8koS66pTW2qXklBcL7C2yhhD2e9z7ksM2iG1uq
 2nBeJ4y+AFWKsGwl7Q9XlwFVSAANw7LH6CnjNIM=
X-Google-Smtp-Source: AGHT+IExUwacnyxzyr3JrW7jAeWkKo1Gxcud0PEjF81FecymO9/xyoACZeu+zhIruEGlS0xJRESMGQ==
X-Received: by 2002:ac8:7f47:0:b0:410:9c04:84eb with SMTP id
 g7-20020ac87f47000000b004109c0484ebmr11768694qtk.17.1692890806658; 
 Thu, 24 Aug 2023 08:26:46 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 v10-20020ac83d8a000000b0041079ba4f6bsm4423014qtf.12.2023.08.24.08.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 08:26:46 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:25:17 -0400
Message-ID: <20230824152631.401621-2-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230824152631.401621-1-gildekel@chromium.org>
References: <20230824152631.401621-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915/dp_link_training: Add a final
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

Change-Id: Ifc0f6a1ee15cc02da6d65a3eeb9e2cf4e8adb8ec
Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 49a34298b1834..2b8d2ee08a2b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -274,8 +274,12 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,

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
@@ -316,6 +320,9 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	switch (intel_dp->max_link_lane_count) {
+	/* This occurs when max link lane count drops to 0 via link training fallback*/
+	case 0:
+		return 0;
 	case 1:
 	case 2:
 	case 4:
@@ -650,7 +657,14 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		intel_dp->max_link_lane_count = lane_count >> 1;
 	} else {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
+		/*
+                 * Ensure all of the connector's modes are pruned in the next
+                 * probe by effectively reducing its bandwidth to 0 so userspace
+                 * can ignore it within the next modeset attempt.
+                 */
+		intel_dp->max_link_rate = 0;
+		intel_dp->max_link_lane_count = 0;
+		return 0;
 	}

 	return 0;
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
