Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCEA1CD545
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011356E3F3;
	Mon, 11 May 2020 09:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5FA96E3F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:36:00 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id e26so17291465wmk.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ybrbg0JBvmSsxSdOqYafvuumHr3GvaS92qxFWGltEmg=;
 b=IIxOdAKBgoLkrJPqpMhSiG2E2TY3IoBYdrMWUnUUtc55aeo8Tuo3biByZK/x7tXsFv
 ioOqQ4jqCfoJhtXsqfk5yrRTr1yWYTIg3Ub9z3HdUczGwWG010Kek7h8UwuEXD/j82bL
 Y0WhiOZdXPFopQcbqf2R7+zQj2BohwhsE6iuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ybrbg0JBvmSsxSdOqYafvuumHr3GvaS92qxFWGltEmg=;
 b=ApNq6JSECRAvnvjDwcmqYhiduiDafMLtwZ0R69Qlamis2wIl08n0Guldy4qqeHE9Oo
 rj7MsK2DugMWVuq9LhweqewB5nvsZG2hY5+afLO8iE/8a0tG+pXwhcOFIOcyObehrGYQ
 t4m2XflbkPRcVszopnYk8MrbaPyre+2LE/q6rWUGYwxeY1N2jpQj/bK3z204wEsqhB98
 5LrEfYZWg4q5dM2T/QI8gOEHhhJ9WocV4HF4UTSz5DDQpgwNmW9Ucg9lPuKmgbopmIqs
 tB0GhFqSjsor8iEonemzccwihKXHGvkLLN0k2KDonP759YRqK4W2GYF4wAwYUF6VFM5X
 mj9Q==
X-Gm-Message-State: AGi0Pub6KqieVOUfLeFLDYNgoYJaYjI9ggB7qlzuYxHqPD9dXISOnVbd
 CTvMuRIRqFmEjNqlD3vhNP51ICBIUsw=
X-Google-Smtp-Source: APiQypJmuI4Sb10g6vskiMUjv3WP6njot0AydnSHOMVLm9yqD9JXl72SN7CGX93e9vPt2A++mblhQg==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr32497704wmb.56.1589189759570; 
 Mon, 11 May 2020 02:35:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q17sm9013945wmk.36.2020.05.11.02.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:35:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 11 May 2020 11:35:45 +0200
Message-Id: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] shmem helper untangling
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

I've started this a while ago, with the idea to move shmem helpers over
to dma_resv_lock. Big prep work for that was to untangle the layering
between functions called by drivers, and functions used to implement
drm_gem_object_funcs.

I didn't ever get to the locking part, but I think the cleanup here are
worth it stand-alone still.

Comments, review and testing very much welcome.

Cheers, Daniel

Daniel Vetter (9):
  drm/msm: Don't call dma_buf_vunmap without _vmap
  drm/gem: WARN if drm_gem_get_pages is called on a private obj
  drm/doc: Some polish for shmem helpers
  drm/virtio: Call the right shmem helpers
  drm/udl: Don't call get/put_pages on imported dma-buf
  drm/shmem-helpers: Don't call get/put_pages on imported dma-buf in
    vmap
  drm/shmem-helpers: Redirect mmap for imported dma-buf
  drm/shmem-helpers: Ensure get_pages is not called on imported dma-buf
  drm/shmem-helpers: Simplify dma-buf importing

 Documentation/gpu/drm-kms-helpers.rst   |  12 ---
 Documentation/gpu/drm-mm.rst            |  12 +++
 drivers/gpu/drm/drm_gem.c               |   8 ++
 drivers/gpu/drm/drm_gem_shmem_helper.c  | 128 ++++++++++++++----------
 drivers/gpu/drm/msm/msm_gem.c           |   3 +-
 drivers/gpu/drm/udl/udl_gem.c           |  22 ++--
 drivers/gpu/drm/virtio/virtgpu_object.c |   2 +-
 7 files changed, 111 insertions(+), 76 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
