Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 781E73E12FA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624626E5D5;
	Thu,  5 Aug 2021 10:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F8A89356
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:11 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id hw6so8786286ejc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WOWQETYUBS18BlBuqEjYVev3m5KfOF4vIMNH7mhUHtE=;
 b=MjfOcyPmziCIZJjIx5Fw5IVacBJk68mF+kX6xwFtVsqsyYE5qO3fyO0ad424pN6BX5
 vlyzEc8v5gSX3pUEHorKUSwlQ1CCahYshgUcevphCSyLx/UzGQe2dlSCxuI0Wc/Tk4F6
 /Yj8nKpoiZI4Lyl3RAQZ60tOpX4MvK9pVFbCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WOWQETYUBS18BlBuqEjYVev3m5KfOF4vIMNH7mhUHtE=;
 b=sZ/FkXo0KTmZ0erg+iyzH5UCwm8WJ0T6enracmCOw08IM/L1jAf9rr+JVnkfW7nAXk
 EsxpOx0RXP/droXBJXFM5shHDSjfA27Dj0aX19yguEXGKDo1HtVYd2SMZazeYUxtAxz4
 QQCDsWQerNPlOaeYiTH2ljIEqB3lvc9Dr+9eK9LdYDQUjIE5bFEZzt7naWNin95XQyyL
 ec/V6TqZiBk9ko9/A9D/yKqhq5BqMD9WkFSJ/t2DcYr73QLSRRKhF6KkeUdPRV4mwIB+
 t7I2StYmuXYZEzjwWLpbDoR2kBbAYCsGTOctCLLEs6NzgxAI4SDLpHWh7QOv0Xc4uO+c
 MydA==
X-Gm-Message-State: AOAM5319d7jpadKr4f1hpxi6R2BeDGy5HT2K+b1ILr2aHgZ8ByUEhoJY
 QGYwauSNzPfLOpkfEEC8NqorJQ==
X-Google-Smtp-Source: ABdhPJz7pf6xSTb9NpuuK/wQ518JupVZp8hg118xTHA9d9XZYbyjxYkAPqvoHVV5jXYe+NSHTNXvLQ==
X-Received: by 2002:a17:906:b34c:: with SMTP id
 cd12mr4237484ejb.104.1628160430187; 
 Thu, 05 Aug 2021 03:47:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu,  5 Aug 2021 12:46:45 +0200
Message-Id: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 00/20] drm/sched dependency handling and
 implicit sync fixes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Two big changes:
- bikeshed repainted in new paint, pls don't touch, it's all fresh! The
  functions are now called _add_dependency and _add_implicit_dependencies.

- msm conversion, which includes a bugfix for the msm drm/sched
  conversion. I think it would be really good if the first two patches
  could land asap, but that means testing by some of the other drivers.
  Etnaviv especially is pending some testing/reviewed-by.

In general please review and test.

Thanks, Daniel

Daniel Vetter (20):
  drm/sched: Split drm_sched_job_init
  drm/msm: Fix drm/sched point of no return rules
  drm/sched: Barriers are needed for entity->last_scheduled
  drm/sched: Add dependency tracking
  drm/sched: drop entity parameter from drm_sched_push_job
  drm/sched: improve docs around drm_sched_entity
  drm/panfrost: use scheduler dependency tracking
  drm/lima: use scheduler dependency tracking
  drm/v3d: Move drm_sched_job_init to v3d_job_init
  drm/v3d: Use scheduler dependency handling
  drm/etnaviv: Use scheduler dependency handling
  drm/msm: Use scheduler dependency handling
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
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c  |  66 +++---
 drivers/gpu/drm/etnaviv/etnaviv_sched.c       |  65 +-----
 drivers/gpu/drm/etnaviv/etnaviv_sched.h       |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   6 +-
 drivers/gpu/drm/i915/i915_sw_fence.c          |   6 +-
 drivers/gpu/drm/i915/i915_sw_fence.h          |   1 -
 drivers/gpu/drm/lima/lima_gem.c               |   9 +-
 drivers/gpu/drm/lima/lima_sched.c             |  28 +--
 drivers/gpu/drm/lima/lima_sched.h             |   6 +-
 drivers/gpu/drm/msm/msm_gem.h                 |   5 -
 drivers/gpu/drm/msm/msm_gem_submit.c          |  36 ++--
 drivers/gpu/drm/msm/msm_ringbuffer.c          |  12 --
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  16 +-
 drivers/gpu/drm/panfrost/panfrost_job.c       |  40 +---
 drivers/gpu/drm/panfrost/panfrost_job.h       |   5 +-
 drivers/gpu/drm/scheduler/sched_entity.c      | 140 +++++++------
 drivers/gpu/drm/scheduler/sched_fence.c       |  19 +-
 drivers/gpu/drm/scheduler/sched_main.c        | 182 ++++++++++++++++-
 drivers/gpu/drm/v3d/v3d_drv.h                 |   6 +-
 drivers/gpu/drm/v3d/v3d_gem.c                 | 114 +++++------
 drivers/gpu/drm/v3d/v3d_sched.c               |  44 +---
 include/drm/drm_gem.h                         |   5 -
 include/drm/gpu_scheduler.h                   | 188 +++++++++++++++---
 include/linux/dma-buf.h                       |   7 +
 include/linux/dma-resv.h                      | 104 +++++++++-
 33 files changed, 693 insertions(+), 562 deletions(-)

-- 
2.32.0

