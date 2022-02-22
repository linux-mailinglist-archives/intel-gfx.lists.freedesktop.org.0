Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2542B4BFA21
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 15:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D31810E7A9;
	Tue, 22 Feb 2022 14:04:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4910110E731
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 14:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645538697; x=1677074697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dOpjhpM/0w0KqdfcEfeES5VinrbyJMms/djW+ICLBi0=;
 b=Dyt1Q3klYKbBO2o3WR7h05zx2DCSnRtHcmOiIEVqIxHOO1A/yvDci+rT
 39AdhCUVTHF2IFz4obX2/yktUZaBLKWbIj4szje9OIN2HINq9t/6fNbsN
 HRQh9R2YUXwGZ3e0TdZjOkTjp1jl0fuasUAb8klbzsK9iT18KXUJ42XxQ
 sgPdPsAq1gYuctCalwOBq8ZNVRcynXHAyZpQZswyH+DAMwh5jDPwQ5yAe
 WzMy17f6LXNv/jyfMHw7/Hc7lZOopHU9mIBfGhLE0BvSQWVBFEDkjZvuC
 oIG7v22YGgP5jdRO7hK78CHC/nm/hiXXZc/Q9OzLhWE75z/Uqd4jVUx8z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338142685"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="338142685"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532237266"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.218.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:30 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 14:04:14 +0000
Message-Id: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Per client GPU utilisation
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Rebase with a few small tweaks of the same old work.

Main highlight is that I have now posted a vendor agnostic IGT/tools/gputop as
well (https://patchwork.freedesktop.org/series/100571/).

Now mostly reviewed and waiting for some r-b updates and a confirmation the
vendor agnostic bit can truly live up to that goal.

Example of the intel_gpu_top output:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
intel-gpu-top: Intel Tigerlake (Gen12) @ /dev/dri/card0 -  220/ 221 MHz
    70% RC6;  0.62/ 7.08 W;      760 irqs/s

         ENGINES     BUSY                                 MI_SEMA MI_WAIT
       Render/3D   23.06% |██████▊                      |      0%      0%
         Blitter    0.00% |                             |      0%      0%
           Video    5.40% |█▋                           |      0%      0%
    VideoEnhance   20.67% |██████                       |      0%      0%

   PID              NAME  Render/3D    Blitter      Video    VideoEnhance
  3082               mpv |          ||          ||▌         ||██        |
  3117         neverball |█▉        ||          ||          ||          |
     1           systemd |▍         ||          ||          ||          |
  2338       gnome-shell |          ||          ||          ||          |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Example of the gputop output:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DRM minor 0
    PID               NAME    render       copy       video
    3816          kwin_x11 |███▎      ||          ||          ||          |
    3523              Xorg |▊         ||          ||          ||          |
 1120449               mpv |          ||          ||▋         ||          |
 1120529          glxgears |▋         ||          ||          ||          |
 1120449               mpv |▍         ||          ||          ||          |
    3860       plasmashell |▏         ||          ||          ||          |
    4764           krunner |          ||          ||          ||          |
  575206            chrome |          ||          ||          ||          |
  833481           firefox |          ||          ||          ||          |
  892924       thunderbird |          ||          ||          ||          |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

v2:
 * Added prototype of possible amdgpu changes and spec updates to align with the
   common spec.

v3:
 * Documented that 'drm-driver' tag shall correspond with
   struct drm_driver.name.

v4:
 * Dropped amdgpu conversion from the series for now until AMD folks can find
   some time to finish that patch.

v5:
 * Added drm-engine-capacity-* tag.
 * Couple small tweaks.

Test-with: 20220222135605.1120767-1-tvrtko.ursulin@linux.intel.com

Tvrtko Ursulin (8):
  drm/i915: Explicitly track DRM clients
  drm/i915: Make GEM contexts track DRM clients
  drm/i915: Track runtime spent in closed and unreachable GEM contexts
  drm/i915: Track all user contexts per client
  drm/i915: Track context current active time
  drm: Document fdinfo format specification
  drm/i915: Count engine instances per uabi class
  drm/i915: Expose client engine utilisation via fdinfo

 Documentation/gpu/drm-usage-stats.rst         | 112 +++++++++++++
 Documentation/gpu/i915.rst                    |  28 ++++
 Documentation/gpu/index.rst                   |   1 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  42 ++++-
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   6 +
 drivers/gpu/drm/i915/gt/intel_context.c       |  27 +++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  15 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  24 ++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  11 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  23 ++-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   4 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  27 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  27 +++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  10 +-
 drivers/gpu/drm/i915/i915_driver.c            |   9 ++
 drivers/gpu/drm/i915/i915_drm_client.c        | 151 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.h        |  68 ++++++++
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_file_private.h      |   3 +
 drivers/gpu/drm/i915/i915_gem.c               |  21 ++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   9 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +-
 23 files changed, 565 insertions(+), 60 deletions(-)
 create mode 100644 Documentation/gpu/drm-usage-stats.rst
 create mode 100644 drivers/gpu/drm/i915/i915_drm_client.c
 create mode 100644 drivers/gpu/drm/i915/i915_drm_client.h

-- 
2.32.0

