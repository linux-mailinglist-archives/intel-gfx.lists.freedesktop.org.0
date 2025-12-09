Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B08CAFC53
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2E210E1D3;
	Tue,  9 Dec 2025 11:30:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hBQpxa9Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A3F10E1CE;
 Tue,  9 Dec 2025 11:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279847; x=1796815847;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UuDHtBQaOurG/1NsLfvkr0Q0Vgx85V5S6Hh0G/L9qpU=;
 b=hBQpxa9ZXQs9ZqteQhWezAYqhQ/JSZccT9XYhGQNm1tP1Z6XyQ2IHE09
 xkyNWSVt91D9xMhTx9FOAqEys6P8zZYhcLTlBlwdJ95zke4Bgu+Ub9/n0
 PW1ay4aOXRkW9/P0SNDjYPjVjkD/+feHqDCkWvi5gzg/VVr1FQtTi3bkB
 sk+XVAMGbqvquUvhEIBusRsSWTJGSZai5WXQsz1tyUvpGBFkVoT3fXPLA
 eRFEMuttAb84fgBwHACbHK8yHL9TEe361uE+T5aSn8yfJ37QI7aX3HWAR
 8AiTTOI6J0YE9qKQSs3612SHF99YKy3uHsyNhlplU+xsSj6Y4cwnBBF7h Q==;
X-CSE-ConnectionGUID: zwjBOdO1ROSp3KdS1+3jNA==
X-CSE-MsgGUID: VEbd5LbyRo+VnMUZ4xdSeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699620"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699620"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:47 -0800
X-CSE-ConnectionGUID: sRX4LQCzR5GIU7KLPX5zRg==
X-CSE-MsgGUID: uZNfpIoLRd2Sl8Pv4FmE8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213240"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:45 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [RFC PATCH 0/9] drm/i915/display: DC3CO support
Date: Tue,  9 Dec 2025 17:03:23 +0530
Message-ID: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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

Hi all,

This series introduces initial DC3CO DC state support,
replacing the existing PSR2-based TGL DC3CO design
(currently disabled).

The goal of this work is to move DC3CO handling out of PSR2-specific
code paths and into the core atomic display state flow, making the
behaviour consistent across PSR, ALPM and LOBF in line with the new
DC3CO design.

This series is posted as RFC to gather early feedback on the approach
before full integration.

Dibin Moolakadan Subrahmanian (9):
  drm/i915/display: Remove TGL DC3CO support
  drm/i915/display: Replace DC_STATE_EN_DC3CO with
    DC_STATE_EN_UPTO_DC3CO
  drm/i915/display: Add DC3CO enable/disable support
  drm/i915/display: Add DC3CO eligibility logic
  drm/i915/display: Track DC3CO enable source
  drm/i915/display: alpm enable DC3CO support
  drm/i915/display: psr enable DC3CO support
  drm/i915/display: Add intel_dc3co_can_enable() helper
  drm/i915/display: Add DC3CO disable handling for psr2

 drivers/gpu/drm/i915/display/intel_alpm.c     |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |  95 +++++++++
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +-
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../drm/i915/display/intel_display_power.c    |  10 +-
 .../drm/i915/display/intel_display_power.h    |  10 +
 .../i915/display/intel_display_power_well.c   |  35 ++--
 .../gpu/drm/i915/display/intel_display_regs.h |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 180 +++++-------------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 11 files changed, 187 insertions(+), 162 deletions(-)

-- 
2.43.0

