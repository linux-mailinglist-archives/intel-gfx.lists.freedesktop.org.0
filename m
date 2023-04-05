Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5443F6D76A3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 10:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4522A10E879;
	Wed,  5 Apr 2023 08:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E417610E878
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 08:16:55 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-4fd1f2a0f82so7207a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 01:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680682614; x=1683274614;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qP3CRuOXtd0j8FH60pKDaapzSWilH3ybWh3D2BA2OVg=;
 b=GjLl3ua24l4Ov2GQ+uRq2bGA8FFfCelF7z+YR0ZN0ez6Tb4K/TAjDMG+xwe6+xxnVB
 zDKECAoNBIqH/aGbAtpyUXhaguJpZGG0JAO+CKxjhC0A6uMVAxvdMKJLve7rhnouoiMz
 MgVPIGv0iQKsnn1XemqCEGw2vg0Ipw9iOiJkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680682614; x=1683274614;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qP3CRuOXtd0j8FH60pKDaapzSWilH3ybWh3D2BA2OVg=;
 b=hpkVfurCFqXYcR+EJwRs/kUY4uXt+kVE4yf5nX/NVEhUekEEK00nSqtyCf5Icmusfn
 txjzSntF86NOsfvqFB44o5YlaYM3ptn09huvlTVBip4Dn55Lo/oOiYF5TehHoN2wPh2v
 myIhG7kzxZMoknu57jgZDEYVYqeKDPS+UV65OHbH1lMhEo1MAuvYDYtsF2RJrxIYcOeq
 SpAssdrWYgua6N8CVa6mgxUjjQDUHLYl1nYN3tfSt/S4nEvt8TMz5sJwxhAzd9XL+fLa
 99yZujbNo6Uz4K3hAwWybFmwe/MBBFt6RyeAhmrBGpFqOmcs9y0tlyy3cHfqfjvwpNrN
 gwog==
X-Gm-Message-State: AAQBX9faCKzqnvOR5+ofPpsLrNSk0lKSfevO9KwT5hRxb9+AQBdXoFH5
 OKisUxJMmo2RqHWsRvlyHYWhXg==
X-Google-Smtp-Source: AKy350ZYz7OQVeF14jLM9v6G4L5hAkxBt0za08VJNASxD8vm5spaVp2Ou8H/3c31A0MGkaLzR96a3g==
X-Received: by 2002:a05:6402:524e:b0:4fd:2978:d80 with SMTP id
 t14-20020a056402524e00b004fd29780d80mr1086176edd.1.1680682614011; 
 Wed, 05 Apr 2023 01:16:54 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 sz22-20020a1709078b1600b00948da767832sm2748474ejc.152.2023.04.05.01.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 01:16:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed,  5 Apr 2023 10:16:50 +0200
Message-Id: <20230405081650.797972-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/atomic-helper: Don't set deadline for
 modesets
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the crtc is being switched on or off then the semantics of
computing the timestampe of the next vblank is somewhat ill-defined.
And indeed, the code splats with a warning in the timestamp
computation code. Specifically it hits the check to make sure that
atomic drivers have full set up the timing constants in the drm_vblank
structure, and that's just not the case before the crtc is actually
on.

For robustness it seems best to just not set deadlines for modesets.

Link: https://lore.kernel.org/dri-devel/dfc21f18-7e1e-48f0-c05a-d659b9c90b91@linaro.org/
Fixes: d39e48ca80c0 ("drm/atomic-helper: Set fence deadline for vblank")
Cc: Rob Clark <robdclark@chromium.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Reported-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # test patch only
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_atomic_helper.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index f21b5a74176c..6640d80d84f3 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1528,6 +1528,9 @@ static void set_fence_deadline(struct drm_device *dev,
 	for_each_new_crtc_in_state (state, crtc, new_crtc_state, i) {
 		ktime_t v;
 
+		if (drm_atomic_crtc_needs_modeset(new_crtc_state))
+			continue;
+
 		if (drm_crtc_next_vblank_start(crtc, &v))
 			continue;
 
-- 
2.40.0

