Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D20C1F59E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23AC10E94A;
	Thu, 30 Oct 2025 09:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C5hcBXQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FBF10E94A;
 Thu, 30 Oct 2025 09:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817313; x=1793353313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6dYH/LemY7sUKalLuAc9GIBCXURAJN90W9TJisAa+Fc=;
 b=C5hcBXQRZ+SQCVLbpOBg6Q3u5MpreDqpA9mYl3T1WTeocML7rw8j2kaq
 ccbcRinub0uBPmwZ5UFM6vkkc9Hz3FieMn+d58xsEhvQP/7zKKedp8VOD
 671DSNLi0pZywKE1g6GtF7mjszqqoaLHRPwZaaVYB9ScNBj87sZ653J/Y
 znzDCZ9/S3feVcWtfANCy7eg/O0K8vZP4YqHeOOovqEdwXdGSsYA7TEUP
 oYJb2qhgIHBsRyD5jbgJ8Uhp8HpL6ddz6MSjnYW2qFZIVFKqjWw9eQCf3
 NcImGQGJ60B9EBxmh4jVUvl1kWmIol3AA2gkKtgUu27tH2kKwm7C4qUcP Q==;
X-CSE-ConnectionGUID: ofzajfaZTaKY8RW0IRYVBg==
X-CSE-MsgGUID: XBR9M2CXTy25e+19RBSY/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63651894"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63651894"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:53 -0700
X-CSE-ConnectionGUID: YsfVEOK5Sl60QGuXRYIGtw==
X-CSE-MsgGUID: ywjG2tbJSe6dwvmq/C9v5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="189983022"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/6] Fix Adaptive Sync SDP for Panel Replay
Date: Thu, 30 Oct 2025 14:58:51 +0530
Message-ID: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Enable Adaptive Sync SDP always when Panel replay + auxless ALPM is
supported. Ensure AS SDP is sent on line which is within the SCL +
guardband region.

This series is in continuation from discussions in [1] [2].

[1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
[2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/

Rev2:
Add few fixes in AS_SDP and Lobf.

Rev3:
Add patch to avoid VRR with PCON.

Ankit Nautiyal (5):
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
  drm/i915/dp: Allow AS_SDP only if panel replay + auxless alpm is
    supported
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines

Jouni Högander (1):
  drm/i915/display: Take into account AS SDP in
    intel_dp_sdp_min_guardband

 drivers/gpu/drm/i915/display/intel_alpm.c | 41 ++++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_alpm.h |  6 ++--
 drivers/gpu/drm/i915/display/intel_dp.c   | 35 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.c  |  7 ++++
 4 files changed, 69 insertions(+), 20 deletions(-)

-- 
2.45.2

