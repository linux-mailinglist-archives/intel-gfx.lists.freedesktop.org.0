Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D764235D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F49510E0F4;
	Mon,  5 Dec 2022 07:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F4410E0F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224006; x=1701760006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DRXFH04ZCT0Ez59UcPspphTyFnoKKOLUAnjp/FaMu6o=;
 b=ZPeZjnPoEWyzG/h7GUUYnpB08ipKSE8dJ1muCVgjDoP53Phnr1sejvrR
 Ow8LfnHORim9NtOY2liwZCdjBKWlSa047orKCj6Wzjm7Fg87ZTeNAEXeh
 A6+ZQlq9gjMWjbk2hejLA6EQ4XjMFtStxc21jgpqzYF242cthITSbhciN
 AphdDFkY3i1mV+NNNtj5AKSLzeqqHXQ9J/B5PJXe5AK99RwxXB4CT7x8I
 JxAd88cqS9SuGKuR0t/bzBOTUqd18HMUJevrsWd4UrdoF03pmMK9VAmx5
 HrWX4EUoZYMdRn8rXzq8PyAo4HtgTbU/w2Hv+4LFe27wG0CNhE35Nfsmq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423628"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423628"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:06:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489162"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489162"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:06:44 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:34 +0530
Message-Id: <20221205070543.2510309-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] Enable HDCP2 via GSC CS command submission
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

Starting from MTL HDCP will be enabled via the GSC CS route
rather than going through the usual MEI route as it did before
From now on GSC will be the mei client and all HDCP has to do is 
add on a gsc header along with its normal payload and send messages to
GSC CS who will take care of the rest and loop depending on the reply
received

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Anshuman Gupta (3):
  drm/i915/hdcp: Keep cp fw agonstic naming convention
  drm/i915/hdcp: HDCP2.x Refactoring to agnotic cp f/w
  drm/i915/hdcp: Refactor HDCP API structures

Daniele Ceraolo Spurio (5):
  drm/i915/uc: Introduce GSC FW
  drm/i915/gsc: Skip the version check when fetching the GSC FW
  drm/i915/gsc: GSC firmware loading
  drm/i915/gsc: Do a driver-FLR on unload if GSC was loaded
  drm/i915/mtl: MTL has one GSC CS on the media GT

Jonathan Cavitt (1):
  drm/i915/gsc: Disable GSC engine and power well if FW is not selected

Suraj Kandpal (4):
  drm/i915/gsc: Create GSC request submission mechanism
  drm/i915/hdcp: Fill wired_cmd_in structures at a single place
  drm/i915/mtl: Adding function to send command to GSC CS
  drm/i915/mtl: Add HDCP GSC interface

 drivers/gpu/drm/i915/Makefile                 |   5 +-
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  94 ++-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 708 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  27 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  14 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  18 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   9 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  11 +
 drivers/gpu/drm/i915/gt/intel_gt.h            |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     | 251 ++++++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |  18 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h   |  43 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     | 103 +++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h     |  43 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  32 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  77 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   8 +-
 drivers/gpu/drm/i915/i915_params.c            |   3 +
 drivers/gpu/drm/i915/i915_params.h            |   1 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   3 +
 drivers/gpu/drm/i915/intel_uncore.c           |  48 ++
 drivers/gpu/drm/i915/intel_uncore.h           |  13 +
 drivers/misc/mei/hdcp/mei_hdcp.c              | 190 +----
 drivers/misc/mei/hdcp/mei_hdcp.h              | 355 +--------
 include/drm/i915_cp_fw_hdcp_interface.h       | 738 ++++++++++++++++++
 include/drm/i915_mei_hdcp_interface.h         | 184 -----
 31 files changed, 2257 insertions(+), 758 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
 create mode 100644 include/drm/i915_cp_fw_hdcp_interface.h
 delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
2.25.1

