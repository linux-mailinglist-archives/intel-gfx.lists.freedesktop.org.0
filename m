Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A14DE4F7FA8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0969010EA69;
	Thu,  7 Apr 2022 12:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E74310EA64
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336350; x=1680872350;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fVflh9163ARtWVSbkYTnkp1tPSrgpN3ELr+z5BL6/Qc=;
 b=WAAS4zFhPl9QGX2ZgmtFhv6FL2fYmiPBEsNWxyfcQEQivSxssifoBn+L
 gcIEgOX62GNDgDeEoTb34H/Nxni4fWKCTK3lKQM5s4Lw+nyucZWDGP1Xd
 ZgaEiiiPggL57Mkgiaix/qH/mdVj/s7YHjD+sXOkbUL5pByf5tXHURc9H
 adrBoUFh2CVInlSMNluZ4q+Xfjk630pT7MMd2Chmlc9tN/Xw1m/3jcd27
 AAH5l6efwcWjTxfZWDasy9mRfSOJgaeVrTBgClBvPz5nMdaqiBPic3XRd
 geINH6rw80wG8R47tZGZkmsKtAwUozjcQM/mqmEGRo2ry0T6Fv5iIZU0v A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="241907401"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241907401"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571040707"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:04 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:19 +0300
Message-Id: <20220407125839.1479249-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/20] GSC support for XeHP SDV and DG2 platforms
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add GSC support for XeHP SDV and DG2 platforms.

The series includes changes for the mei driver:
- add ability to use polling instead of interrupts
- add ability to use extended timeouts
- setup extended operational memory for GSC

The series includes changes for the i915 driver:
- allocate extended operational memory for GSC
- GSC on XeHP SDV offsets and definitions
- GSC on DG2 offsets and definitions

The first six patches of the series are copied from the
already reviewed series [1] to provide series that
can be built in CI.
This series will be rebased and merged only after
series [1] merge.

Greg KH, please review and ACK the MEI patches.
We are pushing these patches through gfx tree as
the auxiliary device belongs there.

[1] https://patchwork.freedesktop.org/series/102160/

Alexander Usyskin (7):
  mei: gsc: setup char driver alive in spite of firmware handshake
    failure
  mei: gsc: retrieve the firmware version
  drm/i915/gsc: add slow_fw flag to the mei auxiliary device
  drm/i915/gsc: add slow_fw flag to the gsc device definition
  drm/i915/gsc: add GSC XeHP SDV platform definition
  mei: gsc: wait for reset thread on stop
  mei: extend timeouts on slow devices.

Daniele Ceraolo Spurio (1):
  HAX: drm/i915: force INTEL_MEI_GSC on for CI

Tomas Winkler (9):
  drm/i915/gsc: add gsc as a mei auxiliary device
  mei: add support for graphics system controller (gsc) devices
  mei: gsc: add runtime pm handlers
  mei: gsc: use polling instead of interrupts
  drm/i915/dg2: add gsc with special gsc bar offsets
  mei: mkhi: add memory ready command
  mei: gsc: setup gsc extended operational memory
  mei: debugfs: add pxp mode to devstate in debugfs
  drm/i915/gsc: allocate extended operational memory in LMEM

Vitaly Lubart (3):
  drm/i915/gsc: skip irq initialization if using polling
  mei: bus: export common mkhi definitions into a separate header
  mei: gsc: add transition to PXP mode in resume flow

 MAINTAINERS                              |   1 +
 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Kconfig.debug       |   1 +
 drivers/gpu/drm/i915/Makefile            |   3 +
 drivers/gpu/drm/i915/gt/intel_gsc.c      | 323 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gsc.h      |  40 +++
 drivers/gpu/drm/i915/gt/intel_gt.c       |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c   |  13 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   2 +
 drivers/gpu/drm/i915/i915_drv.h          |   8 +
 drivers/gpu/drm/i915/i915_pci.c          |   4 +-
 drivers/gpu/drm/i915/i915_reg.h          |   4 +
 drivers/gpu/drm/i915/intel_device_info.h |   2 +
 drivers/misc/mei/Kconfig                 |  14 +
 drivers/misc/mei/Makefile                |   3 +
 drivers/misc/mei/bus-fixup.c             | 128 ++++++---
 drivers/misc/mei/client.c                |  14 +-
 drivers/misc/mei/debugfs.c               |  17 ++
 drivers/misc/mei/gsc-me.c                | 316 ++++++++++++++++++++++
 drivers/misc/mei/hbm.c                   |  12 +-
 drivers/misc/mei/hw-me-regs.h            |   7 +
 drivers/misc/mei/hw-me.c                 | 145 ++++++++--
 drivers/misc/mei/hw-me.h                 |  16 +-
 drivers/misc/mei/hw-txe.c                |   2 +-
 drivers/misc/mei/hw.h                    |   5 +
 drivers/misc/mei/init.c                  |  21 +-
 drivers/misc/mei/main.c                  |   2 +-
 drivers/misc/mei/mei_dev.h               |  26 ++
 drivers/misc/mei/mkhi.h                  |  57 ++++
 drivers/misc/mei/pci-me.c                |   2 +-
 include/linux/mei_aux.h                  |  21 ++
 33 files changed, 1146 insertions(+), 73 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.h
 create mode 100644 drivers/misc/mei/gsc-me.c
 create mode 100644 drivers/misc/mei/mkhi.h
 create mode 100644 include/linux/mei_aux.h

-- 
2.32.0

