Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AE361EBE8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA47210E248;
	Mon,  7 Nov 2022 07:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F8110E248
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806039; x=1699342039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMdVlGmayohh4hv5m2tA1y/lGzYQqV8r/xHh3AT8fu0=;
 b=mNtvbk0K9Q15odSfZjvqt+zzu83JnrGG2UoJkEMXc5vVEQ5QJkTidkIM
 eH8NncY4uIPM81CAXUS2eR2LhYfTzYnW5LLyCRppxsyPQCXhh8bB/C7yy
 l+lUNIKiY0cOfiApXup7ICncxevqJUGNdrGqoyORYt2fqbT5VMabqDtO/
 56O7lKwGxgMYeEGEWrapcnLS54Mb07anhdnURZkH0AWctmVACvuHv9woe
 Sofm0DO34RcQPbDnB9zf+ICENgmKulK2WRG30jvQiDAx9L7orNcne3zaX
 EgnDd0fI2sRfWzGtl5KoCg4fv4CEUjqAQQsMR5UtKKPYIg+hdwR+ziPY7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311479909"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311479909"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:27:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="880961993"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="880961993"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 06 Nov 2022 23:27:16 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:56:07 +0530
Message-Id: <20221107072615.1352929-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221014152622.233398-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
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

