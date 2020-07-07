Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8D72178E2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A596E536;
	Tue,  7 Jul 2020 20:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AAB6E588
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:12:58 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id f2so18609853wrp.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ufMaQijpZxkwPwAr9gZMUr6WxEnpa6HiMV9RcHXuTwM=;
 b=Jc8+1Bt4+yZ+72JwlaX/4LbCarKqgHkIvMH8RXH7ParTT0qyrwu7nDaqDYvK5TmYnN
 f4YXcswUT94xoP4KTTwyVIX0vAJHBeBnSm8VbvKA2lXaWW1d860dZpnC30Qwi8DKO7xS
 utUL879Q+0s6m0mBrBxYl8jOBXFwz6oarUdxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ufMaQijpZxkwPwAr9gZMUr6WxEnpa6HiMV9RcHXuTwM=;
 b=lul6i2nyyrULKZXKFC2UOZwa3OMac1zw4DLaz9RBxp5BVqzTRqvigdZapiMOFum7Iz
 DbfX2y3CmD6fFDr2dXu9Jmp+iLndmbEDWF0EASPwJYnMahUJpGpfj6oNY9bCsgXF9Td5
 f9RdrwX0iz//U1y6wTsdIDiKLgfO0GaEbqyO7xVdjfQDiF5z0xdzzy9F18pkKljhxwH4
 MJqxSF4vxfjcu5i+x3S1u9dtKwT22ZQ27Fesf9nAZPCV+T3Z+hIKot/uGoKFvVx0h4O8
 rla4JodJZisqzNXkJi1NJtIH8nxF00rd3wPa3oFabsvHqXS+OiShKjoBIiN6HuYRJ9Ql
 Qv+A==
X-Gm-Message-State: AOAM531ZAxMaNBAjUuD1eNAYAuo1ckKnDCjMFXm9pQExmEk7cEMFSbjn
 UkbnC/4ODBRIVp4sTedJyhiCcQ==
X-Google-Smtp-Source: ABdhPJwuWb6pVb4wr6EdtDvBXcWINsi7MUjr5wmIW0V0ekFf31STAKNgPJW5XI7gRyMNJ5yiOX8/jA==
X-Received: by 2002:adf:8b5a:: with SMTP id v26mr54731394wra.165.1594152777136; 
 Tue, 07 Jul 2020 13:12:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:17 +0200
Message-Id: <20200707201229.472834-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/25] drm/tegra: Annotate dma-fence critical
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
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
index ba9d1c3e7cac..9aea8fe48db3 100644
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
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
