Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82D25FD4FE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 08:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BE88902A;
	Thu, 13 Oct 2022 06:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBACC8902A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 06:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665643228; x=1697179228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LPeK3P+N+ZV33HnmnYgSaBcBuIyUuruU8ljd/kAB0m8=;
 b=ShV4LsqkxcWFjxdFXKGiGvtTs3ntZF/qMyQKH6Y9byCOlxcbek3gf+Qk
 5ODNW4y7eM9I5GMtWFCWp+ZyKTmun4r4RjLg1Oz4emX88JnEyTTdl5ICd
 ZPWkxZtrcOVEhUo3Mc+nhRBtIrxYlst4RhSoVZSYWKRNcjz68sfDSVEov
 B2dK9qeUoX+fod7bbeoy6T4c2zW/gcRUh0UuFWjpo5wsnBFnpEGDcbWHJ
 ob7F0XjoZnh0qt9Evy8cO83ASq8mPQyz45umAv1MdFxSOB5LYSFq5/goR
 pi3X2SoDHsCPNL+81LPeH4gNB/Y6tKwsQ1DhPhJtdFvOU58E1UVfTX/2q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="306624561"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="306624561"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 23:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="872199381"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="872199381"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 12 Oct 2022 23:40:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 12:08:30 +0530
Message-Id: <20221013063834.162985-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] Enable YCbCr420 for VDSC
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
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  77 +++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +++
 6 files changed, 307 insertions(+), 23 deletions(-)

-- 
2.25.1

