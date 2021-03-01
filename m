Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B56328E74
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645626E884;
	Mon,  1 Mar 2021 19:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337C86E884
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:34:02 +0000 (UTC)
IronPort-SDR: 0E0V2E4jPMBTZ2OdOT6Xc4mkX4Hw2ZfLV5xbyppKi5ntxVluZm3bUDscsNIH993hHPy1Ig0DTF
 eoy6qhy0fuiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="247985709"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="247985709"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:34:00 -0800
IronPort-SDR: K13oyEmOT8k8qaqQjtMIVRc+3zaTyS/xjPKxjlfubWbCBIR3Bup8d+xORwI69a8aLEuoPNtrBW
 f6rOk0vO4IPw==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435483683"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:32:58 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:44 -0800
Message-Id: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/16] Introduce Intel PXP
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PXP (Protected Xe Path) is an i915 component, available on
GEN12+, that helps to establish the hardware protected session
and manage the status of the alive software session, as well
as its life cycle.

Several major functional changes compared to v1:
- Termination is issued on runtime resume as well.
- Protected objects and contexts are marked as invalid on termination.
  Invalid contexts are reported to userspace via RESET_STATS.
- Trying to flip an invalid objects results in a black frame.

I've done more testing compared to v1 (initial IGTs from Alan will be
hitting the ML soon), but I still haven't stress-tested with userspace
applications, so there might be bugs. I'll make sure to run more testing
and fix everything before merge, but in the meantime I wanted to get
forward with the reviews given that the current tests give me enough
confidence that this isn't completely broken.

Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Juston Li <juston.li@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Anshuman Gupta (2):
  drm/i915/pxp: Add plane decryption support
  drm/i915/pxp: black pixels on pxp disabled

Bommu Krishnaiah (2):
  drm/i915/uapi: introduce drm_i915_gem_create_ext
  drm/i915/pxp: User interface for Protected buffer

Daniele Ceraolo Spurio (6):
  drm/i915/pxp: Define PXP component interface
  drm/i915/pxp: define PXP device flag and kconfig
  drm/i915/pxp: allocate a vcs context for pxp usage
  drm/i915/pxp: set KCR reg init during the boot time
  drm/i915/pxp: interface for creation of protected contexts
  drm/i915/pxp: enable PXP for integrated Gen12

Huang, Sean Z (5):
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Implement arb session teardown
  drm/i915/pxp: Implement PXP irq handler
  drm/i915/pxp: Enable PXP power management

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 drivers/gpu/drm/i915/Kconfig                  |  11 +
 drivers/gpu/drm/i915/Makefile                 |   9 +
 .../drm/i915/display/skl_universal_plane.c    |  50 +++-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  59 ++++-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  18 ++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  23 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  12 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  13 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |  10 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  19 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   7 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  48 ++++
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 215 ++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  70 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 166 +++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  15 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 153 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |  33 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  99 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  33 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 140 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  18 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 199 +++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  38 +++
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 ++++
 include/uapi/drm/i915_drm.h                   |  92 +++++++
 44 files changed, 1972 insertions(+), 21 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
 create mode 100644 drivers/misc/mei/pxp/Kconfig
 create mode 100644 drivers/misc/mei/pxp/Makefile
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
 create mode 100644 include/drm/i915_pxp_tee_interface.h

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
