Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0431F7B4A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBF16E9FE;
	Fri, 12 Jun 2020 16:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AA56E9FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:09 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id l17so8662564wmj.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pn56G4iAxisvD6U7wjR2uNhTGqn/jGSOsTr1HNhqABU=;
 b=XTWQU2de5rAOucOiWvsPhfnP5VwVuTBZUKzCS2N3jH6RmctUhv7u943icI4DG98zWn
 +KdAKXo2ity/gUyO93o5x/3gMnNTvu6cRTRwmgL+6UQORzWKRdkivwQpsK4i4hSx8vTI
 aIp5iv4O8a1uKESb83DFyA6hZTnpUtNWmuAkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pn56G4iAxisvD6U7wjR2uNhTGqn/jGSOsTr1HNhqABU=;
 b=FfezQdBhxyJRd+ub4+ju7FGVpUTOdHt0GhCLPGdsn9P+Uez9Q7XRfe1EHH797IE4E5
 Vm7SLjErbTAE/CzOt641NDN9DRVtdjY6beI09aZ6H3tNBZjNvKG9xJ9cPpEoNXpLUGL+
 O1f6X+RwESwfKaBF74gyZkW5O8RA+dLa1nUbJ9qYo8SyundM++KjUQgNO3WdldCI74Ta
 8ui7OPOob6rNQI/tgAZDV8GKHhXggixc2TBiWEkzu5TG4y6Tnt1DhoNwocAB70rz8nAQ
 h88dnkkvYejt/r19YC8Lh8XqW2k1zSjB0KCIs9/ozv06ossjt6iksKDJEcfl/Sp2yRSB
 7eBg==
X-Gm-Message-State: AOAM530rZo345IgUkFDs4VFr/VqAgtmslNr76bn8w7dLw5eQd40AXAQ4
 li897Pn3dizv9r2f16Hqi6G61LvhaC8=
X-Google-Smtp-Source: ABdhPJyZzSczjW7Bq2lQ0uzd3oHCsukXcf8Tuz+WZjmGRePnFqkJFl2jr+r4pUKucQTTsTIRu3SkeA==
X-Received: by 2002:a1c:5541:: with SMTP id j62mr13316964wmb.64.1591977668363; 
 Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:53 +0200
Message-Id: <20200612160056.2082681-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/vc4: Use __drm_atomic_helper_crtc_reset
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 29131409a4de..5371e63cf6e2 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -993,10 +993,9 @@ vc4_crtc_reset(struct drm_crtc *crtc)
 {
 	if (crtc->state)
 		vc4_crtc_destroy_state(crtc, crtc->state);
-
 	crtc->state = kzalloc(sizeof(struct vc4_crtc_state), GFP_KERNEL);
 	if (crtc->state)
-		crtc->state->crtc = crtc;
+		__drm_atomic_helper_crtc_reset(crtc, crtc->state);
 }
 
 static const struct drm_crtc_funcs vc4_crtc_funcs = {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
