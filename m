Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3B142124A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 17:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030196EA13;
	Mon,  4 Oct 2021 15:07:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49DF6E1BC;
 Mon,  4 Oct 2021 15:07:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="222904813"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="222904813"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 07:37:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="622303581"
Received: from shearne-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.208.122])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 07:37:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
Date: Mon,  4 Oct 2021 15:36:42 +0100
Message-Id: <20211004143650.699120-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v2 0/8] CPU + GPU synchronised priority scheduling
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

This is a somewhat early sketch of one of my ideas intended for early feedback
from the core scheduler experts. First and last two patches in the series are
the most interesting ones for people outside of i915. (Note I did not copy
everyone on all patches but just the cover letter for context and the rest
should be available from the mailing list.)

General idea is that current processing landscape seems to be more and more
composed of pipelines where computations are done on multiple hardware devices.
Furthermore some of the non-CPU devices, like in this case many GPUs supported
by the i915 driver, actually support priority based scheduling which is
currently rather inaccesible to the user (in terms of being able to control it
from the outside).

From these two statements a question arises on how to allow for a simple,
effective and consolidated user experience. In other words why user would not be
able to do something like:

 $ nice ffmmpeg ...transcode my videos...
 $ my-favourite-game

And have the nice hint apply to GPU parts of the transcode pipeline as well?

Another reason why I started thinking about this is that I noticed Chrome
browser for instance uses nice to de-prioritise background tabs. So again,
having that decision propagate to the GPU rendering pipeline sounds like a big
plus to the overall user experience.

This RFC implements this idea with the hairy part being the notifier chain I
added to enable dynamic adjustments. It is a global notifier which raises a few
questions so I am very curious what experts will think here. Please see the
opens in the first patch for more on this.

Last patch ("drm/i915: Connect with the process nice change notifier")
demonstrates how i915 can use the notifier. With a bit of notable tracking being
required and addedd in "drm/i915: Keep track of registered clients indexed by
task struct".

On a more positive note the thing seems to even work as is. For instance I
roughly simulated the above scenario by running a GPU hog at three nice levels
and a GfxBench TRex in parallel (as a game proxy). This is what I got:

   GPU hog nice |   TRex fps
  --------------+---------------
    not running |      48.9
         0      |      42.7
        10      |      47.9
       -10      |      29.0

When re-niced the background GPU hog has a much smaller effect on the
performance of the game user is running in the foreground. So it appears the
feature can indeed improve the user experience. Question is just if people are
happy with this method of implementing it.

v2:
 * Moved notifier outside task_rq_lock.
 * Some improvements and restructuring on the i915 side of the series.

Cc: Ingo Molnar <mingo@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Juri Lelli <juri.lelli@redhat.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>

Tvrtko Ursulin (8):
  sched: Add nice value change notifier
  drm/i915: Explicitly track DRM clients
  drm/i915: Make GEM contexts track DRM clients
  drm/i915: Track all user contexts per client
  drm/i915: Keep track of registered clients indexed by task struct
  drm/i915: Make some recently added vfuncs use full scheduling
    attribute
  drm/i915: Inherit process nice for context scheduling priority
  drm/i915: Connect with the process nice change notifier

 drivers/gpu/drm/i915/Makefile                 |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  20 +++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   6 +
 .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   3 +-
 drivers/gpu/drm/i915/i915_drm_client.c        | 130 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h        |  71 ++++++++++
 drivers/gpu/drm/i915/i915_drv.c               |   6 +
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_gem.c               |  21 ++-
 drivers/gpu/drm/i915/i915_request.c           |   2 +-
 drivers/gpu/drm/i915/i915_request.h           |   5 +
 drivers/gpu/drm/i915/i915_scheduler.c         |  16 ++-
 drivers/gpu/drm/i915/i915_scheduler.h         |  14 ++
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  12 +-
 include/linux/sched.h                         |   5 +
 kernel/sched/core.c                           |  37 ++++-
 17 files changed, 346 insertions(+), 18 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_drm_client.c
 create mode 100644 drivers/gpu/drm/i915/i915_drm_client.h

-- 
2.30.2

