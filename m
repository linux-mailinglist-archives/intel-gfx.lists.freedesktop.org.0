Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8B4BDD1D8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1702410E6F4;
	Wed, 15 Oct 2025 07:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsIryb00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF57710E276;
 Wed, 15 Oct 2025 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760513733; x=1792049733;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rfmvwdGLjoLFu9zj9rb4kbFVM1Rc5b4WuJKzslXyPaw=;
 b=IsIryb00rUQz5kAN/GHfjLLjHJGpE9WgxdgPt3fRGybKSGYpG5CLulcP
 Fk1phQmIuFCl610o8vkcwlxjKDc+lqlZM8ljSUDjy5FvaQha4ZUYtm0Qa
 nkcayjNnZGY+i/Q8zqNgebzFml4135Yp6IDKv4rnlukSxAxzADvzKzHvk
 cTiordJHLCy7O9tVcJK+1JOlhfyjsV7Up3RqiGN820qdHXcbvnve1Aw1t
 2y4bNILVGU8Et2EM+OrZUgTjIGuuMtOOlgRudcKsO2z+4oSFsQv7qanG/
 lOx5lWON5wg76OlW/fhGCKws0MGawgvaD4UqfNrYpDcoOiiaVjRwXyuPP w==;
X-CSE-ConnectionGUID: QnOy6Ii/Q/K9YVJfqXx06g==
X-CSE-MsgGUID: OD/fkEnSRTSAs2T8hrPhrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62573604"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62573604"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:24 -0700
X-CSE-ConnectionGUID: pTjO3YCSSZCcnkprHV30FQ==
X-CSE-MsgGUID: DC6tDtARQ7ePDaZtfda+SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182882170"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/10] Preparatory patches for guardband optimization
Date: Wed, 15 Oct 2025 12:52:07 +0530
Message-ID: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
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

Handle few cases which will need changes when guardband will no longer
be matched to vblank length.
- Fix the vblank_start evaluation.
- Fix PSR wake latency checks wrt to guradband.

Rev 2: PSR went through some changes recently, rebase the patches on latest
PSR changes.

Rev 3: Address comments from Ville and Jouni:
- Add a patch to move intel_dpll_crtc_compute_clock() early in the
  function.
- Merge patch to adjust vblank_start and the readout changes.
- Fix agument to alpm_config_valid()
- Add documentation for retionale behind PSR late-stage configuration.

Rev 4:
- Update pipe_mode->vblank_start and actually merge patch to adjust
  vblank_start and readout changes.

Rev 5:
- Reset other psr flags based on features that are dropped.

Rev 6:
- Make the order of panel_replay/sel_update flags consistent in Patch#5
- Add a patch to have separate function for
  intel_psr_set_non_psr_pipes()
- Split patch to introduce intel_psr_compute_config_late() from patch to
  check final vblank. Move Wa_18037818876 and
  intel_psr_set_non_psr_pipes() to intel_psr_compute_config_late().

Ankit Nautiyal (10):
  drm/i915/vrr: Use crtc_vsync_start/end for computing
    vrr.vsync_start/end
  drm/i915/display: Move intel_dpll_crtc_compute_clock early
  drm/i915/vrr:
    s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
  drm/i915/vblank: Add helper to get correct vblank length
  drm/i915/psr: Consider SCL lines when validating vblank for wake
    latency
  drm/i915/psr: Introduce helper intel_psr_set_non_psr_pipes
  drm/i915/display: Introduce dp/psr_compute_config_late()
  drm/i915/psr: Check if final vblank is sufficient for PSR features
  drm/i915/display: Add vblank_start adjustment logic for always-on VRR
    TG
  drm/i915/display: Prepare for vblank_delay for LRR

 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   9 +
 drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 251 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  29 ++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
 11 files changed, 243 insertions(+), 89 deletions(-)

-- 
2.45.2

