Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD51610F83
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2974710E7F0;
	Fri, 28 Oct 2022 11:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4EB110E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955895; x=1698491895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=obVRbGwmoH7UWQtVlF51I6gDqEUJnAIQP33Nv1bb9U4=;
 b=kw17bidaqCAT+eWybqRZwk4+qSC/LxmBUSNVZbITmd4Q8LdrQqvgIs1J
 nbUoQQdOiVSRedfkL7dAmfPWjOIKDCMPtMArCjnG6LHwPgTT+IzMrMqD9
 pE9pKnxtM3qRP5bKWo/XJFovbVY3VHQoUS/msgDorGRJj92oOsy6vGKGy
 ZL2Dvo4N7jH4MZ8PAqQfA9XnsiLnOebqWjLPudwtRQYQbQNH5S3ZEeRac
 +/aow277U3cl5tym3wTdS+FsMGClxcuw8fbp6vokVhe15zzYXVuymEDum
 xL6VrTpc931SvH1ODBbvo797ZIaF9UbfKMs/dcC3WTNv+nHq8vnPdOkYd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534656"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534656"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701492"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701492"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:13 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:45 +0530
Message-Id: <20221028111953.12552-1-swati2.sharma@intel.com>
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
 .../drm/i915/display/intel_display_debugfs.c  |  90 ++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 +++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  78 +++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |   6 +
 9 files changed, 404 insertions(+), 26 deletions(-)

-- 
2.25.1

