Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4658213B6E7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE256E811;
	Wed, 15 Jan 2020 01:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844436E80B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 01:32:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:32:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="305337540"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2020 17:32:23 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 17:31:36 -0800
Message-Id: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Commit early to GuC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We currently wait until we attempt to load the GuC to confirm if we're
in GuC mode or not, at which point a lot of the engine setup has already
happened and needs to be updated for GuC submission. To allow us to get
the setup done directly into GuC mode, we need to commit to using GuC
as soon as possible. Currently, if GuC is enabled via modparam on a
platform that supports it, the main issue that can cause us to fall-back
to non-GuC mode is the lack of blobs on the system. It is not safe to
fall back to non-GuC after attempting to load the blobs (see
__uc_check_hw) and all the functions in the GuC paths between the fetch
and the load can only fail if something is fundamentally wrong with the
system (e.g. allocation failure). Therefore, committing to using the GuC
after the fetch is successful seems like a reasonable compromise between
early setup and fall-back options.
To better track this, this series splits the uC init status in 3 steps,
with the last one meaning we're locked in and can't fall back anymore:

- supported: HW supports the microcontroller
- wanted: supported and selected in modparam
- used: wanted and blob found on the system

(Suggestions for better naming are welcome)

The last patch in the series starts using the early commitment to setup
the GuC submission back-end instead of the execlists one, instead of
always setting up the latter and then taking over. This is just an
higher level change for now as the GuC code calls the execlists one
internally, but I plan to follow with more changes while we switch to
the new interface.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Anusha Srivatsa (1):
  HAX: force enable_guc=2

Daniele Ceraolo Spurio (6):
  drm/i915/guc: Kill USES_GUC macro
  drm/i915/guc: Kill USES_GUC_SUBMISSION macro
  drm/i915/uc: Improve tracking of uC init status
  drm/i915/uc: Abort early on uc_init failure
  drm/i915/guc: Apply new uC status tracking to GuC submission as well
  drm/i915/guc: Start considering GuC submission a proper back-end

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 10 ++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 42 +++++++------
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  2 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 10 +--
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 14 ++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 25 ++++++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 +++++++++++------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  8 ++-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 59 +++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         | 61 +++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 25 ++++----
 drivers/gpu/drm/i915/i915_drv.h               | 10 ---
 drivers/gpu/drm/i915/i915_params.h            |  2 +-
 drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
 24 files changed, 212 insertions(+), 139 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
