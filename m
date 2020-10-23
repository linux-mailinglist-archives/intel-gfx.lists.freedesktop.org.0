Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00511296EB1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533666E536;
	Fri, 23 Oct 2020 12:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC536E50D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:40 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id k21so1006469wmi.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bzJDwk0UaarTjwek7p43Z5eixveGA653vMI0wrr+vtQ=;
 b=O7XtUKdUBPSf9TjLYloRodYjrCetvjKcziZsGwqdmp+Blvk1kTPVSzDdF53/vbY41S
 rGw2KSNwfdBQw6B+naDwbPdKVdsKnqJsdN3WRk468+ZCIfcysezqIDmR/VSH+MjvDNPk
 Da7owdM++heskVUNzJscqLKTBxQj80xXMID7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bzJDwk0UaarTjwek7p43Z5eixveGA653vMI0wrr+vtQ=;
 b=kTqgglG9QX3YYrYVrcJQZFjw/MLGYiomynbXoRBvnCK5++nuGaCNBuCxexeXuIp/aO
 26yiB8RUh/3l0MUjDgAtZjZjuzphYNPLy6WIX/WYyLliDKN3d0//G44XHYL0EUdMs5iy
 lNJ2ZHFgb7WhiH7C2o67rcnPTTjDsOvySfxQdCcI/oCDPWl3lXWa5FCGRtpaWiapImqR
 cHHZ5jAsiUlOo6jT/zSZwbaWnuT6fKQs0mXqiK7EEmxIrf+dPKH3uWAuLr+4QV9xEW29
 nnIPRnUUDTi9F1Vwb30YyVEL7mECeHxzshw4UwhalQl1pVJV59msMl7k4SiCdxbycHPf
 zK2Q==
X-Gm-Message-State: AOAM533wcX6Hp7FuF2VrBQY9wdkZwvWHgo4iCZQllF0G3oJp6H9uvDfE
 WfDHQgC9jsKZIgwEgLIrZmAHFA==
X-Google-Smtp-Source: ABdhPJyDkgbwbjJTuMMSi0+tdHz3l1gq3xGatm+DQh9W5oe3VMttDmbcRcQlKZBYRGpdXsMMICyaRw==
X-Received: by 2002:a7b:cb8c:: with SMTP id m12mr2175657wmi.12.1603455759419; 
 Fri, 23 Oct 2020 05:22:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:38 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:26 +0200
Message-Id: <20201023122216.2373294-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/65] drm/tegra: Annotate dma-fence critical
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
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Again ends just after drm_atomic_helper_commit_hw_done(), but with the
twist that we need to make sure we're only annotate the custom
version. And not the other clause which just calls
drm_atomic_helper_commit_tail_rpm(), which is already annotated.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-tegra@vger.kernel.org
---
 drivers/gpu/drm/tegra/drm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
index f0f581cd345e..24f353c1cee8 100644
--- a/drivers/gpu/drm/tegra/drm.c
+++ b/drivers/gpu/drm/tegra/drm.c
@@ -65,11 +65,14 @@ static void tegra_atomic_commit_tail(struct drm_atomic_state *old_state)
 	struct tegra_drm *tegra = drm->dev_private;
 
 	if (tegra->hub) {
+		bool fence_cookie = dma_fence_begin_signalling();
+
 		drm_atomic_helper_commit_modeset_disables(drm, old_state);
 		tegra_display_hub_atomic_commit(drm, old_state);
 		drm_atomic_helper_commit_planes(drm, old_state, 0);
 		drm_atomic_helper_commit_modeset_enables(drm, old_state);
 		drm_atomic_helper_commit_hw_done(old_state);
+		dma_fence_end_signalling(fence_cookie);
 		drm_atomic_helper_wait_for_vblanks(drm, old_state);
 		drm_atomic_helper_cleanup_planes(drm, old_state);
 	} else {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
