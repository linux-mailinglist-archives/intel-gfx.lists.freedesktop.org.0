Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18812C2BC67
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5DD10E3C9;
	Mon,  3 Nov 2025 12:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="TD8sLM9W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8393010EAF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 10:09:38 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-475dab5a5acso10516085e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 03:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1761905377; x=1762510177; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5gLsyclWIg1Hbk8GCNQzeqbJp579/jQeUbknnNQhnaI=;
 b=TD8sLM9W/eIes+VwvHuLM8vAwm593tjNRLFSgDCSY8dKzi0P1YnDrf0vxUlO92IIwp
 uGxnO7g3kSTdJG3JWPgplML0oV6p1UVK4M89TlzG/LqERYd2R5h7CWp/np/TOwuj5g5l
 jE+g7J2qIKyg76rE09oDCEHPtoL8VY+aw9JsRDkaRKpB4l84pW/onbnWsKZyrZ2VHjP8
 knEqM0RC2DIPfRte8JGTEJgUIETKbXIisJPq58vEc7AnLPqdzoSq7jVAhZ3w858kf5/D
 msZ3fVHZN2TQZ1wAqT68TfRYY8DvxldGGgT3MNoHowfoZVmvE5TrnzT/18xt3aYwoiE+
 3X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761905377; x=1762510177;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5gLsyclWIg1Hbk8GCNQzeqbJp579/jQeUbknnNQhnaI=;
 b=atEQvHreP4WzjA1A7kX5wbEgCWmLagpO8wcKZKIZhKZFGacvQKUwRavUsACiR6ldEx
 IdmwGam7wA3oSq+eFnltl3/3PYAVs2cKD7QtBUE+RSsYGsC/3oU/MUuzi8UXZjdsaVlB
 FRDgFAU+83T0wXUZVvQzI1xfpC9AYx0oZJj+hhwTYg3TY3W2AxZXLCB8sBhOrBPyp4I9
 hjspHG2d/YmduzOwQ3JHGfJowzg3hWHgaEDS2IDFBnWsPySYnZE8E5VxZomqqJpcXfHN
 T0jDuN2p+jsfrZh269x+gnMHlZxMNCCYsmNXXb76eQ2BFxaM5f6dveB+YGGTRbFIym4W
 IKxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXAScUS4IhuIo81BlN8xlT/C6pIJShYaeu0lQIWhGpBKD1+OsidHp/XAa8HxjDi9nUWiEbqBntyCLs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw+kDEhMmBMyZhdcaBFpzdnQoT+ykw3PuLCaNT+1+TBnfmA/Ott
 Weo+FQCa6l7nBUk3EhvcZn7Td09/hiUQd8YBBhSORPfsU0ePT3EpgaGo+IMyCAAGUJI=
X-Gm-Gg: ASbGnctt/ExqPIM7gWcPZyiE1dc0shci1huKx6E5Re7CSohZlEHEBaDPtSP+jXRVN6e
 btxpud/CQkBNALIjdHkTbcggP16idcv2KEdgLrdtsouhiv0CXwyBztiKNekx3sBhrvy73trrzN8
 MiQ9lusulkB3l//gccWBhp8JmEIsNVSLBYxaxVkPoulQgdSPk01xw5KnN+p7Lu9ugCK8BjqDpU2
 ibAIJsVNne9FURYaFutosIsPGdEG5Sab9xDp9A9UHbDJs78KckOpjjn/pwgiFXwJf7au3CnI/5m
 yPhSwTPrXJnPpyuOlGKt7ZU+uPGzgnXjlGh5mbzmXnmlmbx6QM8FCvdHZb3P8LHOfA7Y/C6wVbn
 lLdIyYG+gzIWI8qm1vetZBUfNbUDLw2BX4DYFHhRCEyX/wzOZPJUbLirOcwDoxKRb3X0xoWZYwe
 resqfsDKAHMnvKeTlOfstq7U3Ncp5xUojBgQk=
X-Google-Smtp-Source: AGHT+IFHb0AaSWW+DTXGcxSx3IxdrfeDMO0RYX9+22XPN4yMZ4YQ/BGd2RRqAhlylqD2wBta80eN9A==
X-Received: by 2002:a05:600c:a08e:b0:46e:49fb:4776 with SMTP id
 5b1f17b1804b1-477307c2ad7mr21989415e9.11.1761905376895; 
 Fri, 31 Oct 2025 03:09:36 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429c13e1c9esm2839171f8f.22.2025.10.31.03.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 03:09:36 -0700 (PDT)
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
 Simona Vetter <simona@ffwll.ch>
Subject: [PATCH 0/3] replace old wq(s), added WQ_PERCPU to alloc_workqueue
Date: Fri, 31 Oct 2025 11:09:20 +0100
Message-ID: <20251031100923.85721-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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


Marco Crivellari (3):
  drm/i915: replace use of system_unbound_wq with system_dfl_wq
  drm/i915: replace use of system_wq with system_percpu_wq
  drm/i915: WQ_PERCPU added to alloc_workqueue users

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
2.51.0

