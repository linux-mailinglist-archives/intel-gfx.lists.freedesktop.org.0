Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372FA296EBC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B4A6E563;
	Fri, 23 Oct 2020 12:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7556E558
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:38 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id n6so1551786wrm.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=guHCCErCMqoPbxQI9pil+wt2PYB+uT5fZSBV+IuYGoA=;
 b=jh07aP9HtA5zZ0rExIH5k72dtvWHENezPdTQy80zBiovspyuKBwX2akrt3+ul2MhgD
 p3We86q8j0ZN3fG9crJVf/Ymn9R3OAAuOHvwblHsFW3q0W3MsbMLNoXk8ahEmLW035nC
 SfW0gQODnSL2VTXhH4JUVWVTsdeo3h7bI483M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=guHCCErCMqoPbxQI9pil+wt2PYB+uT5fZSBV+IuYGoA=;
 b=QCIIqXAVrZUgeZ0wfE16JIqeoxDJMG7q71xKWCYF3bpxOkMSthPlW0YvU+Ix7pSsBS
 5cOgeV72wdtaqk2GKgWTeG3KA7CB5zhNqFIOcG8iWrxhQ6ehHTfRyUemmU6O6yh+NsqN
 70EDsVdo+UfLzJ00PaN+bk+SFWPUn+q7CppI4jjCi7iHd3Ofqw8NIn6kQH4v1Ud25P99
 r/aRyyuvP6JMVsPKzw/ATrPDLjesyY3RzyS/dWTT6AF7jJOxNcojM6ILHO+aUp/DJgZ6
 8yx7AmMFBmb6+kVMDIkrXEHm+P2VSfGHTOgHzfH6MOzxoAEhuw8OsIaeLAMe9lHe83CW
 tloA==
X-Gm-Message-State: AOAM5322XYK4xnYBzJo4FfbHSLZmMptengqx4uVCUIgApAxrZ7+aS3DT
 UOPhRKJlnX3UvMaK+OqhM3+GK1UP7358IRsB
X-Google-Smtp-Source: ABdhPJzOJi5Bq7RQ+JzlmtBQ4eZOuXPDONkpCj/pAIS1V21cUj3BCeaDSlH9SpbP7OmlqeL4ulNYqg==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr2451820wra.187.1603455742060; 
 Fri, 23 Oct 2020 05:22:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:12 +0200
Message-Id: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/65] drm/vc4: Drop legacy_cursor_update
 override
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
