Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A304A58B58C
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 14:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEC8194813;
	Sat,  6 Aug 2022 12:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B532BC1739
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Aug 2022 12:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659788833; x=1691324833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kggDSyps8TO2AFz5L6p7Om5TDm4C37TCEL5uj7zwCpE=;
 b=Ys7xJe1VM9g1p4FkoJynyXsacnPsRlhK5Gj+Cw493LHQEihBW6GKI5qh
 7ENZCePb2mI3W43B34aesVIE4x2MnOSwqdIr1ikD62IYa1TqLNCdcbcqs
 AAqVlGuG//u29e8h4viXeBwWp530UXl4ZJvrxLI1E7HfpyWbqmwGJaekU
 cudXsSriGwHbRB4wPWFCpDqvr5NKIFK03MeOm7dkx66zHvG/Kp/QflL1J
 XKSHOp+CQiGh0S82xU3cjeEFfLuOWojdd803SpmiA8UBNkj0oHMYdeKRB
 sV+7w/bjiQezUj9bD1TxdcTdkpfhMRUGAMnhM4CZ5tdEoFFI/LF7+b/MN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376658374"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="376658374"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="632329018"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:09 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sat,  6 Aug 2022 15:26:21 +0300
Message-Id: <20220806122636.43068-1-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 00/15] GSC support for XeHP SDV and DG2
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
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

This patch set should be merged via gfx tree as
the auxiliary device belongs there.
Greg, your ACK is required for the drives/misc/mei code base,
please review the patches.


V2: rebase over merged DG1 series and DG2 enablement patch,
    fix commit messages

V3: rebase over latest tip

V4: add missed changelog in pxp dbugfs patch

V5: rebase over latest tip
    fix changelog in pxp dbugfs patch
    put HAX patch last to the ease of merging
    reorder patches in the series

V6: change prefix from 'drm/i915/gsc:' to 'mei' in patch:
        mei: add slow_fw flag to the mei auxiliary device
    Address following checkpatch warnings:
        CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
        FILE: drivers/misc/mei/mkhi.h:54:
        +	uint32_t flags; 
        
        -:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
        #51: FILE: drivers/misc/mei/bus-fixup.c:257:
        +	if (!cldev->bus->fw_f_fw_ver_supported &&
        +	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT)
    
    Remove some spurious code formatting changes in:
    drm/i915/gsc: allocate extended operational memory in LMEM

V7: Add new patch to add kdoc for mei_aux_device structure.
    Rename slow_fw to slow_firmware flag.
    Use drm_dbg/err() functions instead of dev_dbg/err() in i195
    codebase.


Alexander Usyskin (4):
  drm/i915/gsc: add slow_firmware flag to the gsc device definition
  drm/i915/gsc: add GSC XeHP SDV platform definition
  mei: gsc: wait for reset thread on stop
  mei: extend timeouts on slow devices.

Daniele Ceraolo Spurio (1):
  HAX: drm/i915: force INTEL_MEI_GSC on for CI

Tomas Winkler (7):
  mei: add kdoc for struct mei_aux_device
  mei: add slow_firmware flag to the mei auxiliary device
  mei: gsc: use polling instead of interrupts
  mei: mkhi: add memory ready command
  mei: gsc: setup gsc extended operational memory
  mei: debugfs: add pxp mode to devstate in debugfs
  drm/i915/gsc: allocate extended operational memory in LMEM

Vitaly Lubart (3):
  drm/i915/gsc: skip irq initialization if using polling
  mei: bus: export common mkhi definitions into a separate header
  mei: gsc: add transition to PXP mode in resume flow

 drivers/gpu/drm/i915/Kconfig.debug  |   1 +
 drivers/gpu/drm/i915/gt/intel_gsc.c | 118 +++++++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gsc.h |   3 +
 drivers/misc/mei/bus-fixup.c        | 104 ++++++++++++++++--------
 drivers/misc/mei/client.c           |  14 ++--
 drivers/misc/mei/debugfs.c          |  17 ++++
 drivers/misc/mei/gsc-me.c           |  77 +++++++++++++++---
 drivers/misc/mei/hbm.c              |  12 +--
 drivers/misc/mei/hw-me-regs.h       |   7 ++
 drivers/misc/mei/hw-me.c            | 116 ++++++++++++++++++++++-----
 drivers/misc/mei/hw-me.h            |  14 +++-
 drivers/misc/mei/hw-txe.c           |   2 +-
 drivers/misc/mei/hw.h               |   5 ++
 drivers/misc/mei/init.c             |  21 ++++-
 drivers/misc/mei/main.c             |   2 +-
 drivers/misc/mei/mei_dev.h          |  26 ++++++
 drivers/misc/mei/mkhi.h             |  57 ++++++++++++++
 drivers/misc/mei/pci-me.c           |   2 +-
 include/linux/mei_aux.h             |  12 +++
 19 files changed, 519 insertions(+), 91 deletions(-)
 create mode 100644 drivers/misc/mei/mkhi.h

-- 
2.37.1

