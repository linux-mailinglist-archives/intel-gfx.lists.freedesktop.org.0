Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EEC8CAA2A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C8E10E17D;
	Tue, 21 May 2024 08:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHLLgYgv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA5F10E17D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280904; x=1747816904;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xIu1dz7d40ycBSk3+piXmG20KKt6mVab/apydkpeKSU=;
 b=PHLLgYgvbJ/FJfHdvMiqR8N0AsQYPgo6/c8Mw/gY9A/6S0wWBZQZQJ8m
 1xZWupDvScH7VFOj5QKjlpJjZMK5785kIydsVYMpa34/1Q39paGDfwHKH
 GWGnJzTrKi305I7Yqi+SGTwSdqXNhhJHLzL5x+KdMXyujDDP1Wr+q3kYt
 kh1Ta2e7iDuEW8YeHxXPPf6lhW/5Ye+nq8Zf737JMsAPrHeXU0P7Jrlfw
 MhAwpEI7kmXRmSXSuwJK8zBBwLtE7P1kNHoVrwgYxyh507MrBuoFPMcfV
 qvO5hdVa76Am9VirvMIq48gtDAJaxtfvekc2omfL2Ca8SV7VYVUtq3dtE Q==;
X-CSE-ConnectionGUID: qrEmTAhxTQOtL1ufe0DU/g==
X-CSE-MsgGUID: GRuTHefWT9i1GYs9nAk1ng==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860326"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860326"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:43 -0700
X-CSE-ConnectionGUID: x1sx+bFQSfudqcNsN9jnow==
X-CSE-MsgGUID: d7EEv8NOROKow1qLNtL5eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426188"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/9] Panel Replay Fixes
Date: Tue, 21 May 2024 11:41:14 +0300
Message-Id: <20240521084123.1984075-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set contains fixes found when debugging Panel Replay and
Early Transport and ALPM using eDP panel supporting all these features.

v2:
  - ensure fastset is performed when the Early transport disable bit changes
  - take into account differing Y position when Early Transport is used

Jouni Högander (9):
  drm/i915/psr: Do not use fast_wake_lines for aux less wake time
  drm/i915/psr: Add Early Transport status boolean into intel_psr
  drm/i915/psr: Get Early Transport status in intel_psr_pipe_get_config
  drm/i915/psr: Use enable boolean from intel_crtc_state for Early
    Transport
  drm/i915/psr: Allow setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE via
    debugfs
  drm/i915/display: Take panel replay into account in vsc sdp unpacking
  drm/i915/display: Skip Panel Replay on pipe comparison if no active
    planes
  drm/i915/psr: Write also AUX Less Wake lines into ALPM_CTL
  drm/i915/display: Selective fetch Y position on Region Early Transport

 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++-
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 25 +++++++++++++------
 .../drm/i915/display/skl_universal_plane.c    |  6 ++++-
 5 files changed, 31 insertions(+), 11 deletions(-)

-- 
2.34.1

