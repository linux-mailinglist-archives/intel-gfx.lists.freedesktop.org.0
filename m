Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 545772D727D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 10:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66496ECE2;
	Fri, 11 Dec 2020 09:05:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9DB16ECC5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 09:05:32 +0000 (UTC)
IronPort-SDR: 3N7YyYDVyUx0DI/YZnB7k1EpSwuND8sfa4NxLfMw52E2bed5SLIcV4io0pbey3B/oyvAzYGFeY
 QfseZZ4uAQdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="162159097"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="162159097"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 01:05:30 -0800
IronPort-SDR: y1tr3eX8QVxHPFaaqV0n02jUl+QlRiCTEOGpaGC3KJ1KqCGdNb5JFq9qH/awJvWcqCrmZztDSu
 Uuvg5oV6KpYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="553804518"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2020 01:05:29 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 01:04:34 -0800
Message-Id: <20201211090457.32674-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC-v8 00/23] Introduce Intel PXP component - Mesa
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

PXP (Protected Xe Path) is an i915 componment, available on
GEN12+ that helps to establish the hardware protected session
and manage the status of the alive software session, as well
as its life cycle.

[commit #1 - #13]
This patch series is to allow the kernel space to create and
manage a single hardware session (a.k.a default session or
arbitrary session). So user can allocate the protected buffer,
which is encrypted with the leverage of the arbitrary hardware
session.

[commit #14 - #23]
This patch series exposes ioctl so allow userspace to create,
set, and destroy one or multiple sessions. It will also provide
the communication chanel to TEE (Trusted Execution Environment)
for the protected hardware session creation.

v2:
    - modification based on code reivew feedbacks received
    - passing pxp instead of i915 as funciton argument
    - remove dead code only for multi-session
    - move the pxp init call from i915_drv.c to intel_gt.c
    - reove the tautology naming

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
      "04 [RFC-v5] drm/i915/pxp: Create the arbitrary session after boot"

v7:
    - Use list_for_each_entry_safe instead of list_for_each_entry

v8:
    - Add MEI vtag support for PXP multi-session usage

Alexander Usyskin (1):
  mei: bus: add vtag support

Anshuman Gupta (1):
  drm/i915/pxp: Add plane decryption support

Bommu Krishnaiah (2):
  drm/i915/uapi: introduce drm_i915_gem_create_ext
  drm/i915/pxp: User interface for Protected buffer

Huang, Sean Z (17):
  drm/i915/pxp: Introduce Intel PXP component
  drm/i915/pxp: set KCR reg init during the boot time
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Func to send hardware session termination
  drm/i915/pxp: Enable PXP irq worker and callback stub
  drm/i915/pxp: Destroy arb session upon teardown
  drm/i915/pxp: Enable PXP power management
  drm/i915/pxp: Expose session state for display protection flip
  drm/i915/pxp: Implement ioctl action to reserve session slots
  drm/i915/pxp: Implement ioctl action to set session in play
  drm/i915/pxp: Implement ioctl action to terminate the session
  drm/i915/pxp: Implement ioctl action to send TEE commands
  drm/i915/pxp: Implement ioctl action to query PXP tag
  drm/i915/pxp: Termiante the session upon app crash
  drm/i915/pxp: Add PXP-related registers into allowlist
  drm/i915/pxp: Enable the PXP ioctl for protected session

Tomas Winkler (1):
  mei: pxp: add vtag parameter to mei_pxp_send/receive interface

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 drivers/gpu/drm/i915/Kconfig                  |  19 +
 drivers/gpu/drm/i915/Makefile                 |  10 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  15 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  10 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   7 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |  11 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 +
 drivers/gpu/drm/i915/i915_gem.c               |  63 ++-
 drivers/gpu/drm/i915/i915_reg.h               |  10 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  50 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 284 ++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 107 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  39 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 328 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  22 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  32 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  42 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  72 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c       | 487 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h       |  54 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 227 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  25 +
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/bus-fixup.c                  |  13 +-
 drivers/misc/mei/bus.c                        | 101 +++-
 drivers/misc/mei/client.c                     |   6 +-
 drivers/misc/mei/mei_dev.h                    |   4 +-
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 232 +++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 +
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 ++
 include/linux/mei_cl_bus.h                    |   6 +
 include/uapi/drm/i915_drm.h                   | 138 +++++
 44 files changed, 2732 insertions(+), 53 deletions(-)
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
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
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
