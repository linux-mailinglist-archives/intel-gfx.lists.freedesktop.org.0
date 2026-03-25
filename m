Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id o9AlD7Brw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032D31FC16
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4989210E756;
	Wed, 25 Mar 2026 04:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDRDg4py";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F7710E1DC;
 Wed, 25 Mar 2026 04:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414764; x=1805950764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w4ikA4gz24esV4VFMJ0RiamorCOON1PH89wmlWzJIvQ=;
 b=IDRDg4pyQ80Y7AJE8xIhL6+DhRwnwqyiievQLxlC1vC4VC1hURyjdKGM
 WQYlCg6LK7uKadwOYbsNKMiVf/PjSMoBtm0bpU+zCGmcxrQknGGiP1z5z
 P5fz8hLYbmO9f0apTRSiRakLr2fL/tkBIeoyQJWKVtGwmVLb7dWb5KQuK
 vjeHjfkLFs3N/p7COkt/7dvifkCRKQhzzQmA7qnfuAdxO9/9phRC7xOIK
 pZvvKwW7iwNJvTOMhXQDthMAl/JPk93gKMMPyjzVXTvlCewqCwqFa5VOL
 MQER+6MFoK7+RzbrFdHciFfWhjg4bPG5MrotlDVCclZkAlQns3lzLdC+5 w==;
X-CSE-ConnectionGUID: PD8oZAqlRuu4pVEonEey7w==
X-CSE-MsgGUID: 2Mi60iqUQMSYaI8snW+Vyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922190"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922190"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:23 -0700
X-CSE-ConnectionGUID: IOMqtZX7RX2cvN3qOC0pRg==
X-CSE-MsgGUID: yXY/kRDESKuTFg9/jFfe6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580475"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 00/26] Enable Pipe writeback  
Date: Wed, 25 Mar 2026 10:28:50 +0530
Message-Id: <20260325045916.984243-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	SUBJECT_ENDS_SPACES(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9032D31FC16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series aims to enable pipe writeback functionality on
ADLP where it has been tested. The plan is to slowly accomodate
all supported hardware after this functionality is tested on them.
This series currently sits on top of two series still under review
in drm core. They are squashed as the first two patches of this series.
This series enables the triggered captured mode where we need to
trigger a capture.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Dmitry Baryshkov (1):
  drm: writeback: rename drm_writeback_connector_init_with_encoder()

Suraj Kandpal (25):
  drm: writeback: Refactor drm_writeback_connector structure
  drm/i915/writeback: Add writeback registers
  drm/i915/writeback: Add some preliminary writeback definitions
  drm/i915/writeback: Init writeback connector
  drm/i915/writeback: Add function to get modes
  drm/i915/writeback: Add hook to check modes
  drm/i915/writeback: Define encoder->get_hw_state
  drm/i915/writeback: Fill encoder->get_config
  drm/i915/writeback: Add private structure for writeback job
  drm/i915/writeback: Define function for prepare and cleanup hooks
  drm/i915/writeback: Define compute_config for writeback
  drm/i915/writeback: Define function for connector function detect
  drm/i915/writeback: Define function to destroy writeback connector
  drm/i915/writeback: Add connector atomic check
  drm/i915/writeback: Add writeback to xe Makefile
  drm/i915/writeback: Add the enable sequence from writeback
  drm/i915/writeback: Define writeback frame capture function
  drm/{i915/xe}/writeback: Add a writeback helper to get ggtt address
  drm/i915/writeback: Configure WD_STRIDE reg
  drm/i915/writeback: Configure WD_SURF register
  drm/i915/writeback: Enable writeback interrupts
  drm/i915/writeback: Initialize writeback encoder.
  drm/i915/writeback: Define the disable sequence for writeback
  drm/i915/writeback: Make exception for writeback connector
  drm/i915/writeback: Modify state verify function

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  12 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |   2 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  |  30 +-
 .../gpu/drm/arm/display/komeda/komeda_crtc.c  |   2 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.h   |   6 +-
 .../arm/display/komeda/komeda_wb_connector.c  |  39 +-
 drivers/gpu/drm/arm/malidp_crtc.c             |   2 +-
 drivers/gpu/drm/arm/malidp_drv.h              |   2 +-
 drivers/gpu/drm/arm/malidp_mw.c               |  32 +-
 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +-
 drivers/gpu/drm/drm_writeback.c               | 118 +---
 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 183 +++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +
 .../drm/i915/display/intel_display_debugfs.c  |   3 +
 .../drm/i915/display/intel_display_device.c   |  29 +-
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  10 +
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_power.c    |   4 +
 .../drm/i915/display/intel_display_power.h    |   2 +
 .../gpu/drm/i915/display/intel_display_regs.h |   1 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   3 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +
 .../gpu/drm/i915/display/intel_writeback.c    | 650 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_writeback.h    |  23 +
 .../drm/i915/display/intel_writeback_helper.c |  12 +
 .../drm/i915/display/intel_writeback_helper.h |   8 +
 .../drm/i915/display/intel_writeback_reg.h    | 142 ++++
 .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |   9 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c |  13 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h |   4 +-
 .../gpu/drm/renesas/rcar-du/rcar_du_crtc.h    |   4 +-
 .../drm/renesas/rcar-du/rcar_du_writeback.c   |  31 +-
 drivers/gpu/drm/vc4/vc4_txp.c                 |  17 +-
 drivers/gpu/drm/vkms/vkms_drv.h               |   2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c         |  15 +-
 drivers/gpu/drm/xe/Makefile                   |   4 +-
 .../gpu/drm/xe/display/xe_writeback_helper.c  |  13 +
 include/drm/drm_connector.h                   |  69 +-
 include/drm/drm_modeset_helper_vtables.h      |   4 +-
 include/drm/drm_writeback.h                   |  98 +--
 47 files changed, 1288 insertions(+), 337 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_writeback_helper.c

-- 
2.34.1

