Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3AC2F99B4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 07:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C5D89F41;
	Mon, 18 Jan 2021 06:07:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D64489F41
 for <Intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 06:07:32 +0000 (UTC)
IronPort-SDR: rDsqIwWW3eBf8wjB/tyMrCPx8HhsK8zrnVAWB1W9Z3hHcc7B1cUyU55684YATqFoKypMhaGs04
 rxPRSIDHlFsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197455391"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="197455391"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 22:07:32 -0800
IronPort-SDR: ZlFjk4Bt2qYqb1NDXuJ+JXHft9ZE1ahlo55iPUZbIdkDuJOc8gQ4FTHa3eWt4FQ2HKcyyz/vub
 Bqdc5hltvAwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="399016960"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2021 22:07:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 17 Jan 2021 22:07:17 -0800
Message-Id: <20210118060730.15425-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC-v21 00/13] Introduce Intel PXP component - Mesa
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
Cc: kumar.gaurav@intel.com
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


rev21:
        #01 
        - Remove the term "Mesa" from the help description of Kconfig
        - Remove unnecessary "select INTEL_MEI_TXE" from DRM_I915_PXP
          in Kconfig

        #02
        - Remove "#define KCR_INIT_MASK_SHIFT (16)", but still keep the
          macro in this .c file
        - Write KCR_INIT reg inly for gen12 during boot, not required
          for gen13+

        #03
        - Remove debug print_hex_dump() from intel_pxp_tee_io_message()
        - In struct i915_pxp_component_ops, change "receive" to "recv"

        #04:
        - Rename SESSION_TYPE_TYPE0, SESSION_TYPE_TYPE1 as
          SESSION_TYPE_HWDRM,
          SESSION_TYPE_NONHWDRM to have better meaning.
        - Remove enum pxp_session_types and enum pxp_protection_modes
          from
          single session patch series.

        #05
        In intel_pxp_cmd.c:
        - Remove the debug print as well as print_hex_dump()
        - Should call i915_gem_object_flush_map() before unpin map
        - Using "goto label" instead of bool such as is_engine_pm_get
        - We should always return the error if any, instead of skip
          with i915_request_set_error_once()

        #06
        - Fix bug, access i915 pointer before assigning the value at
          intel_pxp_irq_handler()
        - Writing register GEN11_CRYPTO_RSVD_INTR_ENABLE to enable the
          PXP irq
        - Remove the unnecessary comment for GEN11_CRYPTO_RSVD_INTR_MASK

        #07
        - Bug fixing, we need to set the PXP_GLOBAL_TERMINATE 0x320f8
          register after arb session termination
        - Remove enum pxp_session_types and enum pxp_protection_modes
          from
          single session patch series.

        #11
        - Fix "Fi.CI.CHECKPATCH" warnings

        #12
        - Only allow set I915_CONTEXT_PARAM_PROTECTED_CONTENT during
          context
          creation (i915_gem_context_create_ioctl), but not allow during
          context set param (i915_gem_context_setparam_ioctl)


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

 drivers/gpu/drm/i915/Kconfig                  |  21 ++
 drivers/gpu/drm/i915/Makefile                 |   9 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  15 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   7 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 185 ++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  64 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  17 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 223 +++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  19 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 202 +++++++++++++++
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
 include/uapi/drm/i915_drm.h                   |  66 +++++
 37 files changed, 1671 insertions(+), 10 deletions(-)
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
