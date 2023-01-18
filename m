Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8689E671380
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 07:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE5910E67E;
	Wed, 18 Jan 2023 06:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1DFD10E67E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 06:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674021677; x=1705557677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WRVUy45ui3PaEzB8qDQB19eOI8Nnak/K5fIi5J3fCH8=;
 b=kJnaMxYOl1wnuImkuLSVRHAc+uL+C/8MfM6SxhqFzTLLZcEc4Z1jvVd3
 xORrv+uYHZAWGIzwkjnn0bMT73LOLLcKKcz4LHHc5Se+JOq6/KGBNyePf
 Q/RBgJ2o4bqn/FpjcqL4EdJupn4nKwYHEVgjDRsPCqewQkMT1z3dxHEfd
 SJc9OGRlvt7JnJyEV9JIFdk5UWjMSj7SgZQh91Wzp7llvglMm6xAWE4Cd
 3hkNm15G0MmsB1hc4avGLbkf7Nx4w53dS2Be5TGvzpqy2pg4YMv1uMhNa
 FTp4619zdZkbaCodEL0fHjo5rUqeKQiqih+fmRRvKSxClsUWAtgI3mDad g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="326176245"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326176245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:01:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="609512402"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="609512402"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 17 Jan 2023 22:01:15 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 11:29:56 +0530
Message-Id: <20230118060002.2369838-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 0/6] Enable YCbCr420 for VDSC
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

Ankit Nautiyal (2):
  drm/dp_helper: Add helper to check if the sink supports given format
    with DSC
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (4):
  drm/i915: Adding the new registers for DSC
  drm/i915: Enable YCbCr420 for VDSC
  drm/i915: Fill in native_420 field
  drm/i915/vdsc: Check slice design requirement

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  33 +++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 106 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |   7 +
 7 files changed, 345 insertions(+), 22 deletions(-)

-- 
2.25.1

