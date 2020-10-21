Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBC32950C8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 18:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083B16EDD9;
	Wed, 21 Oct 2020 16:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE216EDD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 16:32:50 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id h5so3787392wrv.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 09:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=guHCCErCMqoPbxQI9pil+wt2PYB+uT5fZSBV+IuYGoA=;
 b=Y10x1ZyW9cBf2IYQfraxyqHnte2j1vKPkZDKGfNLZX8FZcIT6ICCVS8H/mf5mM+Dzy
 7qd2NPqxetu4FZAMngxam5735bXm3XImaHvTZa5GYsW2gGIEB15x90wBnBOriqNL2C8y
 hW50s3Q4q7Vouo0VwFpxrYthga4fMIiKT4zCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=guHCCErCMqoPbxQI9pil+wt2PYB+uT5fZSBV+IuYGoA=;
 b=dbLRlzUpD4hBPEEuuT+WZ9QCsCJQAbc9S8D2AecrYmCVRZTFqdKNF1FVl1Jh5aJ6cN
 SfVxvdu+lfNQX+SK+pJCdSMg5yGVhXQvnptnSiLGjsUx6+3JS6gD/WthSwbaHoBEoMlg
 IRozN0nScC7uIGWF8Xwugemsx4W/qBgEshj0qXHBxDTHnSJGeWUBjCXrLQieppgS42yz
 idB83ku+LlrDxwlSkpP1IWMejr94k5H+yaQ/czCpJP6kTmj9EDcugks9pNbzrHq2Adm3
 8ieMK03ZmKCX4SEpOFXl+pB0mTFMFjkPTVl34LGbrSnV97uX0ZaBoXFdDDiHoNpl6KVX
 8VYQ==
X-Gm-Message-State: AOAM532f3Y+quC5PTBKTgzntzAPgA2oTq4si3Uaj6A3VQq2E9EF43ewt
 lptlHIbb5iDmSE07Mw+8OYw3BA==
X-Google-Smtp-Source: ABdhPJwY8XOaqu6hwwlk7FG8YBRsgOoqjN1dLgy7AmQLLDxeOylFCjbhJynt2jWidTnUKaUpqBLWhA==
X-Received: by 2002:adf:dd89:: with SMTP id x9mr5728198wrl.284.1603297969692; 
 Wed, 21 Oct 2020 09:32:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm5547431wrc.23.2020.10.21.09.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 09:32:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 21 Oct 2020 18:32:41 +0200
Message-Id: <20201021163242.1458885-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
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
