Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B11393085
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F916E071;
	Thu, 27 May 2021 14:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 669236E071
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 14:13:44 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 l11-20020a05600c4f0bb029017a7cd488f5so605256wmq.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 07:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DdxyhH0wur5KLNsCWXopmQq3ABiHKSl14hPvrAXcvf0=;
 b=V8ZVqM1wglTxhFo/0B6oKs8+QOJiZDVSbbHIDKpC2JgrmNI0KVDuXzu4eePuVZ81N8
 H5tN3Ouz1Jtu+tkaKTIwa4BRuWiop9m3p5mdxNKw4U9sdI6TZuM3jeSqFalEWluWHejI
 o8S+v3M4BxtfE6nqlLN40rKkIxd8cehLN9OQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DdxyhH0wur5KLNsCWXopmQq3ABiHKSl14hPvrAXcvf0=;
 b=LewqA4bWjs3J0krOUaPk1u2OO98TP6ZCnVAByqVO1fppr2FSdfLgkHNLI5RopG5u9G
 mfhEcF3Do4pv5p2s9Bc65O8h/coTIehNvcVROStp5UTA8E5sV1nVsxIgmGnrZql3ki8T
 A5gYcYsSpVTrMcx5qvDhFLxmVhJWyiooTalScLCdZ/8xLBRVOwe1k+j6orjsRDqe7Dev
 EVQBtl5FtGKqmM18mkS38FLXLUJw+lILK7KwnqIshMRqEwiAp4L4osEztrxR9yIb8+Xy
 Y6cxY/piG4+X1/0llkeiKWmKCxEud2XZ99ke1/P1m9LCukkyS6bT/fSsGjpVCvjrSmvG
 jSbw==
X-Gm-Message-State: AOAM532zdeiacUifIrXMnGYuWtlyIIfieyK4m9Mci/HIyZFw4GLsJ3oF
 OPxDdBtrhcPGWxuexa0S8BGLjcmX76qeYg==
X-Google-Smtp-Source: ABdhPJzYLGwLAkIzasJBNl1i0oRV26gEea/yJ2DSZXXiFXqUWgjtJ1FiDncBfhhjemk0ayK56PqOpQ==
X-Received: by 2002:a05:600c:2f9a:: with SMTP id
 t26mr8899200wmn.166.1622124823103; 
 Thu, 27 May 2021 07:13:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm3381136wrt.65.2021.05.27.07.13.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 07:13:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 May 2021 16:13:33 +0200
Message-Id: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] shmem helpers for vgem
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

Hi all,

Another round at attempting to use shmem helpers for vgem and also getting
them to not use VM_MIXEDMAP. I found an igt which had some funky encoded
expectations, so now neeeds a cover letter to test intel-gfx-ci how to
test this.

I also noticed that etnaviv and tegra are also using VM_MIXEDMAP (aside
from ttm based drivers).

Test-with: 20210527140732.5762-1-daniel.vetter@ffwll.ch

Cheers, Daniel

Daniel Vetter (4):
  dma-buf: Require VM_PFNMAP vma for mmap
  drm/vgem: use shmem helpers
  drm/shmem-helper: Switch to vmf_insert_pfn
  drm/shmem-helper: Align to page size in dumb_create

 drivers/dma-buf/dma-buf.c              |  15 +-
 drivers/gpu/drm/Kconfig                |   1 +
 drivers/gpu/drm/drm_gem_shmem_helper.c |   8 +-
 drivers/gpu/drm/vgem/vgem_drv.c        | 340 +------------------------
 4 files changed, 21 insertions(+), 343 deletions(-)

-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
