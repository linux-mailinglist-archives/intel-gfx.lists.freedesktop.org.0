Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 496976ED76A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 00:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F65510E20D;
	Mon, 24 Apr 2023 22:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AA810E20D;
 Mon, 24 Apr 2023 22:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682373956; x=1713909956;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=C8DZu5U/wSsVYc+CLUrWxHLYcsvk8ZOLg8rYgW7chsg=;
 b=XxFxtTA1MqpjtILnH/ot2pc1MyxWPoniYkDxtc/uCJRxuDmLLNzSCa4d
 xGBW9a+v0UJMUmfUhqLn1p9uD0Tvhd4gVgSbGgqaaqVWTH4cgo0Zc+5/O
 3obGuJufeao2Vux7f1HOdyCQT80pG3/aP8UGu1adaTTYS81TQzZ68OSEG
 Ok2u9OOutP8Phx6EaugDnaUDQ2xJ2KXWtwJp3eC4qMgGGQIejkv1eOwPR
 DO/OB2nUIJHgD5K4fuCM6/LOMWMEcEaxdpzv0w0RtngU8Mbsw7mkQ+uad
 fv9NOAZdpMjRbierHcUzmHTegY80rkTcd5hySEDINhW4Rs/mDXcbtMOB5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="335473624"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="335473624"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 15:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="939500105"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="939500105"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 15:05:49 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Tue, 25 Apr 2023 00:05:38 +0200
Message-Id: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADL9RmQC/3XOTW7DIBAF4KtErEsLGAPpqveoogqGIUatfwTEa
 hX57oWsKqtevtF88+ZOMqaImbye7iThGnOcpxrM04nAYKcr0uhrJoKJjgkhaUkWPj+uhXLXeWuc
 t+A1qevOZqQu2QmGBm5LLgnt+OLTSEtc2sqSMMTvR9v7peYh5jKnn0f5ytv0n56VU0brSLCzCuB
 BvcWp4NczzCNpR1Z5BGWFUkk01kk4W7eH/RHsK9TaoVFBgNFiD9URVO1VD0YxHjwTYQ/1EdQVch
 6Y6XoDHOEv3LbtF8y48qenAQAA
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Eric Dumazet <edumazet@google.com>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v8 0/7] drm/i915: use ref_tracker library for
 tracking wakerefs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is revived patchset improving ref_tracker library and converting
i915 internal tracker to ref_tracker.
The old thread ended without consensus about small kernel allocations,
which are performed under spinlock.
I have tried to solve the problem by splitting the calls, but it results
in complicated API, so I went back to original solution.
If there are better solutions I am glad to discuss them.
Meanwhile I send original patchset with addressed remaining comments.

To: Jani Nikula <jani.nikula@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: David Airlie <airlied@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
To: Eric Dumazet <edumazet@google.com>
Cc: linux-kernel@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: netdev@vger.kernel.org
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Das, Nirmoy <nirmoy.das@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

---
Changes in v8:
- addressed comments from Eric, Zhou and CI, thanks,
- added ref_tracker_dir_init name argument to all callers in one patch
- moved intel_wakeref_tracker_show to *.c
- s/intel_wakeref_tracker_show/intel_ref_tracker_show/
- removed 'default n' from Kconfig
- changed strlcpy to strscpy,
- removed assignement from if condition,
- removed long lines from patch description
- added tags
- Link to v7: https://lore.kernel.org/r/20230224-track_gt-v7-0-11f08358c1ec@intel.com

Changes in v7:
- removed 8th patch (hold wakeref), as it was already merged
- added tags (thx Andi)
- Link to v6: https://lore.kernel.org/r/20230224-track_gt-v6-0-0dc8601fd02f@intel.com

Changes in v6:
- rebased to solve minor conflict and allow CI testing
- Link to v5: https://lore.kernel.org/r/20230224-track_gt-v5-0-77be86f2c872@intel.com

Changes in v5 (thx Andi for review):
- use *_locked convention instead of __*,
- improved commit messages,
- re-worked i915 patches, squashed separation and conversion patches,
- added tags,
- Link to v4: https://lore.kernel.org/r/20230224-track_gt-v4-0-464e8ab4c9ab@intel.com

Changes in v4:
- split "Separate wakeref tracking" to smaller parts
- fixed typos,
- Link to v1-v3: https://patchwork.freedesktop.org/series/100327/

---
Andrzej Hajda (7):
      lib/ref_tracker: add unlocked leak print helper
      lib/ref_tracker: improve printing stats
      lib/ref_tracker: add printing to memory buffer
      lib/ref_tracker: remove warnings in case of allocation failure
      drm/i915: Correct type of wakeref variable
      drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
      drm/i915: Track gt pm wakerefs

 drivers/gpu/drm/i915/Kconfig.debug                 |  18 ++
 drivers/gpu/drm/i915/display/intel_display_power.c |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |   7 +-
 .../drm/i915/gem/selftests/i915_gem_coherency.c    |  10 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |  14 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        |  13 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h  |   3 +-
 drivers/gpu/drm/i915/gt/intel_context.h            |   4 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.c          |   7 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h       |   2 +
 .../gpu/drm/i915/gt/intel_execlists_submission.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c              |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h              |  38 +++-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |   4 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c       |  20 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c           |   5 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c           |  10 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c             |  17 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c            |   5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  12 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
 drivers/gpu/drm/i915/i915_pmu.c                    |  16 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c            | 221 ++-------------------
 drivers/gpu/drm/i915/intel_runtime_pm.h            |  11 +-
 drivers/gpu/drm/i915/intel_wakeref.c               |  35 +++-
 drivers/gpu/drm/i915/intel_wakeref.h               |  73 ++++++-
 include/linux/ref_tracker.h                        |  25 ++-
 lib/ref_tracker.c                                  | 179 ++++++++++++++---
 lib/test_ref_tracker.c                             |   2 +-
 net/core/dev.c                                     |   2 +-
 net/core/net_namespace.c                           |   4 +-
 32 files changed, 445 insertions(+), 332 deletions(-)
---
base-commit: 4d0066a1c0763d50b6fb017e27d12b081ce21b57
change-id: 20230224-track_gt-1b3da8bdacd7

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>
