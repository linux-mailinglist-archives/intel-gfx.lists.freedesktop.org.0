Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED796B0DA1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 16:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258C810E649;
	Wed,  8 Mar 2023 15:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1C510E649;
 Wed,  8 Mar 2023 15:53:52 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id p20so18019736plw.13;
 Wed, 08 Mar 2023 07:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678290831;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9QIRFXSCitL3iYkzZTpxHAB6gd/EN+fonFlEUv102Pg=;
 b=HosAqU4CHLNL9VOPgH3EzAyi783aVn7MePUYwtZnp8B42O3uvSedSD42LasqtJOcvN
 6ljD+/VZH0wkBikCkwVlSbIjihjiOB3vTEQq6VhVsnwSQO/7NQh+3I/KE0whaeBitflR
 iPtRCRH50rCjW8To2Q2AXpukPVruvWPhn3Dd8AyWkNjT55wLUXiro8jnjleC/XVxzeRW
 mYuwmq00QwaYHyeQAJXPh5qi1uSJgi3VBX3lwAqYTNaxX2OJYSX08drJElq6ed9AeVDv
 f7N1K8v1XfD7ocFAH1QlMo+5FVWJy1jv6qAvN5EOdQJey3aynSLn23UtijyDmuh4KmN8
 ZofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678290831;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9QIRFXSCitL3iYkzZTpxHAB6gd/EN+fonFlEUv102Pg=;
 b=xBRKck+IEhTvkxLeHwELXOOVWJsVQZU5sJ5V6H7FeNca7JBYqiw2gOThMCF4rZa9xy
 IBXKb4UPyHNRF5T2NF3oV81dzGIOsAUZa7WsGVgOri01ytXTBg7KQZ2WE+MR2kGuMyOY
 uZUrOu/wjosgcfCH4hsV9LEdzvGTHuene3K3nXSwR0fOS3PH+Tl9zmIjHeJxT7Kv8klN
 xna/FGf7bw1D/iBSpUOvn7Z+kdLnWSv+f3y+Q7tXFyiRH236Fgx0UwWh7jw4kd5ZYRJC
 GcV0bzfKjmBYnKk4XrEJ1E/trPc9VgesJCKjYTCsYjtARJfrvmCaRl1gBjJ8941XfnaU
 CL4A==
X-Gm-Message-State: AO0yUKVZ705atVsC9TnIgqwaj0+ZGU+JPIxAcU11Px50+8ZzdWXYGhr/
 Jb51yKtEzNojxtfoLiAunIcQbKkaUCo=
X-Google-Smtp-Source: AK7set8MIBhwU303RCiBfZw9A92NVJsMzpKbjyfLvi/1ZGST318Eyk1lSNOLJxtIDjmlEhJY7kG1VQ==
X-Received: by 2002:a17:903:1251:b0:19e:d60a:e9e with SMTP id
 u17-20020a170903125100b0019ed60a0e9emr9132560plh.42.1678290831597; 
 Wed, 08 Mar 2023 07:53:51 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
 by smtp.gmail.com with ESMTPSA id
 kd13-20020a17090313cd00b0019a8e559345sm8518895plb.167.2023.03.08.07.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Mar 2023 07:53:51 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:53:02 -0800
Message-Id: <20230308155322.344664-12-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 11/15] drm/atomic-helper: Set fence deadline
 for vblank
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Rob Clark <robdclark@chromium.org>

For an atomic commit updating a single CRTC (ie. a pageflip) calculate
the next vblank time, and inform the fence(s) of that deadline.

v2: Comment typo fix (danvet)
v3: If there are multiple CRTCs, consider the time of the soonest vblank

Signed-off-by: Rob Clark <robdclark@chromium.org>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_atomic_helper.c | 37 +++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index d579fd8f7cb8..28e3f2c8917e 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1511,6 +1511,41 @@ void drm_atomic_helper_commit_modeset_enables(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_atomic_helper_commit_modeset_enables);
 
+/*
+ * For atomic updates which touch just a single CRTC, calculate the time of the
+ * next vblank, and inform all the fences of the deadline.
+ */
+static void set_fence_deadline(struct drm_device *dev,
+			       struct drm_atomic_state *state)
+{
+	struct drm_crtc *crtc;
+	struct drm_crtc_state *new_crtc_state;
+	struct drm_plane *plane;
+	struct drm_plane_state *new_plane_state;
+	ktime_t vbltime = 0;
+	int i;
+
+	for_each_new_crtc_in_state (state, crtc, new_crtc_state, i) {
+		ktime_t v;
+
+		if (drm_crtc_next_vblank_start(crtc, &v))
+			continue;
+
+		if (!vbltime || ktime_before(v, vbltime))
+			vbltime = v;
+	}
+
+	/* If no CRTCs updated, then nothing to do: */
+	if (!vbltime)
+		return;
+
+	for_each_new_plane_in_state (state, plane, new_plane_state, i) {
+		if (!new_plane_state->fence)
+			continue;
+		dma_fence_set_deadline(new_plane_state->fence, vbltime);
+	}
+}
+
 /**
  * drm_atomic_helper_wait_for_fences - wait for fences stashed in plane state
  * @dev: DRM device
@@ -1540,6 +1575,8 @@ int drm_atomic_helper_wait_for_fences(struct drm_device *dev,
 	struct drm_plane_state *new_plane_state;
 	int i, ret;
 
+	set_fence_deadline(dev, state);
+
 	for_each_new_plane_in_state(state, plane, new_plane_state, i) {
 		if (!new_plane_state->fence)
 			continue;
-- 
2.39.2

