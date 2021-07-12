Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2BD3C646C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5042989DA8;
	Mon, 12 Jul 2021 20:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5310889DA8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:01:58 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id k4so20945491wrc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rQ/9B9gp7BfGv+I7EqOLo+1pdU+MHrWq3XnBCjgYxfk=;
 b=L5UHG+Kw93Duna2ZzLKxXclr1qe2L7eKrxZVfnALrgN3ZvRUXbvGDBsAn2G9U5GC8r
 y8icd8rtiA2tBHfdM8R17XgM6GQxNpC7zOWNQo1VDPs9q3u2xG2hxHI1U4pRL0lU1ryo
 /oU3iSEV1RilOpA+RVhi5NAX8nNscXiumHtGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rQ/9B9gp7BfGv+I7EqOLo+1pdU+MHrWq3XnBCjgYxfk=;
 b=XT3jQBiglCvjiwU/64+6SNCza+G5iCaxf9KsyZiFG/fUvhrkRi2wPzAROcX/TyqxTU
 ud233wQgAcl3elv3YOqHlBiNAPPDM1SszCKK4EaD9tGGXwu/Bg/ShUzwax3f4DdAF1Bj
 HxeKBpyUdq0QJFVM8zDWrVmbSuSYLUSrBjwITfJVLL11rGFIIvYndpssFb6DQ1zKXo2C
 iIylebiZ1N+vA2lAqXKv1tNUGj8qvJmQhOuNYslfdxWxfvLQVG6Uut2sEFCp4r7Q0JgS
 0oAKByIPxmwUS7MZG6DR3arlOA3tcugi7WgyX72KS0qujG7HTwgu4A/nUOvuqX2EraQx
 psvw==
X-Gm-Message-State: AOAM532FRlxs0OvRmsxzu+4PcaGMiOTpU/lH1ah5cUJcoPZJFzXa7oF/
 RK187u4l5j8UbLcQ4ygBYAUsH3xuRveaOA==
X-Google-Smtp-Source: ABdhPJzOI24tnXrMeIteuBh5hI+52aMMqGVPI4see49LW0OfBDMJaxaqIYU4yTWmDbOOrG1PEqEybg==
X-Received: by 2002:a05:6000:1867:: with SMTP id
 d7mr818971wri.199.1626120116991; 
 Mon, 12 Jul 2021 13:01:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.01.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:01:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:34 +0200
Message-Id: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/18] drm/sched dependency tracking and
 dma-resv fixes
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

Quick new version since the previous one was a bit too broken:
- dropped the bug-on patch to avoid breaking amdgpu's gpu reset failure
  games
- another attempt at splitting job_init/arm, hopefully we're getting
  there.

Note that Christian has brought up a bikeshed on the new functions to add
dependencies to drm_sched_jobs. I'm happy to repaint, if there's some kind
of consensus on what it should be.

Testing and review very much welcome, as usual.

Cheers, Daniel

Daniel Vetter (18):
  drm/sched: Split drm_sched_job_init
  drm/sched: Barriers are needed for entity->last_scheduled
  drm/sched: Add dependency tracking
  drm/sched: drop entity parameter from drm_sched_push_job
  drm/sched: improve docs around drm_sched_entity
  drm/panfrost: use scheduler dependency tracking
  drm/lima: use scheduler dependency tracking
  drm/v3d: Move drm_sched_job_init to v3d_job_init
  drm/v3d: Use scheduler dependency handling
  drm/etnaviv: Use scheduler dependency handling
  drm/gem: Delete gem array fencing helpers
  drm/sched: Don't store self-dependencies
  drm/sched: Check locking in drm_sched_job_await_implicit
  drm/msm: Don't break exclusive fence ordering
  drm/etnaviv: Don't break exclusive fence ordering
  drm/i915: delete exclude argument from i915_sw_fence_await_reservation
  drm/i915: Don't break exclusive fence ordering
  dma-resv: Give the docs a do-over

 Documentation/gpu/drm-mm.rst                  |   3 +
 drivers/dma-buf/dma-resv.c                    |  24 ++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c        |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_job.c       |   4 +-
 drivers/gpu/drm/drm_gem.c                     |  96 ---------
 drivers/gpu/drm/etnaviv/etnaviv_gem.h         |   5 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c  |  64 +++---
 drivers/gpu/drm/etnaviv/etnaviv_sched.c       |  65 +-----
 drivers/gpu/drm/etnaviv/etnaviv_sched.h       |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   8 +-
 drivers/gpu/drm/i915/i915_sw_fence.c          |   6 +-
 drivers/gpu/drm/i915/i915_sw_fence.h          |   1 -
 drivers/gpu/drm/lima/lima_gem.c               |   7 +-
 drivers/gpu/drm/lima/lima_sched.c             |  28 +--
 drivers/gpu/drm/lima/lima_sched.h             |   6 +-
 drivers/gpu/drm/msm/msm_gem_submit.c          |   3 +-
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  16 +-
 drivers/gpu/drm/panfrost/panfrost_job.c       |  39 +---
 drivers/gpu/drm/panfrost/panfrost_job.h       |   5 +-
 drivers/gpu/drm/scheduler/sched_entity.c      | 140 +++++++------
 drivers/gpu/drm/scheduler/sched_fence.c       |  19 +-
 drivers/gpu/drm/scheduler/sched_main.c        | 181 +++++++++++++++--
 drivers/gpu/drm/v3d/v3d_drv.h                 |   6 +-
 drivers/gpu/drm/v3d/v3d_gem.c                 | 115 +++++------
 drivers/gpu/drm/v3d/v3d_sched.c               |  44 +----
 include/drm/drm_gem.h                         |   5 -
 include/drm/gpu_scheduler.h                   | 186 ++++++++++++++----
 include/linux/dma-buf.h                       |   7 +
 include/linux/dma-resv.h                      | 104 +++++++++-
 31 files changed, 672 insertions(+), 528 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
