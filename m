Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C2C77D98C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 06:57:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA1810E2C3;
	Wed, 16 Aug 2023 04:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5394410E2C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 04:57:08 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-584139b6b03so78317727b3.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 21:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1692161827; x=1692766627;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=lmF5oy9desuzUwBbJQTmPeTiITiMll+wB/uHgXnLzDU=;
 b=qw7vTgpbCgxlCj6A4mQNY3xBj1vXeJxzZG9DhlqIJP5inl98axZXu4gyhx05OmS77l
 9OZJqfTvki2zWbENFG+hnTvVBYZvj3X2AwrAnmD3eBWzr4qEEeONrirqAdF6gABC6afn
 w9P2YPYKDGCie49DBcQ9kb1px4U3s/M2hZuc8evHOLJd5xiTIBlTc5V0AZwoZHnOAat9
 Lli24ZiFyr5JknzwrfjNfcVJswrb8Xthxg0/G6lCiyNL58pbq2MWDo2nqcRTNPf/8JRs
 JmkJvFexEdmWYXPmgij/ilwsVaZBf22uFm7o3LiLxuv1WVqCs4Eo47CbIfynXDtQIPYb
 Nlgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692161827; x=1692766627;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lmF5oy9desuzUwBbJQTmPeTiITiMll+wB/uHgXnLzDU=;
 b=O8EtQJwf5fAYytnVF9yCjGYs+TjfR0AJ2RrQfI2p1bnUE8OW3yMw/JC5BOSaj/suxV
 L3POV+EyrD9JKTWn+wIP7v6eRBMlq9OcaPlcfvPriy1BfX+XkY3GQqmDzipLuy+4bR9i
 LgKrWbS/ekh29xm3M00MprCKJuGJKG+7PdK8DxUTKXk4ojsRjNuT2UzmSYHmEqIC6u3h
 eqEZ2PrRjxdiCvT3Hon3xUiaCR6UN8sATYnXzppDJ5MPilLmtux9moyk9CLVhQGFTYWb
 hEGvEWP79dwt58rXkbXQdh5gaEcY1VuAb/6oub2Lsu/RTE/ycZANgsCZQvuCveL58TAN
 3GMQ==
X-Gm-Message-State: AOJu0YweM73Vl2lWXuZ2qrFRT2RFH4scsjcdvdtVxN0bWfWbu+/B8O6b
 yq3pLudUb8hgErMIo26rKQt5wiC6k5FZTNg=
X-Google-Smtp-Source: AGHT+IF91msezRjSMtY5wo8qq7i8mdUD1/jh18zkKE+M9MrYxQ3HHC1U3ga01pFm86AiGrM4CMCfRl5OVjJhG3Y=
X-Received: from pceballos.c.googlers.com
 ([fda3:e722:ac3:cc00:24:72f4:c0a8:128c])
 (user=pceballos job=sendgmr) by 2002:a81:af15:0:b0:58c:b5a4:8e1c with SMTP id
 n21-20020a81af15000000b0058cb5a48e1cmr6443ywh.3.1692161827421; Tue, 15 Aug
 2023 21:57:07 -0700 (PDT)
Date: Wed, 16 Aug 2023 04:56:54 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
Message-ID: <20230816045654.833973-1-pceballos@google.com>
From: Pablo Ceballos <pceballos@google.com>
To: Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3] drm/i915/display/lspcon: Increase LSPCON
 mode settle timeout
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Pablo Ceballos <pceballos@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is to eliminate all cases of "*ERROR* LSPCON mode hasn't settled",
followed by link training errors. Intel engineers recommended increasing
this timeout and that does resolve the issue.

On some CometLake-based device designs the Parade PS175 takes more than
400ms to settle in PCON mode. 100 reboot trials on one device resulted
in a median settle time of 440ms and a maximum of 444ms. Even after
increasing the timeout to 500ms, 2% of devices still had this error. So
this increases the timeout to 800ms.

Signed-off-by: Pablo Ceballos <pceballos@google.com>
---

V2: Added more details in the commit message
V3: Only apply the increased timeout if the vendor is Parade

drivers/gpu/drm/i915/display/intel_lspcon.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index bb3b5355a0d9..b07eab84cc63 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -153,6 +153,24 @@ static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 	return current_mode;
 }
 
+static u32 lspcon_get_mode_settle_timeout(struct intel_lspcon *lspcon)
+{
+	u32 timeout_ms = 400;
+
+	/*
+	 * On some CometLake-based device designs the Parade PS175 takes more
+	 * than 400ms to settle in PCON mode. 100 reboot trials on one device
+	 * resulted in a median settle time of 440ms and a maximum of 444ms.
+	 * Even after increasing the timeout to 500ms, 2% of devices still had
+	 * this error. So this sets the timeout to 800ms.
+	 */
+	if (lspcon->vendor == LSPCON_VENDOR_PARADE)
+		timeout_ms = 800;
+
+	return timeout_ms;
+}
+
+
 static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 					     enum drm_lspcon_mode mode)
 {
@@ -167,7 +185,8 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	drm_dbg_kms(&i915->drm, "Waiting for LSPCON mode %s to settle\n",
 		    lspcon_mode_name(mode));
 
-	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode, 400);
+	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode,
+		 lspcon_get_mode_settle_timeout(lspcon));
 	if (current_mode != mode)
 		drm_err(&i915->drm, "LSPCON mode hasn't settled\n");
 
-- 
2.39.2

