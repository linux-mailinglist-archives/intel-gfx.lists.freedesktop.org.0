Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2242D0889
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40FE96E546;
	Mon,  7 Dec 2020 00:22:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A16E6E542
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:08 +0000 (UTC)
IronPort-SDR: J7MJF38DWgae+Yj6n5XBL4M4MZpl9vgJCgIebwVeWfsaf42zcf3XgEW32LcH4pd8OGo6PB/e6W
 wka/kR+vFrPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889201"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889201"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:08 -0800
IronPort-SDR: hXku8L3+ioTWs0M1aFmbgg5NrMLsM9/f2bfx6D7XwkCjVjmXDi1le0GPwtkqB0tidctrHoFFGk
 5H9FxrwMi0zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586432"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:07 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:18 -0800
Message-Id: <20201207002134.13731-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC-v1 00/16] Introduce Intel PXP component - Mesa
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

PXP is an i915 componment, that helps to establish the hardware
protected session and manage the status of the alive software
session, as well as its life cycle.

This patch series is to allow the kernel space to create and
manage a single hardware session (a.k.a default session or
arbitrary session). So Mesa can allocate the protected buffer,
which is encrypted with the leverage of the arbitrary hardware
session.

Anshuman Gupta (1):
  drm/i915/pxp: Add plane decryption support

Bommu Krishnaiah (2):
  drm/i915/uapi: introduce drm_i915_gem_create_ext
  drm/i915/pxp: User interface for Protected buffer

Huang, Sean Z (12):
  drm/i915/pxp: Introduce Intel PXP component
  drm/i915/pxp: Enable PXP irq worker and callback stub
  drm/i915/pxp: Add PXP context for logical hardware states.
  drm/i915/pxp: set KCR reg init during the boot time
  drm/i915/pxp: Read register to check hardware session state
  drm/i915/pxp: Implement funcs to get/set PXP tag
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Func to send hardware session termination
  drm/i915/pxp: Destroy arb session upon teardown
  drm/i915/pxp: Enable PXP power management
  drm/i915/pxp: Expose session state for display protection flip

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 drivers/gpu/drm/i915/Kconfig                  |  19 +
 drivers/gpu/drm/i915/Makefile                 |   8 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  15 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  10 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   4 +
 drivers/gpu/drm/i915/i915_drv.c               |  15 +-
 drivers/gpu/drm/i915/i915_drv.h               |  10 +
 drivers/gpu/drm/i915/i915_gem.c               |  63 +-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 211 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  92 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  45 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  44 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  70 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c       | 800 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h       | 114 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 161 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  25 +
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 230 +++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 +
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 +
 include/uapi/drm/i915_drm.h                   |  66 ++
 31 files changed, 2139 insertions(+), 11 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
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
