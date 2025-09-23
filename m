Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA74B9642C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104B010E626;
	Tue, 23 Sep 2025 14:31:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hNOulHVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921BD10E626;
 Tue, 23 Sep 2025 14:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637876; x=1790173876;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2xBKLxlFB7uTIN//WNNBTjCqunZJo/MYGj0EUnK2uQw=;
 b=hNOulHVmJKzwdUIla3K9818L+3BG5/0BejkWyVLdphD0/74pdz8VCqlr
 LXwFdq/2lYl6ZL4VskdPMfHFQ5gVuWGMUB8Bu6x948liybWMMargOrXgI
 VH1oUL5DpyQ+Q7e63FeBO2V84kLIMUenPTXxDYpdyqnArmCEGSm0ggTYj
 M8kqFwR34yBNb8/tHPuyaMAorRBnhRZNrkyRA9fuGyPWAVOQBDfSljN/B
 /3i/r4elXSy7zxt/r8zwfHKAMpaS7NPIVsRu1KlxTcEBiNMZ1KbMO0uAJ
 aXfsNVh8HIZ1SHGwd09Cl6eK+GfigzVfNxs/ShPm8T84YVlrFMbJCtjZM A==;
X-CSE-ConnectionGUID: JRmgiYlCRBypIe+J3iSv9A==
X-CSE-MsgGUID: 4yXM8Wd/Ra6YOSu2PNt1Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60836092"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60836092"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:15 -0700
X-CSE-ConnectionGUID: 9usPO2PwSOyZjg+gQti1vg==
X-CSE-MsgGUID: SfpupkS6QVq8ihcmASgFMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176720660"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/5] drm/i915/irq: display irq refactoring
Date: Tue, 23 Sep 2025 17:31:03 +0300
Message-ID: <cover.1758637773.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

v2 of [1], with patch 5 dropped and only patch 6 changed.

[1] https://lore.kernel.org/r/cover.1758275448.git.jani.nikula@intel.com

Jani Nikula (5):
  drm/i915/irq: drop intel_psr_regs.h include
  drm/i915/irq: initialize gen2_imr_mask in terms of enable_mask
  drm/i915/irq: abstract i9xx_display_irq_enable_mask()
  drm/i915/irq: move check for HAS_HOTPLUG() inside i9xx_hpd_irq_ack()
  drm/i915/irq: split ILK display irq handling

 .../gpu/drm/i915/display/intel_display_irq.c  | 67 +++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  6 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  3 +
 drivers/gpu/drm/i915/i915_irq.c               | 77 ++++---------------
 4 files changed, 89 insertions(+), 64 deletions(-)

-- 
2.47.3

