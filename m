Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EFF9ABF42
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B74610E748;
	Wed, 23 Oct 2024 06:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiSVXSNl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D2210E746;
 Wed, 23 Oct 2024 06:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666242; x=1761202242;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nT7NuL1R0ATodb3Uto4m8+MP/HiiXGiniyzNVtyMvTc=;
 b=MiSVXSNlx8tbTEPfaq1EryhJhzVGfgOMeMKTVbAgRlRIUW6b5iZ2lEbU
 6GbreqTzcFUZtnvXZoy0t1/xlJE05pIUcRquE/csaHc02cdyMFIaUo1Pe
 ZVkv9vkWu0BmwBEKYNC59ID218qQTAFeXe85lrs7mYf4rcLAHsDE1uA5q
 p/n/9TM0xAN3XDdwoX/RGV9stC9Kcmg21fHHj052sdLZCmx/qjvO/o4Uf
 Cfq8vlNAtNSXrWWIH5koyhxXHXORmuFrVjkttkx2gDdq7ji9/9xIAC9t/
 Ut8I/v8QvF6AlpgIu7omw7mvoRv4837Iz/rEtuavlOlT9LoUDLEI5R7vp g==;
X-CSE-ConnectionGUID: LgLQXLYrR7K8OCJWy083zg==
X-CSE-MsgGUID: lW0pcH42Q3ysGhvjkGQGeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097453"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097453"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:42 -0700
X-CSE-ConnectionGUID: sLM26XKqTg6SCzYhhmfBrA==
X-CSE-MsgGUID: i4S+aO6pQe+AtQZG6stXMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691474"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:41 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 00/16] Add support for 3 VDSC engines 12 slices
Date: Wed, 23 Oct 2024 12:22:41 +0530
Message-ID: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (16):
  drm/i915/dp: Update Comment for Valid DSC Slices per Line
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
  drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
  drm/i915/dp: Ensure hactive is divisible by slice count
  drm/i915/dp: Enable 3 DSC engines for 12 slices
  drm/i915/display: Add macro HAS_PIXEL_REPLICATION
  drm/i915/display: Add support for DSC pixel replication
  drm/i915/dp_mst: Account for pixel replication for MST overhead with
    DSC
  drm/i915/dp: Account for pixel replication for BW computation with DSC
  drm/i915/display: Account for pixel replication in pipe_src
  drm/i915/dp: Enable DSC pixel replication
  drm/i915/dsc: Introduce odd pixel removal
  drm/i915/display: Adjust Pipe SRC Width for Odd Pixels
  drm/i915/dp: Add Check for Odd Pixel Requirement

 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  36 +++++-
 .../drm/i915/display/intel_display_device.h   |   3 +
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  89 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  20 +++-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 105 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   9 ++
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  22 +++-
 10 files changed, 267 insertions(+), 27 deletions(-)

-- 
2.45.2

