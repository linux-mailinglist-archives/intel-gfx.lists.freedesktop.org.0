Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADEA2CB136
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145E46E9B7;
	Tue,  1 Dec 2020 23:58:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFB56E97B
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:58:23 +0000 (UTC)
IronPort-SDR: LQf0020frPJ+XJnuUN6vE/rN9Cw2gzpDWYyIhXyKlIKALgjWdWfPZPfd2Zl8xhla6veOOrrB3h
 5/ZWz73a46OA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="191136796"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="191136796"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:58:21 -0800
IronPort-SDR: YJLprzV/oJH5wvKjSGR37PJX8FWp83uxChhs1dhY8J6x0/y6nGaf3Jsk2areTX1oteJzV7TWrd
 31OyDjC9YZXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="315897574"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2020 15:58:21 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:57:21 -0800
Message-Id: <20201201235747.26017-1-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC-v3 00/26] Introduce Intel PXP component
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

PXP is an i915 componment, that helps user space to establish the
hardware protected session and manage the status of each alive
software session, as well as the life cycle of each session.

This ioctl is to allow user space driver to create, set, and
destroy each session. It also provides the communication chanel to
TEE (Trusted Execution Environment) for the protected hardware
session creation.

Anshuman Gupta (1):
  drm/i915/pxp: Add plane decryption support

Bommu Krishnaiah (2):
  drm/i915/uapi: introduce drm_i915_gem_create_ext
  drm/i915/pxp: User interface for Protected buffer

Huang, Sean Z (22):
  drm/i915/pxp: Introduce Intel PXP component
  drm/i915/pxp: Enable PXP irq worker and callback stub
  drm/i915/pxp: Add PXP context for logical hardware states.
  drm/i915/pxp: set KCR reg init during the boot time
  drm/i915/pxp: Implement ioctl action to set the user space context
  drm/i915/pxp: Add PXP-related registers into allowlist
  drm/i915/pxp: Read register to check hardware session state
  drm/i915/pxp: Implement funcs to get/set PXP tag
  drm/i915/pxp: Implement ioctl action to reserve session slot
  drm/i915/pxp: Implement ioctl action to set session in play
  drm/i915/pxp: Func to send hardware session termination
  drm/i915/pxp: Implement ioctl action to terminate the session
  drm/i915/pxp: Enable ioctl action to query PXP tag
  drm/i915/pxp: Destroy all type0 sessions upon teardown
  drm/i915/pxp: Termiante the session upon app crash
  drm/i915/pxp: Enable PXP power management
  drm/i915/pxp: Implement funcs to create the TEE channel
  drm/i915/pxp: Implement ioctl action to send TEE commands
  drm/i915/pxp: Create the arbitrary session after boot
  drm/i915/pxp: Add i915 trace logs for PXP operations
  drm/i915/pxp: Expose session state for display protection flip
  drm/i915/pxp: Enable the PXP ioctl for protected session

Vitaly Lubart (1):
  mei: pxp: export pavp client to me client bus

 drivers/gpu/drm/i915/Kconfig                  |   19 +
 drivers/gpu/drm/i915/Makefile                 |    8 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |   21 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   15 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   10 +
 .../gpu/drm/i915/gem/i915_gem_context_types.h |    2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |    5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |    4 +
 drivers/gpu/drm/i915/i915_drv.c               |   18 +-
 drivers/gpu/drm/i915/i915_drv.h               |   10 +
 drivers/gpu/drm/i915/i915_gem.c               |   63 +-
 drivers/gpu/drm/i915/i915_reg.h               |    8 +
 drivers/gpu/drm/i915/i915_trace.h             |   44 +
 drivers/gpu/drm/i915/intel_uncore.c           |   50 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  336 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  117 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |   69 +
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |   47 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |   72 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |   31 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c       | 1180 +++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h       |  126 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  216 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   25 +
 drivers/misc/mei/Kconfig                      |    2 +
 drivers/misc/mei/Makefile                     |    1 +
 drivers/misc/mei/pxp/Kconfig                  |   13 +
 drivers/misc/mei/pxp/Makefile                 |    7 +
 drivers/misc/mei/pxp/mei_pxp.c                |  230 ++++
 drivers/misc/mei/pxp/mei_pxp.h                |   18 +
 include/drm/i915_component.h                  |    1 +
 include/drm/i915_pxp_tee_interface.h          |   45 +
 include/uapi/drm/i915_drm.h                   |  141 ++
 33 files changed, 2928 insertions(+), 26 deletions(-)
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
