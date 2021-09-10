Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C8406E55
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 17:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99896EA1F;
	Fri, 10 Sep 2021 15:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970E96EA1B;
 Fri, 10 Sep 2021 15:39:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="284807741"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="284807741"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 08:39:05 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="649412247"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 08:39:05 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Gaurav Kumar <kumar.gaurav@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Juston Li <juston.li@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Daniel Vetter <daniel.vetter@intel.com>
Date: Fri, 10 Sep 2021 08:36:10 -0700
Message-Id: <20210910153627.1060858-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 00/17] drm/i915: Introduce Intel PXP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PXP (Protected Xe Path) is an i915 component, available on
GEN12i and newer platforms, that helps to establish the hardware
protected session and manage the status of the alive software session,
as well as its life cycle.

changes from v8:
- comments/docs improvements
- remove rpm put race (pxp_inval vs context_close)
- don't call pxp_invalidate on rpm suspend because it's redundant

Tested with: https://patchwork.freedesktop.org/series/87570/

Cc: Gaurav Kumar <kumar.gaurav@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Juston Li <juston.li@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel.vetter@intel.com>

Anshuman Gupta (2):
  drm/i915/pxp: Add plane decryption support
  drm/i915/pxp: black pixels on pxp disabled

Daniele Ceraolo Spurio (9):
  drm/i915/pxp: Define PXP component interface
  drm/i915/pxp: define PXP device flag and kconfig
  drm/i915/pxp: allocate a vcs context for pxp usage
  drm/i915/pxp: set KCR reg init
  drm/i915/pxp: interfaces for using protected objects
  drm/i915/pxp: start the arb session on demand
  drm/i915/pxp: add pxp debugfs
  drm/i915/pxp: add PXP documentation
  drm/i915/pxp: enable PXP for integrated Gen12

Huang, Sean Z (5):
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Implement arb session teardown
  drm/i915/pxp: Implement PXP irq handler
  drm/i915/pxp: Enable PXP power management

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 Documentation/gpu/i915.rst                    |   8 +
 drivers/gpu/drm/i915/Kconfig                  |  11 +
 drivers/gpu/drm/i915/Makefile                 |  10 +
 drivers/gpu/drm/i915/display/intel_display.c  |  34 +++
 .../drm/i915/display/intel_display_types.h    |   6 +
 .../drm/i915/display/skl_universal_plane.c    |  49 ++-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 100 +++++-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   6 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  28 ++
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  72 +++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  18 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   8 +
 .../gpu/drm/i915/gem/selftests/mock_context.c |   4 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c          |   2 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |   2 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   7 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  15 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  48 +++
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 288 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  67 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 141 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  78 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |  21 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 100 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |  32 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  46 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  23 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 175 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 172 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
 .../drm/i915/pxp/intel_pxp_tee_interface.h    |  37 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  83 +++++
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 229 ++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  42 +++
 include/uapi/drm/i915_drm.h                   |  99 +++++-
 52 files changed, 2153 insertions(+), 42 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
 create mode 100644 drivers/misc/mei/pxp/Kconfig
 create mode 100644 drivers/misc/mei/pxp/Makefile
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
 create mode 100644 include/drm/i915_pxp_tee_interface.h

-- 
2.25.1

