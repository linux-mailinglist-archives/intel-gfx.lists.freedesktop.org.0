Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC27E3D9B6D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 04:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECEED6EB7C;
	Thu, 29 Jul 2021 02:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A746E509;
 Thu, 29 Jul 2021 02:02:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="298370385"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="298370385"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 19:02:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="417467952"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 19:02:22 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 19:00:51 -0700
Message-Id: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 00/15] drm/i915: Introduce Intel PXP
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
 Gaurav Kumar <kumar.gaurav@intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PXP (Protected Xe Path) is an i915 component, available on
GEN12+, that helps to establish the hardware protected session
and manage the status of the alive software session, as well
as its life cycle.

Very minimal changes from v5:

- Update mei_pxp match code to look the same as mei_hdcp (no
  functional/logical changes) and drop a couple of debug prints.

- Rebase on top of object create_ext changes (removal of vanilla_object).

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

Daniele Ceraolo Spurio (7):
  drm/i915/pxp: Define PXP component interface
  drm/i915/pxp: define PXP device flag and kconfig
  drm/i915/pxp: allocate a vcs context for pxp usage
  drm/i915/pxp: set KCR reg init
  drm/i915/pxp: interfaces for using protected objects
  drm/i915/pxp: start the arb session on demand
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
 .../gpu/drm/i915/display/intel_atomic_plane.c |  25 ++
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 .../drm/i915/display/skl_universal_plane.c    |  49 +++-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  68 ++++-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  18 ++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  75 +++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  42 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  12 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   9 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |   2 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   7 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  15 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  48 ++++
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 268 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  67 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 141 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 100 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |  32 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  40 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  23 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 172 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  15 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 170 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
 .../drm/i915/pxp/intel_pxp_tee_interface.h    |  37 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  55 ++++
 drivers/misc/mei/Kconfig                      |   2 +
 drivers/misc/mei/Makefile                     |   1 +
 drivers/misc/mei/pxp/Kconfig                  |  13 +
 drivers/misc/mei/pxp/Makefile                 |   7 +
 drivers/misc/mei/pxp/mei_pxp.c                | 229 +++++++++++++++
 drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
 include/drm/i915_component.h                  |   1 +
 include/drm/i915_pxp_tee_interface.h          |  45 +++
 include/uapi/drm/i915_drm.h                   |  58 +++-
 48 files changed, 1940 insertions(+), 33 deletions(-)
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
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
 create mode 100644 drivers/misc/mei/pxp/Kconfig
 create mode 100644 drivers/misc/mei/pxp/Makefile
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
 create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
 create mode 100644 include/drm/i915_pxp_tee_interface.h

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
