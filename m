Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB312E030A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 00:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274306E039;
	Mon, 21 Dec 2020 23:52:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A66B89D42
 for <Intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 23:52:06 +0000 (UTC)
IronPort-SDR: uVwD1N/fTcdwkbn98Ih7VSp/vKFPdyItq4loq3FfB6o4YZ2JnWX7m+1eo+4pdEY0ysj1pScB+x
 yCOVACBTO5yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="194230606"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="194230606"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 15:52:04 -0800
IronPort-SDR: vCyLtPS4GhZb51h7LhtQ+kjCp0fMCNrrIrTrUcnc0Nbel1a06vP0xmdcqERluSQu7J4igwqZur
 2203zK7fqcJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="416109395"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2020 15:52:04 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 15:51:51 -0800
Message-Id: <20201221235204.1977-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC-v14 00/13] Introduce Intel PXP component - Mesa
 single session
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


PXP (Protected Xe Path) is an i915 component, available on
GEN12+ that helps to establish the hardware protected session
and manage the status of the alive software session, as well
as its life cycle.

This patch series is to allow the kernel space to create and
manage a single hardware session (a.k.a. default session or
arbitrary session). So user can allocate the protected buffer,
which is encrypted with the leverage of the arbitrary hardware
session.

v2:
    - modification based on code review feedbacks received
    - passing pxp instead of i915 as function argument
    - remove dead code only for multi-session
    - move the pxp init call from i915_drv.c to intel_gt.c
    - remove the tautology naming

v3:
    - rebase to latest drm-tip

v4:
    - Append the split non-mesa patch sereis (commit #14 - #21) into
      this patch series

v5:
    - include "intel_pxp.h" in intel_pxp_sm.h at commit #14 to fix
      the build problem.

v6:
    - Fix the null pointer arb_session access bug in intel_pxp_arb.c in
      "04 [RFC-v5] drm/i915/pxp: Create the arbitrary session after
      boot"

v7:
    - Use list_for_each_entry_safe instead of list_for_each_entry

v8:
    - Add MEI vtag support for PXP multi-session usage

v9:
    - Fix error handling bug in commit #5 "Func to send hardware session
      termination". In intel_pxp_cmd.c, we should properly assign
      "err = PTR_ERR(x)" if hitting the error case "IS_ERR(x)", this is
      the only change in v9.

v10
    - Remove the multi session commits #14-#21, for now we would like to
      keep the multi session patches as downstream.
    - Adopt the code review suggestion from Wilson in commit #1

v11
    - In commit #05 "drm/i915/pxp: Func to send hardware session
      termination", we should not assume VCS0 is always on.
      Instead we use available VCS#, could be VCS0, VCS2, etc.

v12
    - Add "#include <linux/mutex.h> in #1 intel_pxp_types.h

v13
    - Add "#include <linux/mutex.h> in #1 intel_pxp_types.h (#v12 didn't
      actually update the _types.h file...)

v14
    - Add "if (INTEL_GEN(gt->i915) < 12) return;" in #1
      intel_pxp_fini(), just skip for non gen12+




Anshuman Gupta (1):
  drm/i915/pxp: Add plane decryption support

Bommu Krishnaiah (2):
  drm/i915/uapi: introduce drm_i915_gem_create_ext
  drm/i915/pxp: User interface for Protected buffer

Huang, Sean Z (9):
  drm/i915/pxp: Introduce Intel PXP component
  drm/i915/pxp: set KCR reg init during the boot time
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Func to send hardware session termination
  drm/i915/pxp: Enable PXP irq worker and callback stub
  drm/i915/pxp: Destroy arb session upon teardown
  drm/i915/pxp: Enable PXP power management
  drm/i915/pxp: Expose session state for display protection flip

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 drivers/gpu/drm/i915/Kconfig                  |  22 ++
 drivers/gpu/drm/i915/Makefile                 |   9 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  15 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  10 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   7 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 +
 drivers/gpu/drm/i915/i915_gem.c               |  63 +++-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 169 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  71 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 209 +++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  16 +
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 278 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  20 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 170 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  20 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  60 ++++
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 230 +++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 +++
 include/uapi/drm/i915_drm.h                   |  66 +++++
 37 files changed, 1702 insertions(+), 12 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
 create mode 100644 drivers/misc/mei/pxp/Kconfig
 create mode 100644 drivers/misc/mei/pxp/Makefile
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
 create mode 100644 include/drm/i915_pxp_tee_interface.h

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
