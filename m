Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE7D68D0C7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DB210E457;
	Tue,  7 Feb 2023 07:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27EBF10E446
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755931; x=1707291931;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=04b4D5dSQS2K8vTbbsOhXn8pTpLq8vs2scEY6HCWJkI=;
 b=nIPv/ENXG9LmStcSmfDO1ivV9J3rq7zAs8WgV4wgPja0ZCKdoOQsIpzz
 2U3fTDnuVfNEwhN7L23DJv0doOshvRnjvtxj2vAVHO0DJMZBvjkwdpmPh
 zgCgdNXcLzQbY7kAW5Il64oNslnJ18j+WSwuF5KFnhSbj5m6Sl1mbJvFj
 VEFUBK/Szq02LRZSI5pcKhsmXUmRMsLGDzNEZ1tdlqz4hKdp4tqWgI+qB
 p/so7oFfZHo1A2H77NHP/o01igwmOfG5vvGK6jNDIPlHcBpZfoq3QcdrX
 CeJaXNoQT+Gu2uQgAGOZirv2PNvCmtCTULW/NuLel+DFzTYkVxDXTQJe5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317449111"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317449111"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840674598"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840674598"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 23:45:18 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:14:09 +0530
Message-Id: <20230207074416.3209722-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 0/7] Enable YCbCr420 for VDSC
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

This patch series aims to enable the YCbCr420 format
for DSC. Changes are mostly compute params related for
hdmi,dp and dsi along with the addition of new rc_tables
for native_420 and corresponding changes to macros used to
fetch them.

---v2
-add fields missed for vdsc_cfg [Vandita]
-add corresponding registers and writing to the [Vandita]

---v3
-add 11 bit left shift missed in nsl_bpg_offset calculation

---v4
-add display version check before writing in new pps register

---v5
-add helper to check if sink supports given format with DSC
-add debugfs entry to enforce DSC with YCbCr420 format only

--v6
-add patch to check dsc slice design requirement [Vandita]

--v7
-fix function name to intel_slice_dimensions_valid [Jani]
-remove full bspec link just add the ref number [Jani]
-remove patches for debug fs will float them as a seprate series
-Add more description for YUV420 Enablement [Vandita]

--v8
-fix slice width and height 2's multiple check
-fix minimum pixel requirement in slice check

--v9 
-Add debugfs entry to validate output format

Ankit Nautiyal (2):
  drm/dp_helper: Add helper to check if the sink supports given format
    with DSC
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (4):
  drm/i915: Adding the new registers for DSC
  drm/i915: Enable YCbCr420 for VDSC
  drm/i915: Fill in native_420 field
  drm/i915/vdsc: Check slice design requirement

Swati Sharma (1):
  drm/i915/dsc: Add debugfs entry to validate DSC output formats

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 .../drm/i915/display/intel_crtc_state_dump.h  |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |  77 ++++++++
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  44 ++++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 106 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |   7 +
 11 files changed, 438 insertions(+), 24 deletions(-)

-- 
2.25.1

