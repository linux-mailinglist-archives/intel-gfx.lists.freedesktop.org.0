Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2024269EE51
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 06:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2816B10E3B7;
	Wed, 22 Feb 2023 05:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED51D10E3AC;
 Wed, 22 Feb 2023 05:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677043979; x=1708579979;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nuIBTpsMna69Ko9XoCOAFA/mwiNxOjs5Mvdk1bx3Ku4=;
 b=LPRXMbCvilaWeO8CABNsBBGn2t19eSmw1IScZ9DzeZUX/twi1i4fTekN
 DLYUpIWI0kw/tEhLTO2c6c78q2qsS4YqhiVRLdVT5IOo2dy+dGr2/yA56
 yPz3FtGrXiUgfkak9gYpehYLxZ3qFWqr9O+f3w1c4rhqjtDGlSBNThMYd
 TY+6H2/fgg9UDeB2mOvWMH9gzo4CQJ9rUR61hlRZuWfVYDzEKtyIx0AQa
 s+Uf4UG8rEZ4gCMY3yTFOGMEKP38zyRu9PkXAduueE8tMJ5qs6JcRS5gp
 oz0mJby1KDRfudedtcWvfppxPMq/n6Z2dUDNlftKL1dOxlWSfFMQHU/Ix w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="332843185"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="332843185"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 21:32:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="917450461"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="917450461"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 21 Feb 2023 21:32:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 11:01:46 +0530
Message-Id: <20230222053153.3658345-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] Enable YCbCr420 format for VDSC
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
There have been discussions prior to this series in which some patches
have gotten rb and can be found in the below link
https://patchwork.freedesktop.org/series/113729

Ankit Nautiyal (2):
  drm/dp_helper: Add helper to check DSC support with given o/p format
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (4):
  drm/i915: Adding the new registers for DSC
  drm/i915: Enable YCbCr420 for VDSC
  drm/i915/display: Fill in native_420 field
  drm/i915/vdsc: Check slice design requirement

Swati Sharma (1):
  drm/i915/dsc: Add debugfs entry to validate DSC output formats

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 .../drm/i915/display/intel_crtc_state_dump.h  |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |  78 ++++++++
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  39 +++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 108 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 include/drm/display/drm_dp_helper.h           |  13 ++
 11 files changed, 442 insertions(+), 24 deletions(-)

-- 
2.25.1

