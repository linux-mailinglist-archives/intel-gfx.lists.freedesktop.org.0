Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D38D6C728F4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710F610E188;
	Thu, 20 Nov 2025 07:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nn2ztt57";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D24DD10E188;
 Thu, 20 Nov 2025 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623161; x=1795159161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YWpm/rRDP4ALXK2RtLylb4lORPpGuYXhJabaKErudrE=;
 b=nn2ztt573o4+HBSUjo6/vcq2zIOv5wWug3Z2f9O7c1qfZ1iV5z8WQw33
 4NnEomZwvGsVzfFNIacRYEP+/2MqW2dkArJwamOqPvD9bGJ4KrJBAFGNu
 YJgARHgnhExZRGrF1XZKid9jcPW7tI5ntfpAnPlogg+FijMalYd8ckod6
 M8zmFPZqQ3nYDj+IPX3eZ3jxrwucxf236Ay/UBNAD6a5GeVLQzD/g2CQG
 bPZ5DfIoV5cCxvAWF/890zbL9kkmubDt+v4OCCMrveb2Mc6WKbTAcp710
 00iSuMGdPN0g1dVli4Eoa4ApVVrddZYdfJG3kTLVwrNzDscz62Yen5gui A==;
X-CSE-ConnectionGUID: uuZ3R3lVTNODvtmf2EEnag==
X-CSE-MsgGUID: cQvZD3/sSuqOXIMPOuAE5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559079"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559079"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:20 -0800
X-CSE-ConnectionGUID: 3a0plRY1S1ee0Kb00/wktw==
X-CSE-MsgGUID: mCvu7WFIQZms5Hb1zdlGsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073600"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:18 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/11] Account for DSC bubble overhead for horizontal slices
Date: Thu, 20 Nov 2025 12:36:28 +0530
Message-ID: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

When DSC is enabled on a pipe, the pipe pixel rate input to cdclk frequency
and pipe joiner calculations needs to be adjusted to account for
compression overhead: specifically, the "bubbles" added at each horizontal
slice boundary. This overhead has always existed, even on earlier
platforms, but was not previously accounted for.

Currently, the number of joined pipes is computed much earlier than the
decision to use DSC: both during the mode_valid phase for each mode and in
the compute_config phase for a given mode. As a result, the DSC bubble
overhead cannot be considered when determining the number of pipes to join,
which may lead to incorrect configurations.

This series refactors the sequence of steps used to determine the number of
pipes to be joined and the DSC policy. The first few patches restructure
the mode_valid and compute config logic to make room for DSC bubble
overhead accounting. With these, we iterate over joiner candidates and
select the minimal joiner configuration that satisfies the
mode-requirements. The later patches introduce the actual overhead
adjustment and use it for: the minimum cdclk requirements with DSC,
SST mode_valid logic, and SST/MST compute_config logic.

Rev 2:
 - Refactor joiner computation for compute config.
 - Refactor DSC BW calculation.
 - Add overhead for SST/MST compute config phase for recomputing joiner
   requirements for DSC.
 - NOTE:
   - For Patch#7 (drm/i915/dp: Rework pipe joiner logic in mode_valid)
     git diff = --patience is used for better readability.

Ankit Nautiyal (11):
  drm/i915/dp: Early reject bad hdisplay in intel_dp_mode_valid
  drm/i915/dp: Extract code to get slice and bpp to a separate function
  drm/i915/dp: Move num_joined_pipes and related checks together
  drm/i915/dp: Extract helper to get the hdisplay limit
  drm/i915/dp: Refactor DSC BW calculation
  drm/i915/dp: Check if bandwidth is sufficient with DSC in
    intel_dp_mode_valid()
  drm/i915/dp: Rework pipe joiner logic in mode_valid
  drm/i915/dp: Rework pipe joiner logic in compute_config
  drm/i915/vdsc: Account for DSC slice overhead in
    intel_vdsc_min_cdclk()
  drm/i915/dp: Account for DSC slice overhead in intel_dp_mode_valid()
  drm/i915/dp: Account for DSC slice overhead in
    intel_dp_dsc_compute_config()

 drivers/gpu/drm/i915/display/intel_dp.c   | 301 ++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_vdsc.c |  44 +++-
 drivers/gpu/drm/i915/display/intel_vdsc.h |   2 +
 3 files changed, 267 insertions(+), 80 deletions(-)

-- 
2.45.2

