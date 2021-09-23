Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24E4415D3E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857D46ED12;
	Thu, 23 Sep 2021 11:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E956ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:27 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id q11so14488527wrr.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=CWmaT6p+IP5wmKpo0j6GfDewzCHSGfP7rKr6Na4PmWmJeHeZVhnkSxiGMkjzGf08P7
 cqjlArXG96JGEZmsPCLLMM4rBblNXCg0pEstUfRuwh980hU+INLdSqISEmO6t4P8VELJ
 TGPBr6C2uSmHM+1SJKwcXLHiQqbbynxq7rDxkxM19a7uUTlVapiqwXahI3Q0/K83cFkW
 oVzumxUItaXeFPIvQkC/9IzSpIKW7eGbKRp6bgyz08xD4aWsVFw5ZnOPiIF/nKJg6pF8
 sPQMn8pNMp8NZNEWP2r5QTzlAyMxgrGs9z/0Cw77GapcfIjA8NMNd6Vs9QDcmmz952J8
 RAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETFFVmDbRxb5cxrXOen58gkxhSGsPJL2Y8O/7sOAJto=;
 b=ei1wPZqaTdY2X6ja7eWZCndJgMchHvP/FHVBMrNDtoTpL5fJTWfaU6BqsFioFdaUK2
 R3rREmxzxnme4rVhqul16GWTUjFhboFFCdcIM5X+Q5ebwECzyxMW4h4KN4Gr/8HhIBj0
 ibpAheCqUNb6uBbVMU+80TlTWGrZXqLyGXQfZUJYZeRADoBEOOrVj29jOdzBwM1XHb8N
 K/J7j0uwfn/g3cBDIC5kwrroHCvYoLGmzAb53en2woI6sRWMJ2P1z78CqM9VCF9fI4cp
 C7qbMABccpkylWu5689T9pv5L89+VI9DwLhEkzSP7mKxE6cq8vAbhEciCtEXspNVNmvV
 OMLA==
X-Gm-Message-State: AOAM530Z8mBAcWr1Egf08629UmeJTDBL7ErG+o0qU2nP/ztx7GhkasJO
 Vo6MM851Kz3cmfO2xstJax+Xk5lq+rM=
X-Google-Smtp-Source: ABdhPJyMplS32YX6/Lk8UVzT0hEEJhan8X6KIgu4LXwrqOXerdrsAGL4sJjwldYkvKQEO0zLeocoKg==
X-Received: by 2002:a1c:9dd2:: with SMTP id g201mr14287569wme.46.1632383785566; 
 Thu, 23 Sep 2021 00:56:25 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.24
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:25 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:02 +0200
Message-Id: <20210923075608.2873-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 19/25] drm/i915: use new cursor in
 intel_prepare_plane_fb
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

Simplifying the code a bit.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 134a6acbd8fb..d32137a84694 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11290,6 +11290,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
+		struct dma_resv_iter cursor;
 		struct dma_fence *fence;
 
 		ret = i915_sw_fence_await_reservation(&state->commit_ready,
@@ -11300,12 +11301,12 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		if (ret < 0)
 			goto unpin_fb;
 
-		fence = dma_resv_get_excl_unlocked(obj->base.resv);
-		if (fence) {
+		dma_resv_iter_begin(&cursor, obj->base.resv, false);
+		dma_resv_for_each_fence_unlocked(&cursor, fence) {
 			add_rps_boost_after_vblank(new_plane_state->hw.crtc,
 						   fence);
-			dma_fence_put(fence);
 		}
+		dma_resv_iter_end(&cursor);
 	} else {
 		add_rps_boost_after_vblank(new_plane_state->hw.crtc,
 					   new_plane_state->uapi.fence);
-- 
2.25.1

