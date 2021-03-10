Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779AB334A13
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 22:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23DE6E3AC;
	Wed, 10 Mar 2021 21:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B3B6EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 21:49:06 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id 30so1595492qva.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 13:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QEd5AsA5xg18eVkLGLl1ZQeCR2oZqmgoHrlt2YFADVM=;
 b=TSm1Aof5H44JIYwWrR5poEzpmEUdulZ0a0a+yJfZJv0fnNS8/uW1B6RJWyiXYGHj0P
 4kA5j0l62xNPC5ghGmVMoTZI9GJOoj0bsaLucnlV1UXcRt2h9uxREgwW1quyj2EnWa4j
 UGuOrR7NeMHXxim7do+7QPgGxs5IGC7PgsnfffbuZhymIYDFPkAmQi4wU5VfbUftKvIL
 GebztBkmh2rFMtLsm/g5uptsQW5vVlky6d2Kl216jhW0PFlu1NUCeT0E7nA9H5FDhUgd
 oWAm70QgbyNa0wPc49RHx7xd5hBG4+8AG4KHm7pnkjtZeFknGTG9DKk/YbaY3cEUfQLU
 3U3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QEd5AsA5xg18eVkLGLl1ZQeCR2oZqmgoHrlt2YFADVM=;
 b=qJylgw7lgv74gjy06n3jbOMufbpk50SkIecwz+O12S7d30AAGRdj2/lcaGyNjWYZ2y
 x63IMDelZ1gj4tjNrnsKHejMGE6bfgtSO2lb6jxkGITm+daxXnz2LgHe8mxdO8PVmKnX
 7CNEwEilPIToLbnjZ9met1kDW+HIB2S77UqLtcmSUeBAO2kM7c4mDxb3eNDDAKe05dj8
 sFj3M0pTnf9wXJbK+eiLIBlVvqD8RFBtHK6w5l4kALwY2OWeOdhlp82RXiw3j75ZMiDT
 JxCJUMxMzqrixdyoD4UHahFODmi5pyFROb7li9r3VdnB1bMDUWcjshn7oTGXD2EF/1tn
 6H8A==
X-Gm-Message-State: AOAM533x9uIi1P+mAJ0Fqzz0JqfqE8RVIMkcroye7qfcWyzXmBJyTh1L
 lktJ/Q8+rn6Nf/19xnV81Sg6iWveG4NnpA==
X-Google-Smtp-Source: ABdhPJzQXO4kE3VQdkvVOwo/o1DDoChi4gZkl7dHDwEGtnHOUlIMQD16l7a194B1N1dIXu+9uvDo/Q==
X-Received: by 2002:a05:6214:2464:: with SMTP id
 im4mr4873762qvb.61.1615412945747; 
 Wed, 10 Mar 2021 13:49:05 -0800 (PST)
Received: from localhost ([172.58.155.143])
 by smtp.gmail.com with ESMTPSA id c125sm482464qke.117.2021.03.10.13.49.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Mar 2021 13:49:05 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 10 Mar 2021 16:47:57 -0500
Message-Id: <20210310214845.29021-2-sean@poorly.run>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210310214845.29021-1-sean@poorly.run>
References: <20210310214845.29021-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp_link_training: Convert
 DRM_DEBUG_KMS to drm_dbg_kms
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
Cc: Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

One instance of DRM_DEBUG_KMS was leftover in dp_link_training, convert
it to the new shiny.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ad02d493ec16..19ba7c7cbaab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -26,12 +26,13 @@
 #include "intel_dp_link_training.h"
 
 static void
-intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
+intel_dp_dump_link_status(struct drm_device *drm,
+			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
-
-	DRM_DEBUG_KMS("ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
-		      link_status[0], link_status[1], link_status[2],
-		      link_status[3], link_status[4], link_status[5]);
+	drm_dbg_kms(drm,
+		    "ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
+		    link_status[0], link_status[1], link_status[2],
+		    link_status[3], link_status[4], link_status[5]);
 }
 
 static void intel_dp_reset_lttpr_count(struct intel_dp *intel_dp)
@@ -642,7 +643,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		/* Make sure clock is still ok */
 		if (!drm_dp_clock_recovery_ok(link_status,
 					      crtc_state->lane_count)) {
-			intel_dp_dump_link_status(link_status);
+			intel_dp_dump_link_status(&i915->drm, link_status);
 			drm_dbg_kms(&i915->drm,
 				    "Clock recovery check failed, cannot "
 				    "continue channel equalization\n");
@@ -669,7 +670,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 
 	/* Try 5 times, else fail and try at lower BW */
 	if (tries == 5) {
-		intel_dp_dump_link_status(link_status);
+		intel_dp_dump_link_status(&i915->drm, link_status);
 		drm_dbg_kms(&i915->drm,
 			    "Channel equalization failed 5 times\n");
 	}
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
