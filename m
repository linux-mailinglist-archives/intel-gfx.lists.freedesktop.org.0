Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43D65FF154
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3E5E10EB22;
	Fri, 14 Oct 2022 15:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCA810EB21
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665761271; x=1697297271;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oXPRvQOsHbLrl0K6nOvl+kcNg1Xyij5/Fh6NRdbfRNI=;
 b=azTq2qi2bcL4pp/Pw2WeV4yQP3r2pgkAyub6JwXLmlkm3c0SXAgr5+YB
 LOqooet0VgcTDH1jB+YUHNataxhw2x8vq+gvwy7haHl2DVOO5Zh5SaXUq
 FEFhsmO4OeUAwY0bYOnSgGNdpx9p4SivzgADiueuYY5jWyNr6BWedWmg1
 OypurpB0kMa6JXA2UBpgsA8m2dnN1TB1qa6ak1QhF+a4BmiTWXLYICoGK
 2Dj+c3TKNDOJNitOSNmiFoie6pd4go4wUc5QDXemq7BnHzMP+oxDMxfqL
 5iyYjUbGM/fXEwR/IIuIOi31uU9i65+xINM27/uc2deNNCl5y0HN5Whki Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="285128083"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="285128083"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696340278"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696340278"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2022 08:27:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 20:56:18 +0530
Message-Id: <20221014152622.233398-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] Enable YCbCr420 for VDSC
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

Ankit Nautiyal (1):
  drm/i915/dp: Check if DSC supports the given output_format

Kandpal, Suraj (2):
  drm/i915: Adding the new registers for DSC
  drm/i915: Fill in native_420 field

Suraj Kandpal (1):
  drm/i915: Enable YCbCr420 for VDSC

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  32 ++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  78 +++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 6 files changed, 308 insertions(+), 23 deletions(-)

-- 
2.25.1

