Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2AC34BF9E
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 00:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DC989F45;
	Sun, 28 Mar 2021 22:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C492C89F45
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Mar 2021 22:57:41 +0000 (UTC)
IronPort-SDR: 6v5uKJye+RjFIVGFLb67ax2RbqS9ZAFkHd9itVnLZrxZ13a6uEfu4pvix8X5HGMJ0R/McOeohM
 biC417lIWTyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="255443989"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="255443989"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:40 -0700
IronPort-SDR: VOkDdYqW5BnpM93wpetSdQSWKqyIxLRHQKJaMKM9J9nYFCS5qVCtOixLbfIXFXn0Qpxb47fJ4s
 Xej45J/Qeehg==
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="376213734"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:39 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Mar 2021 15:56:52 -0700
Message-Id: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/16] Introduce Intel PXP
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

Lots of minor changes and fixes, but the main changes in v3 are:

- Using a protected object with a context not appropriately marked does
  no longer result in an execbuf failure. This is to avoid apps
  maliciously sharing protected/invalid objects to other apps and
  causing them to fail.
- All the termination work now goes through the same worker function,
  which allows i915 to drop the mutex lock entirely.

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
  drm/i915/pxp: set KCR reg init
  drm/i915/pxp: interface for marking contexts as using protected
    content
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  59 +++-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  18 ++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 ++++-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  34 +++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  12 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  13 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |  12 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  32 ++-
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   7 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  48 ++++
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 262 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  65 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 140 ++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 100 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |  32 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  37 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  23 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 172 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 182 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  43 +++
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 233 ++++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 +++
 include/uapi/drm/i915_drm.h                   |  96 +++++++
 45 files changed, 1931 insertions(+), 24 deletions(-)
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
