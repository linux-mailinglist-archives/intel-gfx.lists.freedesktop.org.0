Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C443296EAB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0195D6E544;
	Fri, 23 Oct 2020 12:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881E26E544
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:39 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id t9so1554425wrq.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K3NZe7vLn6lD7nkDNbTprNLF6a+N9v1C4Qxxx3dRr+E=;
 b=OJpDzpwTCtfzVlTdltudrfVKKES1edfNiS35w78x9FwDemsY3lSs+MLaUdUVQbJpij
 dKAosS1nxMHPgDo9SZ6KaLlc1KTEcKmWWwqTjJ0a0Gb1LOebCLYats1VPhAmFInNfAFn
 5ykwXufwXxwmuyHPkAc7oKXCl2rcqd29y0Hzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K3NZe7vLn6lD7nkDNbTprNLF6a+N9v1C4Qxxx3dRr+E=;
 b=pBro2L4KGy9KG1ctiW1d0z6zsAbBSeK+dT/3leGT/pTD5/2evX7sV91qdTSO3HVCj9
 mT49tBxbwEDTgCRe5Et2rs8s32Gg7Aocr4/L1IZsBdr0Z9BhbnGw5neWhfqrM9Q7vpWt
 /0mJxuOHhOwTWmo958BAtd0/hZOJHIEJSbGGar/b0AvDpp9XWGixOOhftd4fO8xTnrUM
 lCu+R9fTxIJLPkkJCwmb9J+3Qn3C6RyvcWmaK2Wp4V8mz29Jju+0wq+tQUULFW3JXACz
 1VnQpTWNZ6rrU4fWeGbxKSqVCQwl/4ec4TrF4cna5N+WLlByhn0XYqV9vxcJIDrl34F8
 diWA==
X-Gm-Message-State: AOAM531XfL/AnPEnUAzPelz4G+dOg10X+LRx3MgqkxdaKD2es1TUt79D
 UmqumsOwziLjkkqKTSIJOIDFMw==
X-Google-Smtp-Source: ABdhPJzSNL4sJERp/2eSQ+h8FWQR4c5/iIHCJq+1OAZs58Faet0em60bngY5pomBtc8/sRioPM8fIA==
X-Received: by 2002:adf:ab50:: with SMTP id r16mr2243426wrc.235.1603455758304; 
 Fri, 23 Oct 2020 05:22:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:25 +0200
Message-Id: <20201023122216.2373294-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/65] drm/rcar-du: Annotate dma-fence critical
 section in commit path
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ends right after drm_atomic_helper_commit_hw_done(), absolutely
nothing fancy going on here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Cc: linux-renesas-soc@vger.kernel.org
---
 drivers/gpu/drm/rcar-du/rcar_du_kms.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rcar-du/rcar_du_kms.c b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
index 72dda446355f..8d91140151cc 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_kms.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
@@ -441,6 +441,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
 	unsigned int i;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	/*
 	 * Store RGB routing to DPAD0 and DPAD1, the hardware will be configured
@@ -467,6 +468,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
 	drm_atomic_helper_commit_modeset_enables(dev, old_state);
 
 	drm_atomic_helper_commit_hw_done(old_state);
+	dma_fence_end_signalling(fence_cookie);
 	drm_atomic_helper_wait_for_flip_done(dev, old_state);
 
 	drm_atomic_helper_cleanup_planes(dev, old_state);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
