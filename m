Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2324C2D38E
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 17:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6458C10E444;
	Mon,  3 Nov 2025 16:48:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="AsOQff3j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D819510E446
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 16:48:10 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-47118259fd8so34708025e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 08:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762188489; x=1762793289; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=m5sPGkrkFa+BIv4P90jHrJVfi2snemHJi/xGZTBOH3w=;
 b=AsOQff3jCWVFBnXoFKVE3TUByiscYusNm3eSlPKJZwLIIVQgC5K2mJSgcPRJzh69h8
 le/69bGpjCUw3RIMgd6opT5+U0qwmbRTFCR3zEaSGfCVUfoPUxC63XQDQTWoNfb75Vdu
 MPpg4XCCOepYaHcxd8/8f05mSofutkLd/tPeW9bIXpsJDMZj7AatTgK7vcAlZbxKPwd6
 rHw10V3nAXRLz94ZtsUBGoYvOfZGQuWGcyczWF2IRHfh//yFb24iHx6z5ytW9BR78DJE
 vmARJtDF5bsB2NzdZXxPHgTq2lg1sIykvA7rfH8wldw9IazYwYz+UoKELYMSsedTQXkA
 isFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762188489; x=1762793289;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m5sPGkrkFa+BIv4P90jHrJVfi2snemHJi/xGZTBOH3w=;
 b=neOTVahgDpe4FV/1ql54rHJDEVIwFiMOwmkpKCyCKsgalV+nGVLDm9me4FniFa1SrE
 K1wpVwQQ7xqwkaG3fOGob/xDkbNtm84xbGaBOn6BG0W/iEEGII5xjPaZhq43AliD5+OD
 ZLiEcHJE3ybQRoo8M1YnwcERwhqIkSzY1whW5jVkuhtE8HJsYpSAn+9qOm/DmismdPiT
 5+334OrsqYaVxdnVLssejXrpwIZ6+xVxQ9FsQxGgPX9K7Kv3Me4qkJT+FzDVrpaRxvUJ
 emqxZtcenfZDtgV4d4gy5Brv7on4FFkHa1Hi8b0elVIXe6hpZXms7XNm5m5ERVboJZB6
 xfAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcP9aQCciPwP9SiRn/6/RtouEw3Oo0OpFEtMMCxgIDJFp9TeSC0YS4TMpYO2oPX5qhWbXWQBgFHC8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx81ybPZIQsORLq/9oqVJgvQBnDs02wcZhE3b7Bhj2iq3J74YBY
 S6f8cvqob6LXboTJ5p4tl0xgV7aJzMY/eT/zsCAFqCohaauejcH8EJUY14fqIfnigM8=
X-Gm-Gg: ASbGncvAQegoow4gTeGzw/HEmq+CvcPIBRcckQvQM3UBWozMc75uGvVlhoVWjVVyXzr
 /aCLHHyvV2EeAVaOJEf6LhKwJCiwaQrQJrOuEbaIM3fXSvh+VvpsJVls/Oh3CTz+ZRamMeFopuQ
 UZwgQiEEfJhvtgr1vq4Gdvs2RLR3DWhtBbZYiSbwYt0FqPvER3yKkVyylo/LPHhISSS7AVJFcUn
 7UsHLnGcPEDsUlRKW/ilm8hFSz+J4epIMnH+4HtVDGK2wLrncESddLNXKDBu8oMlrLGmlBgE7pX
 MMZ37Q9DRNSSjts9oJpQD7q3g7DjUuM4vV+l4WzdSlDJLSmeZgTVes3MjXLAAxkMH9uB2Hqn4Wd
 SjZWORRD4TfSg2E2pgZaTdwdns8fL+x0Hk7q/AfSiy1Emrm5wpzNund1S469MGOtQ7fUF+HUePH
 UgG6kw5r/mjgxRzDpVnschx80S
X-Google-Smtp-Source: AGHT+IHn+Z1e4sX03I15uydQaHtVImGCDSavhgeRz4F8FOoyRNKT0SkIDzFYOHn5zbcS1AudwJpIGg==
X-Received: by 2002:a05:600c:4e87:b0:46e:74cc:42b8 with SMTP id
 5b1f17b1804b1-4773080fbfbmr118466665e9.17.1762188489181; 
 Mon, 03 Nov 2025 08:48:09 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429d1061efasm9864899f8f.24.2025.11.03.08.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 08:48:08 -0800 (PST)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Michal Hocko <mhocko@suse.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 0/3] replace old wq(s), add WQ_PERCPU to alloc_workqueue
Date: Mon,  3 Nov 2025 17:47:57 +0100
Message-ID: <20251103164800.294729-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hi,

=== Current situation: problems ===

Let's consider a nohz_full system with isolated CPUs: wq_unbound_cpumask is
set to the housekeeping CPUs, for !WQ_UNBOUND the local CPU is selected.

This leads to different scenarios if a work item is scheduled on an
isolated CPU where "delay" value is 0 or greater then 0:
        schedule_delayed_work(, 0);

This will be handled by __queue_work() that will queue the work item on the
current local (isolated) CPU, while:

        schedule_delayed_work(, 1);

Will move the timer on an housekeeping CPU, and schedule the work there.

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.

This lack of consistency cannot be addressed without refactoring the API.

=== Recent changes to the WQ API ===

The following, address the recent changes in the Workqueue API:

- commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
- commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

The old workqueues will be removed in a future release cycle.

=== Introduced Changes by this series ===

1) [P 1-2]  Replace uses of system_wq and system_unbound_wq

    system_wq is a per-CPU workqueue, but his name is not clear.
    system_unbound_wq is to be used when locality is not required.

    Because of that, system_wq has been replaced with system_percpu_wq, and
    system_unbound_wq has been replaced with system_dfl_wq.

2) [P 3] WQ_PERCPU added to alloc_workqueue()

    This change adds a new WQ_PERCPU flag to explicitly request
    alloc_workqueue() to be per-cpu when WQ_UNBOUND has not been specified.


Thanks!

---
Changes in v2:
- fix typo in patch subject (add instead of added).

- in every patch is also present the specific commit hash about the
  workqueue API change.

- fixed commit log of P1 (removed "Adding system_dfl_wq...").

- P2: subject changed reflecting the effective change.

- rebased to v6.18-rc4.

Marco Crivellari (3):
  drm/i915: replace use of system_unbound_wq with system_dfl_wq
  drm/i915: replace use of system_wq with system_percpu_wq in the
    documentation
  drm/i915: add WQ_PERCPU to alloc_workqueue users

 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_tc.c             | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c        | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c              | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c           | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c   | 6 +++---
 drivers/gpu/drm/i915/i915_active.c                  | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                  | 5 +++--
 drivers/gpu/drm/i915/i915_drv.h                     | 2 +-
 drivers/gpu/drm/i915/i915_sw_fence_work.c           | 2 +-
 drivers/gpu/drm/i915/i915_vma_resource.c            | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c                | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c            | 2 +-
 drivers/gpu/drm/i915/selftests/i915_sw_fence.c      | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c    | 2 +-
 16 files changed, 24 insertions(+), 23 deletions(-)

-- 
2.51.1

