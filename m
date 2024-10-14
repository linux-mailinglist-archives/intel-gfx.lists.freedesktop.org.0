Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC56899C287
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC91A10E3B6;
	Mon, 14 Oct 2024 08:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ja1dG1Qo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AF010E3B6;
 Mon, 14 Oct 2024 08:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893272; x=1760429272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CTSYm9o+1YhGKHztr/5I4VsAYzdrwa1Lza6yl74ww6A=;
 b=ja1dG1QonfFUcEG9R1v1Q1GwnP5/5O39RlXGYZNA1KA3Yr1PAAkPrRih
 8ML2k6jcb68TmbrWtCf25lHy/1MdB/hkqyMm/MDnLTjNNTulNSu/tQHTr
 qJC9gzrqqLaQAX3iGfQU5qjgqBZNxiJHtoR24G/Xb494Zvya5Y6BPJHlp
 rJ/MOy+UAitUQm0Ba3nmybEHBSR4t0baR6w9374BESidF+WQcb7a4VkqS
 TMoZRORWXtKowMtaQTyNgZGaIceNVsOGv/jB2QcwnjtZYQ5/ca4Xm0ZOa
 IhX958W4h7+eZ1D13DkpHUxPfNvHj7GNYrxpQqen053EhjPKIfMMO45aJ w==;
X-CSE-ConnectionGUID: C35W7Kl5RlGNlH2H7YKAcg==
X-CSE-MsgGUID: F4WqNoIkQkmeE7S2pGs2Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784413"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784413"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:52 -0700
X-CSE-ConnectionGUID: Fvz/Kc1jRs+Fa4xRUqs/Pw==
X-CSE-MsgGUID: XiyOLMCaR52JUNVXoJd2aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834866"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] Add support for 3 VDSC engines 12 slices
Date: Mon, 14 Oct 2024 13:39:51 +0530
Message-ID: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

For BMG 3 VDSC engines are supported and each pipe can then support
3 slices. For Ultra joiner cases for modes like 8k@120 Hz we require
ultrajoiner and 3 x 4= 12 slices.
Add support for 3 VDSC engines and 12 DSC slices. Along with this
Pixel replication and Odd pixel considerartions are also required.

Rev2: Rebase

Ankit Nautiyal (9):
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Add register bits for VDSC2 engine
  drm/i915/vdsc: Add support for read/write PPS for DSC3
  drm/i915/dp: Add check for hdisplay divisible by slice count
  drm/i915/display: Add DSC pixel replication
  drm/i915/dp: Compute pixel replication count for DSC 12 slices case
  drm/i915/dsc: Account for Odd pixel removal
  drm/i915/dp: Add support for 3 vdsc engines and 12 slices.

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  75 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 105 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  22 +++-
 8 files changed, 200 insertions(+), 20 deletions(-)

-- 
2.45.2

