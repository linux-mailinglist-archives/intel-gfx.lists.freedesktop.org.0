Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3F8805D83
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 19:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6AB10E5E9;
	Tue,  5 Dec 2023 18:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB0610E5ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 18:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701801709; x=1733337709;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mXdiqVbuNXmLiNR4KU+tn/MnhTb/8cKSFdC5IGxVvw8=;
 b=V0eDtMzS0/890zrAYPZMrttMDj6g/tKXxjqHoTWvCT7ANFETW2sbimRI
 cW2kwu8Su7az72Aql53D5eVvRz+2/qZSlqsxvqSeBMJWUDt6UH/c/CD+9
 /8Yu3v4L/2j3++j1ITM22JwDFbJIXQBrjG1DpY/1kVQNf1rkrrTrKeYyE
 XQI6zIxJzerpf0PLxnVhgalAF/fKsGOgPAy85JSqdt+yNkMAzBbkEWkzw
 Qqjxt1cdDvqamezb1hR/0ZL3maGZD1wLCuBf5Yz1IuG7AAUtInl5kqmxw
 HygDrG3dIT23wfAFf6sG//kHuJdOsGM/c7+BMo9m2SEQEqX+KqmgNN/fE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="397835230"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="397835230"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 10:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1102549368"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="1102549368"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 05 Dec 2023 10:41:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Dec 2023 00:06:57 +0530
Message-Id: <20231205183700.841096-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Implement CMRR Support
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

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

--v6:
- CMRR handling in co-existatnce of LRR and DRRS
- Correct vtotal paramas accuracy and add 2 digit precision.

Mitul Golani (3):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  61 +++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 136 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 6 files changed, 197 insertions(+), 21 deletions(-)

-- 
2.25.1

