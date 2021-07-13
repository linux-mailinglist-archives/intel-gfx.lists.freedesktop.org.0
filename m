Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426163C7835
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 22:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6556C89971;
	Tue, 13 Jul 2021 20:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876AE89A08
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 20:52:00 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id l7so375341wrv.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 13:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BDyC/DY74z2CjcdPHnrSos5LIYO/A3/gQ+PUHz2jdsY=;
 b=Y/+QHqZsDEZJpQp468v2dxQwhD5KwG5CstxO8j5DtVIOXF9nl0WpbJP/cXO2BPl5rE
 rZDfpudbl5bBqM1KEuz506dfE0xAfwv1weBaoq3ngCHkYRAm6ZVv7057jYvHNlbWeuEO
 mQMjHgNDRiQ1BaiBqxGTL0YDrQgxcdtg0vk/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BDyC/DY74z2CjcdPHnrSos5LIYO/A3/gQ+PUHz2jdsY=;
 b=Dx8B2/ltF41nzBDxqUBjXxV0o3ctAz9eADEJEcg+N+hVA2wDCgdoWhaS3TH35Bxrat
 ++dtsEc1rnfneoxrP5qRucy8PcihbAZuwqkwULBZ2yzzquWZRHQjLqr8RxLfRVSw6kmr
 qEKG2Rq6HA0gxw+60REo5get+0zwybf0Hp+IrCsMYHAG3eruD53ViJ+i2Y1gWEsIw1C6
 1LOy0bo6T5Ps+r0AOC5ZWnVVmyEsk8NQDXsdvFzVSUXHg0inDvnHbEeIZE7hLPr69YuH
 r36/SEQVgE5JHjGT4nqsny9VlHkqLUNmdrZt8C08UXmitahci+gdQdU8aa5YDCl0b578
 rZUg==
X-Gm-Message-State: AOAM531E62Gk29o+Yqq3ZWq7rl1kcxBTosmpjr7iZBl68bpLXekET/gs
 rJ/Rxa/3bXjK3vtOw7tO1KH+mbj290jnwA==
X-Google-Smtp-Source: ABdhPJyQpKWy+9AhVsH+cb+Q+Mm1vvUM/0xOrkdQV4UmvXBxaEyU2Om95gdjp6Hup8Y0EP5SV3Ud8g==
X-Received: by 2002:a05:6000:178a:: with SMTP id
 e10mr8282029wrg.141.1626209519125; 
 Tue, 13 Jul 2021 13:51:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j10sm18642249wrt.35.2021.07.13.13.51.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 13:51:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 13 Jul 2021 22:51:49 +0200
Message-Id: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] shmem helpers for vgem
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
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all

I've found another potential issue, so lets try this again and see what
intel-gfx-ci says. Also Thomas tried to unify vgem more, which motivated
me to dig this all out again.

Test-with: 20210527140732.5762-1-daniel.vetter@ffwll.ch

Review very much welcome, as always!

Cheers, Daniel

Daniel Vetter (4):
  dma-buf: Require VM_PFNMAP vma for mmap
  drm/shmem-helper: Switch to vmf_insert_pfn
  drm/shmem-helpers: Allocate wc pages on x86
  drm/vgem: use shmem helpers

 drivers/dma-buf/dma-buf.c              |  15 +-
 drivers/gpu/drm/Kconfig                |   7 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c |  18 +-
 drivers/gpu/drm/gud/Kconfig            |   2 +-
 drivers/gpu/drm/tiny/Kconfig           |   4 +-
 drivers/gpu/drm/udl/Kconfig            |   1 +
 drivers/gpu/drm/vgem/vgem_drv.c        | 315 +------------------------
 7 files changed, 49 insertions(+), 313 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
