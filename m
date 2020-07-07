Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D302178E8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945FB6E5CD;
	Tue,  7 Jul 2020 20:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553716E52A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:12:56 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id r12so46526425wrj.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pt65zP3tlEuv8TvdEB6rXZKaCDTrRKjurzMHDo80+l4=;
 b=ECzcjwmTm3AborwU40haIL5DfGUbNaGnjl4KrnQruJIqmKFPCtJbIcfPTulkN3oSNO
 LeoytZCXEcdrNk/HBVLRNvsvpRSnu2zo4n5M8SWqzSYXPQ57n9jIZATJmEY1VIUw2fNP
 3raRyIXFs8+1WpAOpUHm9CDrANOWWyeYyfNdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pt65zP3tlEuv8TvdEB6rXZKaCDTrRKjurzMHDo80+l4=;
 b=b9vKeN/s3+5JepWJyM/43U2zdQcSvatgR67qDW3qhIGt6Deh6Ey8n/zuvdqv9CWmHS
 WJofHaXL2FhGa2Yo2kHuucQh4L1SfcIpxuKf2peBEO+KXSBGH5XlSHmLJx0UZIn+RkoH
 nYo9A0iWusXF7AH9mzfPrjD4i3KKOYaMXJ+X4cRaPk9SSUlBczH2ggnKoafeHKRkeEGG
 OhBKRTEBQmeVt0vmZBF2v0v68Kz1CUGYpdQJ6TSvumrZQ9gv3LVY+vpiZaUb51dzhbeI
 Or1Atl5P16TJvVWjn2Iv96xZ8LE0RjXJ2ZwDZprs9dVGcGsVf7l/fByiMs2QREBy8aNV
 eHCg==
X-Gm-Message-State: AOAM533jinBa3Mjz8FlQXkNqzVcetigcJUAnGsNHKV9WBbSvPv0wDO6g
 JU+nJdE1hnDhT8HKsJD1+ZPwow==
X-Google-Smtp-Source: ABdhPJxKgmysUU/h7rSk9LS5o1iZmQTnbNWz1lWZoVAw8JPRoDOBpIt/L+K29HI41t8AbVdqITvtgg==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr56007824wrv.177.1594152775024; 
 Tue, 07 Jul 2020 13:12:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:15 +0200
Message-Id: <20200707201229.472834-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/25] drm/omapdrm: Annotate dma-fence critical
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Nothing special, just put the end right after hw_done(). Note that in
one path there's a wait for the flip/update to complete. But as far as
I understand from comments and code that's only relevant for modesets,
and skipped if there wasn't a modeset done on a given crtc.

For a bit more clarity pull the hw_done() call out of the if/else,
that way it's a bit clearer flow. But happy to shuffle this around as
is seen fit.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/omapdrm/omap_drv.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_drv.c b/drivers/gpu/drm/omapdrm/omap_drv.c
index 4526967978b7..aa3a8034d0ea 100644
--- a/drivers/gpu/drm/omapdrm/omap_drv.c
+++ b/drivers/gpu/drm/omapdrm/omap_drv.c
@@ -68,6 +68,7 @@ static void omap_atomic_commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
 	struct omap_drm_private *priv = dev->dev_private;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	priv->dispc_ops->runtime_get(priv->dispc);
 
@@ -90,8 +91,6 @@ static void omap_atomic_commit_tail(struct drm_atomic_state *old_state)
 		omap_atomic_wait_for_completion(dev, old_state);
 
 		drm_atomic_helper_commit_planes(dev, old_state, 0);
-
-		drm_atomic_helper_commit_hw_done(old_state);
 	} else {
 		/*
 		 * OMAP3 DSS seems to have issues with the work-around above,
@@ -101,10 +100,12 @@ static void omap_atomic_commit_tail(struct drm_atomic_state *old_state)
 		drm_atomic_helper_commit_planes(dev, old_state, 0);
 
 		drm_atomic_helper_commit_modeset_enables(dev, old_state);
-
-		drm_atomic_helper_commit_hw_done(old_state);
 	}
 
+	drm_atomic_helper_commit_hw_done(old_state);
+
+	dma_fence_end_signalling(fence_cookie);
+
 	/*
 	 * Wait for completion of the page flips to ensure that old buffers
 	 * can't be touched by the hardware anymore before cleaning up planes.
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
