Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5130D217905
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 454CC6E59D;
	Tue,  7 Jul 2020 20:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632AB6E536
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:12:57 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id r12so46526481wrj.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wWJo4Xms9xJyKH8uRObCjerwfD0/w2Bq7w9d1Tdqg68=;
 b=UOX4Dtrl9QRt0mnhEULXYaIhXEcwlQEl9dJZ6AKauST0v8/sueYjVcBr1H9gpshANp
 D7Leh7Gl+2NKEN7rDuk7xlozsQQmDcFZg1uLXs+bi5cvrSo2PcRAIgbCNAj4hEOLHs4E
 nH2oRdO8AAwxZVQ6SAlDyIBsQf7zFeXKTjhnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wWJo4Xms9xJyKH8uRObCjerwfD0/w2Bq7w9d1Tdqg68=;
 b=qzVZr7+cAGKC7yN4TrxZ+1MuJaup+opIBwKqwLP0yr3nF2ZBHQyoXlFM8wPWr0tBAX
 X6dly2LnYveofW+1JyWzonGn0gqw3K8h8pb8nlLy/bCqLYE7w8uiNc5ikip+0zAxC7Ym
 8lWrXqIPn9EEN2wid5VZMHbgI2mJ/Jpl7EoKe0cllBJXfR9vQ4vEBIQZNtcFbKMIEjvK
 QfTTpqboRY2DtVJ9XU9KW8oW4uGUa6meE1Y4fg46WJiuFdN29mnLqUvPLbPdSv/J3eap
 pU6QIMPG1eJLoOTUniVy/MfzkkX6U1qulk+EJACfJfq+thN8vxPsxrAzRmcn3+ugM7AF
 LxGg==
X-Gm-Message-State: AOAM533jh95fCAh4qQP86oEH9DjEHO0MM7esUhyPAcQrqiYvmb7UAsoe
 heerdXW1F97B2Tz2xnwOqPXjJg==
X-Google-Smtp-Source: ABdhPJxDsyfr4zDexGLiiFYSg/7wzAGNH9tBkAAtd+Zc++yr8EV6rRAt45326uR5zE2Phg7PZ7uGVw==
X-Received: by 2002:a5d:4751:: with SMTP id o17mr32057251wrs.345.1594152776092; 
 Tue, 07 Jul 2020 13:12:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:16 +0200
Message-Id: <20200707201229.472834-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/25] drm/rcar-du: Annotate dma-fence critical
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
index 482329102f19..42c5dc588435 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_kms.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
@@ -391,6 +391,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
 	unsigned int i;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	/*
 	 * Store RGB routing to DPAD0 and DPAD1, the hardware will be configured
@@ -417,6 +418,7 @@ static void rcar_du_atomic_commit_tail(struct drm_atomic_state *old_state)
 	drm_atomic_helper_commit_modeset_enables(dev, old_state);
 
 	drm_atomic_helper_commit_hw_done(old_state);
+	dma_fence_end_signalling(fence_cookie);
 	drm_atomic_helper_wait_for_flip_done(dev, old_state);
 
 	drm_atomic_helper_cleanup_planes(dev, old_state);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
