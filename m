Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D045135DBB2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7266E311;
	Tue, 13 Apr 2021 09:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58286E364
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:20 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id w4so12034669wrt.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mwq8zywA+ypXJGwthk+aWxfXnXK//R2FzCHadrl6w7g=;
 b=RPn10Dkle43eKRGbKP8CCEtMoeX3/n5uj11U8rGkJzvHD1odfR7oGBMV5XGkJLeKPb
 Zo+oNt4m2664SlNFGxo82FN9Bu22db7GwixB7BL73y3xlMj7QS1DaVFEZtPcHS+IWaJF
 K1/adg7uet8ndzAelP4fG3upxsd1CAyZSwvIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mwq8zywA+ypXJGwthk+aWxfXnXK//R2FzCHadrl6w7g=;
 b=YN937DiY5+SNXoDK8pqx3QPaYLJIUs4sVCm34wT4e0KU5i9wik5CDy7FDjKT96jjup
 rIumRonEg3irNPybgf8Wb3h4U0F2i4B3vVoS9CHEyoX2uejSUkDTLC8C68mOsmKch0zi
 lfQ5s2fRwlf5w9QSQpt4TQLFemu9cAPEPd6EX5pdRnKY8Us5dUIRxMMjRj8/Kp6eN2ql
 D/iofzku5eyWEBj8uFy5DgBJYkKFBzyce1YuBy97J9vKVHBM4tVYvGx5aM8b/ept7p5O
 Mk9AG9SMuNa+/He9b9KyAeU/pZkHTPHO2etfd8gIKyteu9Fowae/v6GUSb7KK/gEnVHh
 8w/A==
X-Gm-Message-State: AOAM530YUPqSxiiMG/dZ09GQODhIr7Esx6AtRWRT79kFn5TMUZn5oq63
 q39QN44Ho4vNWeaGITbncfohIA==
X-Google-Smtp-Source: ABdhPJxlTrqiBskCjnzrlr2lzj0MoFiML8UzDvveT5cKCCW6RRg7VDInyaCrnkCtopcD1uIeUnQD0g==
X-Received: by 2002:a5d:6145:: with SMTP id y5mr27967739wrt.27.1618307359464; 
 Tue, 13 Apr 2021 02:49:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:49:01 +0200
Message-Id: <20210413094904.3736372-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/tegra: Don't set allow_fb_modifiers
 explicitly
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since

commit 890880ddfdbe256083170866e49c87618b706ac7
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 4 09:56:10 2019 +0100

    drm: Auto-set allow_fb_modifiers when given modifiers at plane init

this is done automatically as part of plane init, if drivers set the
modifier list correctly. Which is the case here.

It was slightly inconsistently though, since planes with only linear
modifier support haven't listed that explicitly. Fix that, and cc:
stable to allow userspace to rely on this. Again don't backport
further than where Paul's patch got added.

Cc: stable@vger.kernel.org # v5.1 +
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-tegra@vger.kernel.org
---
 drivers/gpu/drm/tegra/dc.c  | 10 ++++++++--
 drivers/gpu/drm/tegra/drm.c |  2 --
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
index c9385cfd0fc1..f9845a50f866 100644
--- a/drivers/gpu/drm/tegra/dc.c
+++ b/drivers/gpu/drm/tegra/dc.c
@@ -959,6 +959,11 @@ static const struct drm_plane_helper_funcs tegra_cursor_plane_helper_funcs = {
 	.atomic_disable = tegra_cursor_atomic_disable,
 };
 
+static const uint64_t linear_modifiers[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
 static struct drm_plane *tegra_dc_cursor_plane_create(struct drm_device *drm,
 						      struct tegra_dc *dc)
 {
@@ -987,7 +992,7 @@ static struct drm_plane *tegra_dc_cursor_plane_create(struct drm_device *drm,
 
 	err = drm_universal_plane_init(drm, &plane->base, possible_crtcs,
 				       &tegra_plane_funcs, formats,
-				       num_formats, NULL,
+				       num_formats, linear_modifiers,
 				       DRM_PLANE_TYPE_CURSOR, NULL);
 	if (err < 0) {
 		kfree(plane);
@@ -1106,7 +1111,8 @@ static struct drm_plane *tegra_dc_overlay_plane_create(struct drm_device *drm,
 
 	err = drm_universal_plane_init(drm, &plane->base, possible_crtcs,
 				       &tegra_plane_funcs, formats,
-				       num_formats, NULL, type, NULL);
+				       num_formats, linear_modifiers,
+				       type, NULL);
 	if (err < 0) {
 		kfree(plane);
 		return ERR_PTR(err);
diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
index 90709c38c993..136fe98f9459 100644
--- a/drivers/gpu/drm/tegra/drm.c
+++ b/drivers/gpu/drm/tegra/drm.c
@@ -1125,8 +1125,6 @@ static int host1x_drm_probe(struct host1x_device *dev)
 	drm->mode_config.max_width = 4096;
 	drm->mode_config.max_height = 4096;
 
-	drm->mode_config.allow_fb_modifiers = true;
-
 	drm->mode_config.normalize_zpos = true;
 
 	drm->mode_config.funcs = &tegra_drm_mode_config_funcs;
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
