Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EA7668BE0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 06:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BA210E1D8;
	Fri, 13 Jan 2023 05:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE6D10E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 05:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673589209; x=1705125209;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tYHtPBneT0ZtS/+cfouoh9ZVhj5ea5fSAOWeLg3Pc90=;
 b=J37BVuGwswJVRS9pt/c+/SeiJrngsZvJHmPHH++TZrmLxlHGv73rr3TE
 8w3rcbbXGHGth+i/wHgl7wVf5Zhuhtq0auH8PbGtEicoiv68rv+4claON
 NBqHwX3pJDiElKnplakqHPvutx9u2bmPWieqb2bjXvPfxZCpUDh3Esjsd
 GpIvDfiRTqnC4Lx6vgvkwYv3y5rJ7m4jwqWZKQioAjqltbBOYK5LwV82C
 uABqfpOKHxJrn+CvG5UdUlb+GMiZZuFpj4HgnglHrAjIQdA5967ojRq6T
 JWo0whM0nbcEaxoGuZMDR98npJsuWvLUONN2qNsRKEWSJ5i9cG11uPmU5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304302649"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="304302649"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 21:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="831972039"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="831972039"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 21:53:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Jan 2023 11:22:11 +0530
Message-Id: <20230113055217.1974569-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/6] Enable YCbCr420 for VDSC
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

