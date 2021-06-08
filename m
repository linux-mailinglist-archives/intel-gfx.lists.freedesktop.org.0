Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7C13A0119
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 21:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576CA6EC2F;
	Tue,  8 Jun 2021 19:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC96A6E58E;
 Tue,  8 Jun 2021 19:00:17 +0000 (UTC)
IronPort-SDR: ohlex9kLNiui/BCAGeWbVXHWRSr4HJNKcXzex9MBeBqBTKCyemxMNLGCqmIfcMT344OCtYuNqe
 imyZSNb+IdfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="266067579"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="266067579"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:00:05 -0700
IronPort-SDR: K+LMjjC7XQqqsxTLLZirWAPYsaEX7bEj56YdjYgmHtX6g6Zfa8eh21qjggP6sCdmRztkemW8nf
 qotAftxT7D4w==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="485391305"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 12:00:03 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  8 Jun 2021 12:17:46 -0700
Message-Id: <20210608191754.127059-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] Introduce i915_sched_engine object
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
Cc: jason.ekstrand@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As discussed in [1] we are breaking that large series into a several
smaller ones. This series is stand alone patch part of step #4 which has
no other dependencies or patches relevant to it.

v2:
 (Daniel Vetter):
  - Split into several smaller patches
  - Add kernel doc for i915_sched_engine
 (Matthew Brost):
  - Drop wrapper functions for tasklet as eventually tasklet will be
    dropped 

v3:
 (Jason Ekstrand)
  - Address his comments, change logs in individual patches
  - Squash documentation patch into previous patches as needed
 (Checkpatch)
  - Fix warnings
 (Docs)
  - Fix warnings

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/89844/

Matthew Brost (8):
  drm/i915: Move priolist to new i915_sched_engine object
  drm/i915: Add i915_sched_engine_is_empty function
  drm/i915: Reset sched_engine.no_priolist immediately after dequeue
  drm/i915: Move active tracking to i915_sched_engine
  drm/i915: Move engine->schedule to i915_sched_engine
  drm/i915: Add kick_backend function to i915_sched_engine
  drm/i915: Update i915_scheduler to operate on i915_sched_engine
  drm/i915: Move submission tasklet to i915_sched_engine

 Documentation/gpu/i915.rst                    |   5 +
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |  16 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  72 ++--
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   4 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  49 +--
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 323 +++++++++++-------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  12 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  17 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  36 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   6 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   6 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c      |   2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  70 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |   4 +-
 drivers/gpu/drm/i915/i915_request.c           |  42 +--
 drivers/gpu/drm/i915/i915_request.h           |   2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 168 +++++----
 drivers/gpu/drm/i915/i915_scheduler.h         |  47 ++-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  89 +++++
 22 files changed, 555 insertions(+), 425 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
