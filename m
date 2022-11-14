Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F06A56275CA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062B310E25F;
	Mon, 14 Nov 2022 06:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CD910E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668406291; x=1699942291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=36jcfHAqekVQFbhx5EYlwynRKB2rMEk1L5AfCioD6fM=;
 b=O2RogLFJad0ORoUmFHiPRd4pnyIlmAhk32MY+t4H2br0BeflWikxCqDa
 YPL0l3qKtoVPH5K5QmKhHkTsB5eYSqOiaELOQtsf57b/q5w3AqcSoKe+N
 qTz7DFSpnLRALBu5wDE7mGFBkluItB2HmcCZgz64uvqIs4GlTUJCuymIF
 4gFNzElk3jDLJ2Ybd1/a6mIGFBfOz4w7Rxk7lmTcTcoZ20aXW/dofnISq
 cTY2QCTNOhnrnXtObBEfjuXa4AwRyfQvnB62kREw9Vo0c7vdfF2dtqvNL
 Uo5xNF4XWgnVbuOxgeX/QNyIYV8u2tAy5eRJ/sdGJSIHk3hvaTf4azmcq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="374021065"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="374021065"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:11:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="632678874"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="632678874"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2022 22:11:21 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 11:40:16 +0530
Message-Id: <20221114061019.1444353-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/3] Enable Pipewriteback
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A patch series was floated in the drm mailing list which aimed to change
the drm_connector and drm_encoder fields to pointer in the
drm_connector_writeback structure, this received a huge pushback from
the community but since i915 expects each connector present in the
drm_device list to be a intel_connector but drm_writeback framework
makes us have a connector which cannot be embedded in an intel_connector
structure.
[1]
https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
[2]
https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
Since no one had an issue with encoder field being changed into a
pointer it was decided to break the connector and encoder pointer
changes into two different series.The encoder field changes is
currently being worked upon by Abhinav Kumar and the changes have been
merged.
[3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
Going forward we use a drm_connector which is not embedded in
intel_connector. 
We also create a intel_encoder to avoid changes to many
iterators but no intel_connector. We also changed all iterators that
Writeback feature will be enabled for tgl and above.

---v2
solving BAT issues

---v3
-remove unnecessary comments from i915_reg.h [Arun]
-move wd_init into its own if condition [Arun]
-fix comment styling and alignment in intel_wd.c [Arun]
-remove continue from loop and calling function if condition is met
[Arun]
-remove useless arguments from intel_queue_writeback_job and 
intel_enabling_capture [Arun]

--v4
Added Reviewed-by to patches which were previously reviewd

--v5
Added Reviewed-by for patch 3

--v6
-Solve BAT issue

--v7
-Make wd->wb leaving the register WD untouched[Jani]
-move writeback registers to a seprate file rather than
keeping it in i914_reg [Jani]
-fix the atomic flip done issue when crtc is being detached
from writeback connector [Swati]
-fix atomic check failing when no writeback job is created


Suraj Kandpal (3):
  drm/i915: Define WD trancoder for i915
  drm/i915: Change intel_connector iterators
  drm/i915: Enable WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  75 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  14 +-
 .../drm/i915/display/intel_display_debugfs.c  |  13 +-
 .../drm/i915/display/intel_display_types.h    |  31 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    | 103 ++-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 drivers/gpu/drm/i915/display/intel_wb.c       | 714 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wb.h       |  49 ++
 .../drm/i915/display/intel_writeback_reg.h    | 128 ++++
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 20 files changed, 1151 insertions(+), 50 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h

-- 
2.25.1

