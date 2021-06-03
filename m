Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A929739A3E7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 17:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1F06F48E;
	Thu,  3 Jun 2021 15:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E2756E1E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 15:03:33 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id jt22so9719946ejb.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 08:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mpf+22HJp3bXTLvdn/Ycffjhcm4o9o/MNAerroFOnOE=;
 b=U7IQY+Yqtz8Hrs1nZlKCD2HYN2Uwh9i/SaVt9a8FCgR1Hqe0kGwMmrDJFOcHByMJP/
 mRjVr8TzYc4a/3ub/VBedTorux2Z4d69vFEaftpVWp1cIrZMCmXC9FCywAJ1pnzfSlZ/
 eruSWGAN4HZ3hlo5u5dTlfL5BsnVVjyFExfdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mpf+22HJp3bXTLvdn/Ycffjhcm4o9o/MNAerroFOnOE=;
 b=llxBSyCfIz4+6KrwUrDPhRKtkoeXAitgFTklG5N1a2fdOdHrhD2I+amR4TyASj4vtY
 OAvZYZL/3Zp/dGe5Kqn3JlyWA8TG4qQmU7njyMKK2XAcV5wroVhJNwGZKCMStBaQqjxI
 lU3WgcC6IYmLg5MbboBPm+KAEogRrP4Ic3L3j5ry3vvXIg+teyOMFgXfqz12Qvt88Dhv
 qwDa7vPLayvu+Yo9qrNySNY56/T0PuXjkiuxaPncAjlIIEKc7zpaPfu6pd/4x6lf/dvH
 95EhRXZUJ8OIbwqfZBi5mbX0uYFnUYZGlMHUqIe+vFFgh8XhKvauPv3o4Th6uDoBzQIR
 jx9g==
X-Gm-Message-State: AOAM533+5mWtiOphc/7FhdvLSWdDYiw9RQ6QnfIaGlFnh0DJjFoXZDfz
 Iais3oTDEQ7+spNKGu6pv7w6kP0TAPlKjQ==
X-Google-Smtp-Source: ABdhPJy9MJtoY89TBW+O0pLEcP09O9i8V8ABSjmBxpFj085wKOBfvRcttMvXAKfEerjN5ZUybgdPqA==
X-Received: by 2002:a17:906:1701:: with SMTP id c1mr13936eje.425.1622732611935; 
 Thu, 03 Jun 2021 08:03:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hz10sm1621791ejc.40.2021.06.03.08.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 08:03:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  3 Jun 2021 17:03:22 +0200
Message-Id: <20210603150326.1326658-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] shmem helpers for igt
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

I finally figured out why CI is unhappy on some machines, we've lost WC
mode on the vgem side!

Test-with: 20210527140732.5762-1-daniel.vetter@ffwll.ch

Cheers, Daniel

Daniel Vetter (4):
  drm/gem-shmem-helper: Export drm_gem_shmem_funcs
  drm/shmem-helper: Switch to vmf_insert_pfn
  drm/shmem-helper: Align to page size in dumb_create
  drm/vgem: use shmem helpers

 drivers/gpu/drm/Kconfig                |   3 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c |  11 +-
 drivers/gpu/drm/vgem/vgem_drv.c        | 346 ++-----------------------
 include/drm/drm_gem_shmem_helper.h     |   1 +
 4 files changed, 25 insertions(+), 336 deletions(-)

-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
