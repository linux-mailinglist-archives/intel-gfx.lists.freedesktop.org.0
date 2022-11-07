Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0F961EC3E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CDB10E1F3;
	Mon,  7 Nov 2022 07:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC63B10E1F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806825; x=1699342825;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dMdVlGmayohh4hv5m2tA1y/lGzYQqV8r/xHh3AT8fu0=;
 b=Smw7yiv3g/Qk6N4OIvj9oNshiscbHqpp/slH+JKiubE/2qkUTm1Gz0ya
 uQu8tCp9vvAnFIJCRU3WPmkDnxulreQzpWoIk93sZpRknvHDMQpQMQw+1
 38W4al2+ITIKjkFbRsKgmSH4+8JnkoS1nLmv2SxB3ORRs+x0beDjGKjvE
 00RLp0EcSKfnaDdJ20idtjUHQdSXIOtjtEF33cbiXvf0WiZTlaCAyc7nr
 +huxZDGZmAvWEHh/dDAERpCNgWP8u2Kxja22eVuucRVU+oDQLY8NPNSC8
 TjDGoXzGAs8x5dVeeAgyQh/CrZSjC8S+TljAdpzFQxtHc9wCQGsoa156/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311482310"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311482310"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:40:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965051622"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965051622"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 06 Nov 2022 23:40:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 13:09:15 +0530
Message-Id: <20221107073923.1353049-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/8] Enable YCbCr420 for VDSC
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
-adding fields missed for vdsc_cfg [Vandita]
-adding corresponding registers and writing to the [Vandita]

---v3
-adding 11 bit left shift missed in nsl_bpg_offset calculation

---v4
-adding display version check before writing in new pps register

---v5
-added helper to check if sink supports given format with DSC
-added debugfs entry to enforce DSC with YCbCr420 format only

Ankit Nautiyal (2):
  drm/dp_helper: Add helper to check if the sink supports given format
    with DSC
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (3):
  drm/i915: Adding the new registers for DSC
  drm/i915: Enable YCbCr420 for VDSC
  drm/i915: Fill in native_420 field

Swati Sharma (3):
  drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420
  drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from
    debugfs
  drm/i915: Code styling fixes

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 .../drm/i915/display/intel_display_debugfs.c  |  91 ++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  35 +++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  78 +++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |   6 +
 9 files changed, 406 insertions(+), 26 deletions(-)

-- 
2.25.1

