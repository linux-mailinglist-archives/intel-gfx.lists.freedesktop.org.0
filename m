Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9AD151366
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 00:41:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6256ED56;
	Mon,  3 Feb 2020 23:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E646E463
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 23:41:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 15:29:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="225317605"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2020 15:29:06 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 15:28:28 -0800
Message-Id: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/10] Commit early to GuC
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

Main difference from v1 is that I've dropped the patch to start the
re-org of guc submission setup (I plan to re-send that as part of [1],
after Chris' intel_lrc.c split patches land) and added a patch to be
less aggressive in cleaning up the firmware objects.

Some chunks have also be split to their own patches, as requested by
Michal, to better isolate the changes.

[1] https://patchwork.freedesktop.org/series/72562/

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (10):
  drm/i915/debugfs: Pass guc_log struct to i915_guc_log_info
  drm/i915/guc: Kill USES_GUC macro
  drm/i915/guc: Kill USES_GUC_SUBMISSION macro
  drm/i915/uc: Update the FW status on injected fetch error
  drm/i915/uc: autogenerate uC checker functions
  drm/i915/uc: Improve tracking of uC init status
  drm/i915/guc: Apply new uC status tracking to GuC submission as well
  drm/i915/uc: Abort early on uc_init failure
  drm/i915/uc: consolidate firmware cleanup
  HAX: drm/i915: default to enable_guc=2

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 12 ++--
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 24 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 25 ++++++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  5 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  8 ++-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 61 +++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         | 61 +++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  9 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      | 18 +++++-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 25 ++++----
 drivers/gpu/drm/i915/i915_drv.h               | 10 ---
 drivers/gpu/drm/i915/i915_params.h            |  2 +-
 drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
 21 files changed, 169 insertions(+), 119 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
