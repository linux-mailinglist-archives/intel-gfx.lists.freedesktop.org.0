Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D29D901BCF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E44B10E30D;
	Mon, 10 Jun 2024 07:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfivvnuG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49DE10E33C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004115; x=1749540115;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bEfKe2HaWbg5te6mivkqM4xgvpniGODUQlmmbT1RV14=;
 b=GfivvnuG2XLFDqPH4iUn0SiWTa2UU1VLsvOzm9T88CFsvomdBtgHQ2zy
 VxpRmN8BzKVIdMaqn1yx9VinuCAiWtrdpsAjtEgHVhl7JZqNexNUB2+WY
 ItbNm6k/ZHHpao7yb/8moUk8GJ5I25hY1nxeDA7gulJ6XRAWTDKhk3nOj
 G5taJlnpa+3zlqZQ9wy32+l8Y++Tr24A+7upj4/fkmQ+b7GqvbP2jj7HQ
 BxvldinM2Lz93i+6c3TB1xrtNjsBVQr/or53rj66Lems4utgv9yTNP8Kb
 Z/rV6DnOWT0B9+0C86kYJunyu9DVjZx3qTStp2UGVSDrswQwtXkgbG8q9 A==;
X-CSE-ConnectionGUID: QjkUkvdzSZ2pFq86mQgfcA==
X-CSE-MsgGUID: +CVpU/YaR5S7ygPEAs6pHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526396"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526396"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:21:55 -0700
X-CSE-ConnectionGUID: A9VNsPWqQjyx82sJzvbAYg==
X-CSE-MsgGUID: u/sdPE7NTOGGH5VNHqcZWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407607"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:21:54 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 0/9] Implement CMRR Support
Date: Mon, 10 Jun 2024 12:51:53 +0530
Message-ID: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

--v7:
- Rebased patches in-accordance to AS SDP merge.
- Add neccessary gaurd to prevent crtc_state mismatch
during intel_vrr_get_config.

-v8:
- Add support for AS SDP for CMRR.
- update palce holder for CMRR register(Jani).
- Make CMRR as subset of FAVT, as per comments in patch#3.

-v9:
- Add CMRR register definitions to separate intel_vrr_reg.h.
- Remove cmrr_enabling/disabling, use vrr.enable instead.
- Update AS SDP pack function to accomodate target_rr_divider.
- Remove duplicated lines to compute vrr_vsync params.
- Set cmrr.enable with a separate patch at last.

-v10:
- Separate VRR related register definitions.
- Add dependency header intel_display_reg_defs.h.
- Rename file name to intel_vrr_regs.h instead of reg.h.
- Revert removed line.
- Since vrr.enable and cmrr.enable are not mutually exclusive,
handle accordingly.
- is_edp is not required inside is_cmrr_frac_required function.
- Add video_mode_required flag for future enhancement.
- Correct cmrr_m/cmrr_n calculation.
- target_rr_divider is bools so handle accordingly.

-v11:
- Move VRR related register and bits to separate file
intel_vrr_regs.h.
- Correct file header macro to intel_vrr_regs.h.
- Remove adding CMRR flag to vrr_ctl register during
set_transcoder_timing.
- Replace vrr.enable flag to cmrr.enable where added mistakenly.
- Move cmrr computation patch to last and set other other required
  params before computing cmrr.enable.

-v12:
- Add patch to fix check patch issues for VRR related registers
in i915_reg.h then move them to intel_vrr_regs.h with separate
patch.

-v13:
- Reverted unrelated patches while rebase.

-v14:
- Fix all indentations for VRR related registes in Patch#1

-v15:
- Rebase.

Mitul Golani (9):
  drm/i915: Update indentation for VRR registers and bits
  drm/i915: Separate VRR related register definitions
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Update trans_vrr_ctl flag when cmrr is computed
  drm/dp: Add refresh rate divider to struct representing AS SDP
  drm/i915/display: Add support for pack and unpack
  drm/i915/display: Compute Adaptive sync SDP params
  drm/i915/display: Compute vrr vsync params
  drm/i915: Compute CMRR and calculate vtotal

 drivers/gpu/drm/i915/display/intel_display.c  |  24 +++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  18 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 128 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 127 +++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 100 --------------
 include/drm/display/drm_dp_helper.h           |   1 +
 8 files changed, 286 insertions(+), 119 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vrr_regs.h

-- 
2.45.2

