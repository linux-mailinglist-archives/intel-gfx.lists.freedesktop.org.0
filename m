Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454986653DA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 06:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E0F10E6E4;
	Wed, 11 Jan 2023 05:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E133210E6E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 05:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415592; x=1704951592;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uQM7YK/pnGJXPqrycC04SITbd4/LzKwVE2h9WS6vqxc=;
 b=XD+gi1IW0mzpRtpGLq9JrZgNbScWchx76/taTV0OHi63z+Rh3nlSl9TD
 MGPOe8sL+zc9X8pkqAsas7DI+0OpXWoFaD9wcaN1edJJ/Vt3+FiUzi06J
 5OMriQJU3y5sYUJX767eOIcmx3J+uw4fR5csGcWSQy7GW5keR7xLlPJoP
 zglvXyyrEh5gpbXKosEPlY2cdtg1lnay0o44KNz7/Q5TlVdq6o91cXcse
 FvR95uc0WEtHHT8PnkffmNzzjXhSMBUtOd/AZfy/XlCiVan1yAKzos4lO
 fbFEDWp4ZEkMpdVtOEnqM0IeKYkc4WNRvhRg8MYiCcTAzATZx/cUId/4o w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325341371"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325341371"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="720598365"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="720598365"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2023 21:39:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 11:08:28 +0530
Message-Id: <20230111053837.1608588-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/9] Enable YCbCr420 for VDSC
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

Ankit Nautiyal (2):
  drm/dp_helper: Add helper to check if the sink supports given format
    with DSC
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (4):
  drm/i915: Adding the new registers for DSC
  drm/i915: Enable YCbCr420 for VDSC
  drm/i915: Fill in native_420 field
  drm/i915/vdsc: Check slice design requirement

Swati Sharma (3):
  drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420
  drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from
    debugfs
  drm/i915: Code styling fixes

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 .../drm/i915/display/intel_display_debugfs.c  |  91 ++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  37 +++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 108 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |   7 +
 9 files changed, 440 insertions(+), 25 deletions(-)

-- 
2.25.1

