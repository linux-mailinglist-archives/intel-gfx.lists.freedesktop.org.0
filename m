Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC71296E89
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6494B6E523;
	Fri, 23 Oct 2020 12:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63636E527
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:34 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s9so1565002wro.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=87Ui2ukUe17uzUsJ4zdOWtZExO02a40nKEMk3tN4TBQ=;
 b=BxT1c9BpiSf7D1ApXI0i7z0aOpiQDRRvA8cWL76VmdAiDtDuVX0JS+Wbg3kpqy0k3Z
 LtPNYGl5ZaQWC/DqfexPaVcqR9HwqT0Co5azbKVTwqbMmk7I5XiMf96FmNsCk7ELzhqH
 FwyDTC8ZRfDuuR0F5v5bI5YO1tDwaIbTzhK5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=87Ui2ukUe17uzUsJ4zdOWtZExO02a40nKEMk3tN4TBQ=;
 b=eTxiQvnwGw2SpatW+N4dROrCxzazN3BssYkOlyMyqg2dVCGDbN4K4hGFFX39tUj7oK
 WNDzuEWZuSLsiuxsm906rj3gstouUjATqDibjko2lCW3wEdwuhQwk/m9N1ZCB3dbdw3J
 J4nL0kOrqX+2Qd17Us4Wy3E7i/6gpboyVZ+hqL2vXs8l/9fFeNhXlWfTdOQqbrDbohou
 c1VOUsP6lVmAdSuIlY51qQTTLs6tt1BXanxySw+/p70hXLSYiB1xEc/gH+3lzeDSr1Hw
 c2YQDGP9CDJeRA6sHQbXXaAvlVh8Bkq922qhej0C7fWHdW+61FOC+3aM4mEq9lDVwJW0
 xpSw==
X-Gm-Message-State: AOAM530oDkq4VzEdFdRzUuG3ycCp1po4mgEwSmEU985nDeuZ3VRluH4l
 YpBhgqhpJ9WWTfF0ueCeerm4kQ==
X-Google-Smtp-Source: ABdhPJwvzJgaTicYXaEe6o9r3saTM6Z/EsEwxjdJDtfabqL+YtOlR1OatAv6Ub3mAjrLf64IUQd2Zw==
X-Received: by 2002:adf:fd8a:: with SMTP id d10mr2234644wrr.85.1603455753502; 
 Fri, 23 Oct 2020 05:22:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:32 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:21 +0200
Message-Id: <20201023122216.2373294-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/65] drm/malidp: Annotate dma-fence critical
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
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Again needs to be put right after the call to
drm_atomic_helper_commit_hw_done(), since that's the last thing which
can hold up a subsequent atomic commit.

No surprises here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Mihail Atanassov <mihail.atanassov@arm.com>
---
 drivers/gpu/drm/arm/malidp_drv.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index 69fee05c256c..26e60401a8e1 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -234,6 +234,7 @@ static void malidp_atomic_commit_tail(struct drm_atomic_state *state)
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
 	int i;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	pm_runtime_get_sync(drm->dev);
 
@@ -260,6 +261,8 @@ static void malidp_atomic_commit_tail(struct drm_atomic_state *state)
 
 	malidp_atomic_commit_hw_done(state);
 
+	dma_fence_end_signalling(fence_cookie);
+
 	pm_runtime_put(drm->dev);
 
 	drm_atomic_helper_cleanup_planes(drm, state);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
