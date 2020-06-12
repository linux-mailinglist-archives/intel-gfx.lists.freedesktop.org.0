Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 364451F7B42
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697DE6E9D8;
	Fri, 12 Jun 2020 16:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484496E9DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:07 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id f185so8768837wmf.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eYX8Mu0xRBNEBtaXanAWRER9JPyLuWSI8UYsxJ+P19I=;
 b=YAgNNu9Vooe515Sa5+Y11Dtf1UbX6YbGrz8GF1xcR6V67cMNcL3wTluq3cywQmOf0r
 rF+Sm5qkZ/fNA2YQdsBhlbvpDON5nwsEc8HDnF2cZQJwtfEF2dTA/95o2OxT8c1FKWNz
 fCngQ0Oti9evDoPJw6t63noKUe56a4Ng2r+VI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eYX8Mu0xRBNEBtaXanAWRER9JPyLuWSI8UYsxJ+P19I=;
 b=YWDWF01tRqLX4ZVZgQtFYxzqt/JdpvsOdBYRiwUKBEQ+YYRQ9IRJuaGoYdUC3+a7R7
 GbXmZgzcQD6+USLqBCmXMfhR+pQsstlUKcjjeTBavzlR4doS6jHN+qKFxOmDN7IK0vY6
 Q16sMDeS7a5DsC2XT1qZ+MSZB8G1XL3i3+uBARFGB10UYHX4X9tDJNdRj8B8boBdE64I
 NkRsK2+Q+WjE2w9bKcT4Bl+A7xyITZCMDIjwuoK+HCp+cS73IUh1oDV1pok//yItmz0k
 gvtd/eh82/Ir3kTiDLDQ5DpLv+IqMvuKkXAzpPeSG5xJsjBh1G31AMi/htYJezr7VGv0
 WYgg==
X-Gm-Message-State: AOAM532szgmcNSUEKNNzHfeS2fhKhRW0oDuxv1sxNtxALe6dduXafpOM
 7LiZ3crjr3VeyenSYuzV88FiHA==
X-Google-Smtp-Source: ABdhPJwJIw2fi2djhl6xIp8teUqUc8VlBhQGs+U1BAKFy/4rhESCGljCsXSzRXRoofhWIZ4PVDO+zA==
X-Received: by 2002:a1c:491:: with SMTP id 139mr13259039wme.99.1591977664956; 
 Fri, 12 Jun 2020 09:01:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:50 +0200
Message-Id: <20200612160056.2082681-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/amdgpu: Use
 __drm_atomic_helper_crtc_reset
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
Cc: Stylon Wang <stylon.wang@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Roman Li <roman.li@amd.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Mikita Lipski <mikita.lipski@amd.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Cc: Roman Li <roman.li@amd.com>
Cc: Mikita Lipski <mikita.lipski@amd.com>
Cc: Stylon Wang <stylon.wang@amd.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 68a73065b516..36d605a6eb16 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -4594,9 +4594,7 @@ static void dm_crtc_reset_state(struct drm_crtc *crtc)
 	if (WARN_ON(!state))
 		return;
 
-	crtc->state = &state->base;
-	crtc->state->crtc = crtc;
-
+	__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
