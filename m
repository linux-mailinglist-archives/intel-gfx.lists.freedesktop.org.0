Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BE19B1DDB
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2024 14:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7788910E1D2;
	Sun, 27 Oct 2024 13:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5z7kzzT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F98910E1D2;
 Sun, 27 Oct 2024 13:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730036620; x=1761572620;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MG8LVtomOBMEgUNAdBxoz2wanXvkhgGWqcms/z7FEoQ=;
 b=O5z7kzzTiKI++fNM95pmZkqs3ZawPWUYl4LDDcvCnVLboy2ishZZagO6
 abq+EsJvCzXZdAtkUYEJQ/EZCGL1rhUHlYF5oVnJ15dU12PQh9nYqGsfD
 HtyAIVo2VqasKWN910cF0P0LoIs1bq5wIeKgWNc0BRpqv11vg+FBb8NDr
 9rh/2TwrNlJtgHKGSJaEbERmzVGaH5kXsNLKclBA7cHAfh0hJ9833Y3cu
 vcU55yiBjpeu+dNEVYfGv/4/N5ZRWksxmwKZFNjJxx/MCwu907hGmfOv/
 NKLB3QqbTuhZrWFBTmz6nV/xenpMyP7M1lHTRgRIU46Rcw0ykH4ruiu/h w==;
X-CSE-ConnectionGUID: fX3PBpw9SjiNh6H9erdB3w==
X-CSE-MsgGUID: bwIpGS0GQSaTHFueLZfpXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29780945"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29780945"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:39 -0700
X-CSE-ConnectionGUID: FTvnOsHdTBW/NY2Q0SKrPg==
X-CSE-MsgGUID: hwGWw9a1RACMwWPNSDMFFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="118841434"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 0/7] Add support for 3 VDSC engines 12 slices
Date: Sun, 27 Oct 2024 19:15:50 +0530
Message-ID: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
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
Add support for 3 VDSC engines and 12 DSC slices.

Rev2: Rebase
Rev3:
-Add patch to account for pixel replication in pipe_src.
-Fix kernel test bot warning.
-Minor refactoring.
Rev4:
-Address review comments from last version.
-Add BW consideration with pixel replication
-Split Odd pixel handling in separate patches.
Rev 5:
-Use num_streams instead of dsc_split.
Rev 6:
-Dropped patches for pixel replication and odd pixel removal.

Ankit Nautiyal (7):
  drm/i915/dp: Update Comment for Valid DSC Slices per Line
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
  drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
  drm/i915/dp: Ensure hactive is divisible by slice count
  drm/i915/dp: Enable 3 DSC engines for 12 slices

 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 36 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 38 +++++++++++++------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 12 +++++-
 6 files changed, 73 insertions(+), 21 deletions(-)

-- 
2.45.2

