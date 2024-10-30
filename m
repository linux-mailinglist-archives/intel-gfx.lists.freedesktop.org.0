Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0269B5A90
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F4510E745;
	Wed, 30 Oct 2024 04:08:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KiDAdW7v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF34E10E12E;
 Wed, 30 Oct 2024 04:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261296; x=1761797296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LgzcttBzQdW/kdcrRHsm3pUuHb5Z8a8/0F2Lmcn18bs=;
 b=KiDAdW7v99NF6kqyipXM1M0moRghguh1Ov2B3/KjBu8P92gIv0ZScqzY
 EaJeTgM4Bk2U78jPEX+978ZiWyUfvtw2NUCfQmCdYXAveEytIa5aGG1i1
 lU5bLgp/p/Li53u9a2B5hklrLmgDSj1qTRyiDLJxM6s1cI1dr4SrH0CG9
 +7Yxz6MbLFyoG7kxfpVIM74k0hvieXh7DK9syQIem3eDyqUPfURrYyPZM
 Q6fHyUPvl0bgigf2iySoyXiD4xshJCeLq2pIy9NLO4/CciWYznfJXp7X3
 rgOFZoOJH5VFzyTgoHO9aqEbcAGezzZsvN7ODBWXUbpRBqDBcu7+y+iV3 Q==;
X-CSE-ConnectionGUID: vcP9SjE6SPmAMRMJzwsi2w==
X-CSE-MsgGUID: Lin17KkPQMK1eLAOcTHntw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088429"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088429"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:16 -0700
X-CSE-ConnectionGUID: 7RXVprwVQ1+97uvSAywvwA==
X-CSE-MsgGUID: mZ4GZCArRnKMDWRCMw4+Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510485"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 0/7] Add support for 3 VDSC engines 12 slices
Date: Wed, 30 Oct 2024 09:40:29 +0530
Message-ID: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
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
-Drop patches for pixel replication and odd pixel removal.
Rev 7:
-Fix Hw readout for DSC in Patch#2, and rebase.

Ankit Nautiyal (7):
  drm/i915/dp: Update Comment for Valid DSC Slices per Line
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
  drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
  drm/i915/dp: Ensure hactive is divisible by slice count
  drm/i915/dp: Enable 3 DSC engines for 12 slices

 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 36 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 34 ++++++++++++------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 12 +++++--
 6 files changed, 69 insertions(+), 21 deletions(-)

-- 
2.45.2

