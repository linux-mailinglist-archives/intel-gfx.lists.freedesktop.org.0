Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15668CD514
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FCF10E399;
	Thu, 23 May 2024 13:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nd6bbwVD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CED410E374
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716472458; x=1748008458;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zY/6Ik5bjaAA2ojHeuym6Is3lIVSk8rfVbn7MRhD4Rk=;
 b=Nd6bbwVDiX4R9tJgnqfz4tmalkJaUVwPsItmj+PbdjNfiZ+DbRhpXgVT
 RTnfEzLeeXZPFikoFeBCDMzxAZY4NFmIn2F+qn3BdhCudx4X0nNrQ/PwY
 F1LKiLP7EUHPkza8yLqLV7iJqkdX66STOvBzFFBxLYsAYOKAQKGEdi39t
 onaopNxhml/07943WrfK1GcHg5Zv1CoLKq4r7GlzqICKAGxkQYyg/KLqa
 HpnzS7qsLJYze1s7r8wud0YT0nNRCmx+Xp13uhThqkAKaGb45L59O1uzg
 dd61eti+/pF/+3hTqJbjW+oy92MMg4bSMdndEPk56NiOae4EPQoeAwEEu w==;
X-CSE-ConnectionGUID: U4Qx+IlOTIWOf08DsOZwvg==
X-CSE-MsgGUID: Vca0FqOMQRWyg1lKQFsffg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16576944"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16576944"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:54:17 -0700
X-CSE-ConnectionGUID: eS/HWUocQ1Gr4ZdQwV6CcQ==
X-CSE-MsgGUID: tP6nzYCLRdqw7M4/bf442A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38143475"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa003.fm.intel.com with ESMTP; 23 May 2024 06:54:15 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 0/2] drm/i915/display: Add comparison for pipe config for
 MTL+ >
Date: Thu, 23 May 2024 16:46:47 +0300
Message-Id: <20240523134649.31452-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently, we may bump into pll mismatch errors during the
state verification stage. This happens when we try to use
fastset instead of full modeset. Hence, we would need to add
a check for pipe configuration to ensure that the sw and the
hw configuration will match. In case of hw and sw mismatch,
we would need to disable fastset and use full modeset instead.

However, first we need to revert the patch that disables fastset
for C10.

v2: Fix C10 error on PLL comparison (BAT)
    Use memcmp instead of fixed loops for pll config
    comparison (Jani)
    Clean up and use intel_cx0pll_dump_hw_state() to dump
    pll information (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (2):
  drm/i915/display: Revert "drm/i915/display: Skip C10 state
    verification in case of fastset"
  drm/i915/display: Add compare config for MTL+ platforms

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 80 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  8 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 33 ++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 4 files changed, 109 insertions(+), 13 deletions(-)

-- 
2.34.1

