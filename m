Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750805BCC8D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67DBE10E635;
	Mon, 19 Sep 2022 13:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99C410E633
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 13:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663592790; x=1695128790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7RMaTlYa6KjhOxsOKZCRr2o3E73qUj8x9ks0A0xmwGg=;
 b=HFUZHWLYOk4Dfn3jxGmcb8EaA0hYAJcZVdkLjME5BA9dCjpy8sIcgZ+b
 xnUurpOS5FnpCvYOwpieboY0QqZxUDRCWtRGqXM34ZGnrd+PHihU32NZ8
 s/TbLelm91dUwbzhQwz0g8ipIlA2nvRA1AuFNI1ZCzoTaaisqTmktnNrg
 gW+REuMnPBhR3Z8RBpuI25D0QumIVR4zwTLatkm3BkZ7oixkoVCL5K6ar
 tcjk05yJ9XQlmPe5A8FFN5yVowaOF5CTIBJ3Nh5e2sMkStp9jpVJYne6Z
 L3RG/gy3fL3TB73S1EVrr/l06zfJRUAXgsbSMF5wHhzqgllZZmIkHOlY9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300212215"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="300212215"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 06:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="863553205"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 19 Sep 2022 06:06:06 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 18:35:02 +0530
Message-Id: <20220919130505.1984383-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/3] Enable Pipewriteback
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

---v2
solving BAT issues

---v3
-removing unecessary comments from i915_reg.h [Arun]
-moving wd_init into its own if condition [Arun]
-fixing comment styling and alignment in intel_wd.c [Arun]
-removing continue from loop and calling function if condition is met
[Arun]
-removing useless arguments from intel_queue_writeback_job and 
intel_enabling_capture [Arun]

--v4
Adding Reviewed-by to patches which were previously reviewd

--v5
Adding Reviewed-by for patch 3

--v6
Solving BAT issue
changes for checkpatch to pass

Suraj Kandpal (3):
  drm/i915: Define WD trancoder for i915
  drm/i915 : Changing intel_connector iterators
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  68 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
 .../drm/i915/display/intel_display_debugfs.c  |  13 +-
 .../drm/i915/display/intel_display_types.h    |  32 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    | 119 ++-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 694 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  48 ++
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 137 ++++
 19 files changed, 1137 insertions(+), 56 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.25.1

