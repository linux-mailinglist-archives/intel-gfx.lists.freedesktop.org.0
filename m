Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0D7A23DE3
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C93010E18F;
	Fri, 31 Jan 2025 12:50:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EG0h/c0E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B9E10E086;
 Fri, 31 Jan 2025 12:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327817; x=1769863817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iOOMww0vii/uLFCOs0SAut/vSVkhZeHJuFc8QgrwB7w=;
 b=EG0h/c0E6WEtMRo3NFXZFkkAFxvc2caLILCbhp7Xk/DW2Z9CU9M8Hatk
 vkAfplbe7lfeCzOBFxMhqkqm6gXL4iyNshk4Ywva9A6Z0qKgbIGnZ4UaS
 Vxq9DgXzNwtiOjKUuzxbcejXJChnIFW3QeYzsB+AsaahBbWqKWxlZXk0t
 TmdtrSf+02oC9C4NKgFFky4e5aok85XCZtV7Xb6+zgS/tit8xR+o9mcZN
 fi6ZkbEzbuGl0xrcuLzqE1uwWCWW4WYH5tuDxJwUOKfKBTxkzu5OrqFQs
 EP/kicepvxosiO6Q54QnyKiFxlJgRJ672oW7i9hWeW/rb1IJpNUXyF3Nh w==;
X-CSE-ConnectionGUID: TH6QObUtQ5Oo1N0XZPxJww==
X-CSE-MsgGUID: 4XMLis+2TSi4HQFh8BtT6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38798410"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38798410"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:16 -0800
X-CSE-ConnectionGUID: yjXJyE5wR1OyzxXJTsQrCA==
X-CSE-MsgGUID: 2ujmw9TgSCGuzD1jH1Rw1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110203302"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 00/14] drm/i915/dp: dsc fix, refactoring and cleanups
Date: Fri, 31 Jan 2025 14:49:53 +0200
Message-Id: <cover.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This started off as preparation for UHBR SST DSC enabling, but escalated
quickly. The SST DSC code is unnecessarily complicated with the platform
differences and ints and fixed points being mixed. Clean it up quite a
bit, reducing the number of lines in the process.

BR,
Jani.


Jani Nikula (14):
  drm/i915/dp: Iterate DSC BPP from high to low on all platforms
  drm/i915/dp: Add intel_dp_dsc_bpp_step_x16() helper to get DSC BPP
    precision
  drm/i915/dp: Rename some variables in xelpd_dsc_compute_link_config()
  drm/i915/dp: Pass .4 BPP values to
    {icl,xelpd}_dsc_compute_link_config()
  drm/i915/dp: Move max DSC BPP reduction one level higher
  drm/i915/dp: Change icl_dsc_compute_link_config() DSC BPP iteration
  drm/i915/dp: Move force_dsc_fractional_bpp_en check to
    intel_dp_dsc_valid_bpp()
  drm/i915/dp: Unify DSC link config functions
  drm/i915/dp: Inline do_dsc_compute_compressed_bpp()
  drm/i915/dp: Simplify input BPP checks in
    intel_dp_dsc_compute_pipe_bpp()
  drm/i915/dp: Use int for compressed BPP in dsc_compute_link_config()
  drm/i915/dp: Drop compute_pipe_bpp parameter from
    intel_dp_dsc_compute_config()
  drm/i915/dp: Pass connector state all the way to
    dsc_compute_link_config()
  drm/i915/mst: Convert intel_dp_mtp_tu_compute_config() to .4 format

 drivers/gpu/drm/i915/display/intel_dp.c     | 194 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  54 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.h |   2 +-
 4 files changed, 116 insertions(+), 137 deletions(-)

-- 
2.39.5

