Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B38392115
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 21:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023486E5CF;
	Wed, 26 May 2021 19:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22386E169;
 Wed, 26 May 2021 19:45:27 +0000 (UTC)
IronPort-SDR: 8FzZx9oCa/FPUtpNsWSfrumO9KZdWSNYhldCTU35ooYzb+GtcZIMGXJauFsIPhJ32Vjozg2jLh
 6PWt4irC85UQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="288140277"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="288140277"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 12:45:26 -0700
IronPort-SDR: LaBAKPm47K/akb/kJGaNrjBhVrOAYmtYYuXvClP6DpexsagHuSi6hqHz/9N+uovF1t0MnxHxxt
 O0KJ0EE5IUIQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547352739"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 12:45:26 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 26 May 2021 13:03:17 -0700
Message-Id: <20210526200318.113351-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Introduce i915_sched_engine object
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As discussed in [1] we are breaking that large series into a several
smaller ones. This series is stand alone patch part of step #4 which has
no other dependencies or patches relevant to it.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/89844/

Matthew Brost (1):
  drm/i915: Introduce i915_sched_engine object

 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |  16 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  77 ++--
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  10 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  42 +--
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 350 +++++++++++-------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  13 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  17 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  36 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   6 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   6 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c      |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  75 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |   7 +-
 drivers/gpu/drm/i915/i915_request.c           |  50 +--
 drivers/gpu/drm/i915/i915_request.h           |   2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 168 ++++-----
 drivers/gpu/drm/i915/i915_scheduler.h         |  65 +++-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  63 ++++
 21 files changed, 575 insertions(+), 440 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
