Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1ED78112B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 19:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCEA10E0E1;
	Fri, 18 Aug 2023 17:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A4110E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 17:03:00 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-649463dc0b8so5960696d6.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 10:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692378179; x=1692982979;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IWIpuvBgqpQhw0RlQbILyIb43Jtf4lwmYq0/cqIwMOU=;
 b=MMEScymv4J4CEMzPByn2aa8eE9JuYtAWM1NZkxG6icpW/9HDxHfF3GNzXc6zu1U7zn
 AaRK5GUrlLnzmJOR5yeaiQ91ulQnodf0Qf7dLoTwECoI5G4Swz3pqR0jjfUYWFKa3uBj
 3UbvaacnPGQqpvxTelonOChI7NLe6riZCRqYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692378179; x=1692982979;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IWIpuvBgqpQhw0RlQbILyIb43Jtf4lwmYq0/cqIwMOU=;
 b=dCOhdl22JmmHuTEo6my1weRNtPdq6oUqD/ZuGZ/fCG0sh+XGMVGNCQrVaUCS6EwWW8
 mRVWHvzAXdW7cwu3Y3PaNWRNthrI0Bw0CbLOBxKW5fUao/UWfHF1/MdnapfnErB8oPl4
 lli9xSaKrjt9Gz+2OGt1+X4x8lSpRJSEtMQ82Iwn5laf70jA8eFNtOhkXIUgHqFzp5Gh
 OCYGy+k2+rBzqOT8yHCi7tfihQfPOK4jBT6QJx/t/nJh9pGSEqMgN/kU+yuFOZXfsxzs
 B/P1ru9I2RK72YLAgr2QYXLJxdUZGTGtwPbd94li+BHZxboyE/qqZxghJq7wiYldIupP
 4hjw==
X-Gm-Message-State: AOJu0Yxeud7XSvgrsaCnactSjEtL3KppyA08/Xo7jMdXHambiN+BRqE6
 MiXoN/tBlsp/4EI09QDrnQ7LfexUwKkXBW1raQo=
X-Google-Smtp-Source: AGHT+IHqFCw2tGNS4zezgytXWdjkNd/9sf+P55U50l8H6xegIX5/k9ygZwpoJgblnxJ+CiKHNr1C7g==
X-Received: by 2002:a0c:ab8b:0:b0:647:14eb:f98d with SMTP id
 j11-20020a0cab8b000000b0064714ebf98dmr3639435qvb.51.1692378179234; 
 Fri, 18 Aug 2023 10:02:59 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:281:cb2f:c9c3:f2f8])
 by smtp.gmail.com with ESMTPSA id
 cx12-20020a05620a51cc00b00767cfb1e859sm649278qkb.47.2023.08.18.10.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 10:02:58 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 18 Aug 2023 12:59:18 -0400
Message-ID: <20230818170156.2194015-2-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230818170156.2194015-1-gildekel@chromium.org>
References: <20230818170156.2194015-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dp_link_training: Add a final
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
Cc: Sean Paul <seanpaul@chromium.org>, Gil Dekel <gildekel@chromium.org>
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

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Manasi Navare <navaremanasi@chromium.org>
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 964bf0551bdc..1e4dae8aad90 100644
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
