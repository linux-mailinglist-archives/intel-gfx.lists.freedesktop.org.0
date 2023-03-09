Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 994896B1B7A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 07:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C62710E79A;
	Thu,  9 Mar 2023 06:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714CD10E799;
 Thu,  9 Mar 2023 06:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678343388; x=1709879388;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N3/FXjxPSkuVUGxirAgj9t82jbGzuRAha8eOGocvIWc=;
 b=Ql6T3FhrtDuzVz79bZkDxuQGlZ+ubLorwkl47FUBBg+Ap38soUsQFmzZ
 CG3gRIE3ReNDccpGiIJUgwDo4v9Tu2M+nEn1tSsauPP66A2o3PuxALejl
 39PtW93aDESlSa0k//4wHt9gqCvJNY3aIsTF1g3siTAn5AjwRzt5gtm3V
 lC+BLqf39brPBg4OFnpM3ghtUc6wGBbO4dKLnq2bNTUsqiNxyk602QUwZ
 RZLTUb2Ar8sBfmBWgZIXMw7TXKdpE9JZuJwzhWIU9zlje0SOtAmyzkqO4
 1RQLLMDw2xSB9EIzBNuErpA0BfOo192eqY/96k71wJQT6KAN4mG/Zyuq0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="335070000"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="335070000"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 22:29:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="1006614849"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="1006614849"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2023 22:29:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 11:58:48 +0530
Message-Id: <20230309062855.393087-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/7] Enable YCbCr420 format for VDSC
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
  drm/i915/dsc: Adding the new registers for DSC
  drm/i915/dsc: Enable YCbCr420 for VDSC
  drm/i915/dsc: Fill in native_420 field
  drm/i915/vdsc: Check slice design requirement

Swati Sharma (1):
  drm/i915/dsc: Add debugfs entry to validate DSC output formats

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 .../drm/i915/display/intel_crtc_state_dump.h  |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |  78 ++++++++
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  48 ++++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 132 +++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  28 +++
 include/drm/display/drm_dp_helper.h           |  13 ++
 11 files changed, 467 insertions(+), 32 deletions(-)

-- 
2.25.1

