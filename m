Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF1139A5F1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 18:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9864A6F4C9;
	Thu,  3 Jun 2021 16:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3BA6F4CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 16:41:20 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 n17-20020a7bc5d10000b0290169edfadac9so6299961wmk.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 09:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BeI89bNtD5EIyZ9oMFlEV442FRTO0La9ggC5dH+EVBE=;
 b=Cpoy+ms/loMCtJzbBjJVwF5ljtXkoLPaC7j/nMrxXdDTbneqPQ8GbPK2EkiKD8jV8V
 6W05dEUlVZ+fnNBdXk35bOFiQNY7XhhVNZksjWYAKAaAatG7xHfKoGHhauC3ZIY56VR5
 AYDeTcbqaJPGlNpBwmOx75b+phoYVYwmeDt4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BeI89bNtD5EIyZ9oMFlEV442FRTO0La9ggC5dH+EVBE=;
 b=VFcYqlhXzK2Hay4QSmcEBobUbJ2y/IDNb2EWXtUmeoCn92SYueHlHUUR2E7nmRnX22
 kN2Qo+PHz9j2Xja5Dk0xdl8W9sg99vpTXuAibjnrVVkjPV3UVqwcMdBXX3Vz3wPM6HMb
 sxKyzEDQo2QoFBqpQtvekfXr1yU7q1iF02kzVcO2+EhE6Eyk53n6HfNB1tTx9EtsX2mV
 R83IOeQ+D6RpMOrWoAe+HQ10xWm6wPMhnZMJ7nYvSY/PxlVeP3/FyGssLwJ4NvOEZun3
 OaestrltD0Rvqmt9YeRi3XFDes+oHF8fLZj3osuLrRZg87ckru9rw+YquAitDPw0xnqM
 92BQ==
X-Gm-Message-State: AOAM532TlAR0IGI7mZcrKcF/xL1YE5+yJgljPYuiAxrqbomj/qShDJAC
 fzOOBCS7lY1NHbJKhy9+wL+VtFHS5BhFJg==
X-Google-Smtp-Source: ABdhPJyVvQgTL5xLbyyUBde5dbZLBnYAI2C6e7Nv3zPT+L1qOcQMa9EeI2x4Tt2Wuq3ifNNFiHa/8w==
X-Received: by 2002:a05:600c:4a09:: with SMTP id
 c9mr10935291wmp.162.1622738478945; 
 Thu, 03 Jun 2021 09:41:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s28sm4992683wra.54.2021.06.03.09.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 09:41:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  3 Jun 2021 18:41:09 +0200
Message-Id: <20210603164113.1433476-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/4] shmem helpers for vgem
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

Another small iteration, lost another patch, so another full resend.

Thomas Zimmermann pointed out how to get at drm_gem_shmem_funcs without
getting at drm_gem_shmem_funcs directly.

Test-with: 20210527140732.5762-1-daniel.vetter@ffwll.ch

Cheers, Daniel



Daniel Vetter (4):
  dma-buf: Require VM_PFNMAP vma for mmap
  drm/shmem-helper: Switch to vmf_insert_pfn
  drm/shmem-helper: Align to page size in dumb_create
  drm/vgem: use shmem helpers

 drivers/dma-buf/dma-buf.c              |  15 +-
 drivers/gpu/drm/Kconfig                |   3 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c |   8 +-
 drivers/gpu/drm/vgem/vgem_drv.c        | 342 +------------------------
 4 files changed, 32 insertions(+), 336 deletions(-)

-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
