Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110657DBF2E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 18:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CFD810E34D;
	Mon, 30 Oct 2023 17:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E4310E34D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 17:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698687631; x=1730223631;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=0dEwqdyQ9TmaW+iIJsMGuc9fpOpQgfjqeI67URdYEYw=;
 b=VRSPGUc/goVBlsuuWQip52AhNHiyW0r3HX5sb71pdfipghTCmZmmD388
 n6GzbRbuQyr/SLiP73cHEq6N2JHl2NjPUyw0dOpzNkJBNhBwqRihYzFEM
 /Zz4gilbrZCq/nNpsqnvedVZ9GRsVWDAbhL9es/zlwmttGKp8L6QKUmH8
 5TZdbrOB7INpZjsXQguYofVfiEtqfxaRlNhqn1PPldER7zXUso3pNyIdp
 2im04/557gqpPT/mnJQqRzqvY4qTQThjmi3AIOd2wsw+k9yB5P3xqg2Dr
 z7y/H81ijWH22S82YTuDvJ8nTQAwqw5ZJ+AxOdtK5nolXXtHB1m7i8Qxa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="387947850"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="387947850"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 10:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="1007493912"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="1007493912"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 10:40:29 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 30 Oct 2023 18:40:11 +0100
Message-Id: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHvqP2UC/x3MWwrCQAyF4a2UPBuYROptK1LKXKIN4lgyRYTSv
 Rt9/OCcf4UmptLg0q1g8tamr+qgXQd5ivUuqMUNHHhPgY9ochsXi/khNuqZegzEfQnpRJkP4Lf
 ZF/r5J6+DO8UmmCzWPP1CxZ646Azb9gW9/i/vfAAAAA==
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2532;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=0dEwqdyQ9TmaW+iIJsMGuc9fpOpQgfjqeI67URdYEYw=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlP+qMrhJZfaA2vvb1rzr5rJiE3s8UJ05j9Mmrw14V
 0y3rH/uJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZT/qjAAKCRAjYrKT3hD913h/C/
 9F+aVTuVmXi9HawZRnS6hs00aK/8lMhLe3pwjNYXCqqeEVY2OhM+oqSRoq2M5cJudHhp0PxR2I07X9
 oSQP04jzdGEPBt8xhOLn3c/atXIbDDFC8buGIFZ8sNu/fzbH24jByyWUlrv2sEc6aLbN1zvOs0DSu4
 Q88BpT6avoKo4MB91Ym5J7hVGR80SajDne9o0dRPzbMhizJFnFXX1D1KeoGlEodfdEIul1ZiKcCgTH
 yQ+qyRruSAh1xXvf9PtfzHM56d0ns/uY0OtmQpZUrbIuSuCk9YzABDWu/six+GDGpQoQdweVMc5jEl
 ABJlUL0PvmdMlzh69ftz+0HQFE51Y1bKd4b24wcgAJY1Vny9sHRdH6LpCO9QDRutghZy+i1nco3dsv
 SKkDTW35VSjt432zv9nEkeIfSmkovm1WOgxJQbTkaAJsOQpTVEvIuE/SZ51WlsJxajKQKpJ/WXYMnI
 WrWqhWy82AOAaPyWFT+xWLWgNngEsHcQUchHOm9EmZIfQ=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: use ref_tracker library in i915
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset replaces custom tracking solution
with ref_tracker library. This is follow-up of the
work from patchset[1]. Core part is already merged
and present in drm-tip. This is actually re-base of [1]
with minor fixes for code introduced later.

[1]: https://lore.kernel.org/r/20230224-track_gt-v8-0-4b6517e61be6@intel.com

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Andrzej Hajda (2):
      drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
      drm/i915: Track gt pm wakerefs

 drivers/gpu/drm/i915/Kconfig.debug                 |  18 ++
 drivers/gpu/drm/i915/display/intel_display_power.c |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  14 +-
 .../drm/i915/gem/selftests/i915_gem_coherency.c    |  10 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |  14 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        |  13 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h  |   3 +-
 drivers/gpu/drm/i915/gt/intel_context.h            |   4 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_pm.c          |   7 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h       |   2 +
 .../gpu/drm/i915/gt/intel_execlists_submission.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c               |  16 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c              |  12 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h              |  38 +++-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |   4 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c       |  20 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c           |   5 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c           |  10 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c             |  17 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c            |   5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  14 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
 drivers/gpu/drm/i915/i915_pmu.c                    |  16 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c            | 221 ++-------------------
 drivers/gpu/drm/i915/intel_runtime_pm.h            |  11 +-
 drivers/gpu/drm/i915/intel_wakeref.c               |  35 +++-
 drivers/gpu/drm/i915/intel_wakeref.h               |  73 ++++++-
 28 files changed, 283 insertions(+), 307 deletions(-)
---
base-commit: 9f8df32473d5eeef04b74b97c190f839349a2652
change-id: 20231027-ref_tracker_i915-0125d0b81c26

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

