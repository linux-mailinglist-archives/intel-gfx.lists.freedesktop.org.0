Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E76545888
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E847612B02B;
	Thu,  9 Jun 2022 23:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EEE12B02B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816854; x=1686352854;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A+ydr/v5dpb1BLTYVzPsO/W+NK3t8PX6sErtIYkpjkk=;
 b=Tp3Re1HzUhrO1/mz5X1aQ9N7syQgPBUB8xVV3rrZurJ4mtFGH3bNpfT5
 I/TC5BR4N8EAn48L3BI6+mN011avwZs9jJlcqgYBR3/pqyrD+rfY9Vz+0
 BtWHERt2sXO6mZ0+GD2KaENoa2iEQFbU9q8OZ1zccrerufZ+7DfPoVcM1
 hz8y+1f+GmS78rHa4JY3VvZuX6vlqJ4YXDjIfiISklvE/9bQ4nPExnprD
 6rVrLZD2wT6I5C7Tgt6fs/j46V3cDe5nhSnu/P0TMj9MLS/4KocdubJXV
 uMLCKsWcS58+e2D9pTFHOUOfq9FkL4Qr7BloEBdHnqpEY+YE4HS4j4BE0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="260574393"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="260574393"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:20:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586331"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:20:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:40 -0700
Message-Id: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On DG2, HuC loading is performed by the GSC, via a PXP command. The load
operation itself is relatively simple (just send a message to the GSC
with the physical address of the HuC in LMEM), but there are timing
changes that requires special attention. In particular, to send a PXP
command we need to first export the GSC driver and then wait for the
mei-gsc and mei-pxp modules to start, which means that HuC load will
complete after i915 load is complete. This means that there is a small
window of time after i915 is registered and before HuC is loaded
during which userspace could submit and/or checking the HuC load status,
although this is quite unlikely to happen (HuC is usually loaded before
kernel init/resume completes).
We've consulted with the media team in regards to how to handle this and
they've asked us to do the following:

1) Report HuC as loaded in the getparam IOCTL even if load is still in
progress. The media driver uses the IOCTL as a way to check if HuC is
enabled and then includes a secondary check in the batches to get the
actual status, so doing it this way allows userspace to keep working
without changes.

2) Stall all userspace VCS submission until HuC is loaded. Stalls are
expected to be very rare (if any), due to the fact that HuC is usually
loaded before kernel init/resume is completed.

Timeouts are in place to ensure all submissions are unlocked in case
something goes wrong. Since we need to monitor the status of the mei
driver to know what's happening and when to time out, a notifier has
been added so we get a callback when the status of the mei driver
changes.

Note that this series depends on the GSC support for DG2 [1], which has
been included squashed in a single patch.

[1]: https://patchwork.freedesktop.org/series/102339/

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>

Daniele Ceraolo Spurio (8):
  HAX: mei: GSC support for XeHP SDV and DG2 platform
  drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
  drm/i915/dg2: setup HuC loading via GSC
  drm/i915/huc: track delayed HuC load with a fence
  drm/i915/huc: stall media submission until HuC is loaded
  drm/i915/huc: report HuC as loaded even if load still in progress
  drm/i915/huc: define gsc-compatible HuC fw for DG2
  HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI

Tomas Winkler (4):
  mei: add support to GSC extended header
  mei: bus: enable sending gsc commands
  mei: pxp: support matching with a gfx discrete card
  drm/i915/pxp: add huc authentication and loading command

Vitaly Lubart (3):
  mei: bus: extend bus API to support command streamer API
  mei: pxp: add command streamer API to the PXP driver
  drm/i915/pxp: implement function for sending tee stream command

 drivers/gpu/drm/i915/Kconfig.debug            |   2 +
 drivers/gpu/drm/i915/Makefile                 |  11 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c           | 141 +++++++++-
 drivers/gpu/drm/i915/gt/intel_gsc.h           |   3 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 244 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  27 ++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  34 +++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  64 +++--
 drivers/gpu/drm/i915/i915_request.c           |  24 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  32 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  32 ---
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  69 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      |  15 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |   8 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   8 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  11 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 138 +++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   5 +
 .../drm/i915/pxp/intel_pxp_tee_interface.h    |  21 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
 drivers/misc/mei/bus-fixup.c                  | 105 +++++---
 drivers/misc/mei/bus.c                        | 145 ++++++++++-
 drivers/misc/mei/client.c                     |  69 +++--
 drivers/misc/mei/debugfs.c                    |  17 ++
 drivers/misc/mei/gsc-me.c                     |  77 +++++-
 drivers/misc/mei/hbm.c                        |  25 +-
 drivers/misc/mei/hw-me-regs.h                 |   7 +
 drivers/misc/mei/hw-me.c                      | 123 +++++++--
 drivers/misc/mei/hw-me.h                      |  14 +-
 drivers/misc/mei/hw-txe.c                     |   2 +-
 drivers/misc/mei/hw.h                         |  62 +++++
 drivers/misc/mei/init.c                       |  21 +-
 drivers/misc/mei/interrupt.c                  |  47 +++-
 drivers/misc/mei/main.c                       |   2 +-
 drivers/misc/mei/mei_dev.h                    |  33 +++
 drivers/misc/mei/mkhi.h                       |  57 ++++
 drivers/misc/mei/pci-me.c                     |   2 +-
 drivers/misc/mei/pxp/mei_pxp.c                |  40 ++-
 include/drm/i915_pxp_tee_interface.h          |   5 +
 include/linux/mei_aux.h                       |   2 +
 include/linux/mei_cl_bus.h                    |   6 +
 42 files changed, 1537 insertions(+), 220 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
 create mode 100644 drivers/misc/mei/mkhi.h

-- 
2.25.1

