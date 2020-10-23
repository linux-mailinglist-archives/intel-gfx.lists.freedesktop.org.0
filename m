Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A01296F86
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7AD6F62C;
	Fri, 23 Oct 2020 12:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211986F64C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:39:33 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s9so1627463wro.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PGEKwn6M9eko3KN/fzTkRc1z8KxmYtWMP0qrwYX/alg=;
 b=cIiVlFPMyq3bo3bTzWHFm2wxUwLPGAJ95lFXtpkG7HuLE3NSES2nceiPcSSwB4dbqH
 oHT7dPIuKZvj9Pg2nFIuj7Pdtzya4KT+OWfnglmKFZnYD3aO6tDZSDWk6QJo7XjWBcI1
 i80ahkHRr4QJjp7N8fSM377apfJdawTkeK7js=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PGEKwn6M9eko3KN/fzTkRc1z8KxmYtWMP0qrwYX/alg=;
 b=R75sXW3MbBMxbs0aVD1cCMPuyB6swDDnaHch3bbaVAWc7uG98YYM9as7gEfmddEUXC
 IMgdPGxFh37TuhXwpTNuJFLCigkRCw//Qhj67uvUjE9Ma2I5fjlGGDXg5z5DSvvNt4gS
 D9nvFjggjFi9Ix239ds4BgSvLzmlG5Vc64Y3t3pkjqS2w0tIOgbyYD1X6i9ZzrRdommP
 sfW39DA0iaBfob0EaueznZUUZv0Mt5jBfF5ATW3GbL4xnweprTqC6JDvMDusAl3SWfC0
 hHjvFt7MjpGtrRh3imwjaqVOvWF+Bpc1p9C72Zy0BeXQR/6aXOlwxWeCSieT6jQVCcGg
 58tQ==
X-Gm-Message-State: AOAM5324tFd3buhc86u2fSKxoMBa06nhzaln0cPOqwIgCDubMocMQUOG
 TI98Mc67h+OZdMmLkOIqMdsNIg==
X-Google-Smtp-Source: ABdhPJz/PhUu+t/aX5G/Cmsm+zg+bBHfzem38LjjBD1fJ5nh4ZQ24gZbtRqGyRFbvbs6SiAd7xq1wg==
X-Received: by 2002:adf:f101:: with SMTP id r1mr2584805wro.392.1603456771835; 
 Fri, 23 Oct 2020 05:39:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 133sm3286462wmb.2.2020.10.23.05.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:39:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:39:24 +0200
Message-Id: <20201023123925.2374863-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023123925.2374863-1-daniel.vetter@ffwll.ch>
References: <20201023123925.2374863-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/vc4: Drop legacy_cursor_update override
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the removal of helper support it doesn't do anything anymore.
Also, we already have async plane update code in vc4.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
Cc: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 149825ff5df8..bf0da77ab2e6 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -353,12 +353,6 @@ static int vc4_atomic_commit(struct drm_device *dev,
 		return 0;
 	}
 
-	/* We know for sure we don't want an async update here. Set
-	 * state->legacy_cursor_update to false to prevent
-	 * drm_atomic_helper_setup_commit() from auto-completing
-	 * commit->flip_done.
-	 */
-	state->legacy_cursor_update = false;
 	ret = drm_atomic_helper_setup_commit(state, nonblock);
 	if (ret)
 		return ret;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
