Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2487350DA65
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 09:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE3610E056;
	Mon, 25 Apr 2022 07:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC13910E0A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 07:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650872956; x=1682408956;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u/0y+kT6n9vRZXbAePDZZlJPYaTLFDcrNVexDRBHbmc=;
 b=UBt0FmCTGbkAW/BcD0zcp551doyvbLl8e2pe1iwPO7g4ufxjh94D3n1n
 g8OAieC4DOitQlHj0RBZr6dOdOnV0vGK0/zGoRONrvRrpgfMiYEJYVdsw
 CVpfLGD8s4u90sNENw+kSWOZT+UvRiGGPzdQYniwGOXdfxq/USjlx8C7t
 95NPNXhQ8j/ZjYDmlOP2+XGFM+Ag06VbXti2zPyFwpBwc3yUq6kI1tOoP
 2h29lV4OcvPhj9CBbZBge2CVrzK3OxMeq+H3PVmajuWcdFlKpDzLgoOgT
 MjQgvr335qtmi4V5WyF97hEvzKkIzHrK6hfGimdgQZGZ8Jb5MXjvZWsXQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="245101267"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="245101267"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 00:49:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557599860"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 00:49:09 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Mon, 25 Apr 2022 10:48:47 +0300
Message-Id: <20220425074901.3991274-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/14] GSC support for XeHP SDV and DG2
 platforms
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

Greg KH, please review and ACK the MEI patches.
We are pushing these patches through gfx tree as
the auxiliary device belongs there.

V2: rebase over merged DG1 series and DG2 enablement patch,
    fix commit messages

Alexander Usyskin (5):
  drm/i915/gsc: add slow_fw flag to the mei auxiliary device
  drm/i915/gsc: add slow_fw flag to the gsc device definition
  drm/i915/gsc: add GSC XeHP SDV platform definition
  mei: gsc: wait for reset thread on stop
  mei: extend timeouts on slow devices.

Daniele Ceraolo Spurio (1):
  HAX: drm/i915: force INTEL_MEI_GSC on for CI

Tomas Winkler (5):
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
 drivers/gpu/drm/i915/gt/intel_gsc.c | 119 +++++++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gsc.h |   3 +
 drivers/misc/mei/bus-fixup.c        | 105 ++++++++++++++++--------
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
 drivers/misc/mei/mkhi.h             |  57 +++++++++++++
 drivers/misc/mei/pci-me.c           |   2 +-
 include/linux/mei_aux.h             |   2 +
 19 files changed, 511 insertions(+), 91 deletions(-)
 create mode 100644 drivers/misc/mei/mkhi.h

-- 
2.32.0

