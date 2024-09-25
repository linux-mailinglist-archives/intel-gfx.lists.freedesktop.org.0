Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533E59852E8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561F910E10C;
	Wed, 25 Sep 2024 06:30:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9GgoT0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF8E10E10C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 06:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245809; x=1758781809;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JuKT3+nlGFYi2Wkk+JnBKBbhOYRSoCq4yElpq8QSUL8=;
 b=P9GgoT0F2wT71PI+A/6N/B5nlO9MmS03u3XxuEJFaveJJxMycxXE9bLB
 yqfTK97ui++vZ32Ua3Fex4/ZP4yuZZeZiAD6lUvxhcAFO5bmDeuqTk6jY
 4ht49YIyOmogXo2JNAQMFcDipYRB65j5lyEymMuH0mun6TyaHaRgnom9w
 o27jxGnqL9a4Ji6sPoB3ZJSDSFHQ/0XXXDREtq7pVttuuRE/mbYDaE71c
 3dcJYIVKLD1nj2aV7QEvV/NV0pdmrrRgdg77FT1id6bX6fXdAvfMfg8ko
 sCvOSO3ptq6OX8c67jIF0jnn63ZoXLQH8vtxH5Swq8LBBVl4KrlN85VDG A==;
X-CSE-ConnectionGUID: oOcG6LOqS8aZirx0hd+NOg==
X-CSE-MsgGUID: dO6x8YuKR0qaeerFEE4HWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43794744"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="43794744"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:30:09 -0700
X-CSE-ConnectionGUID: LPw+jhGFSz+0ZrjPctGE6Q==
X-CSE-MsgGUID: suDwoNrSRsW46VB9LzCfhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="94989492"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 24 Sep 2024 23:30:08 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/3]  Consider joiner calculation for panel fitting
Date: Wed, 25 Sep 2024 12:00:29 +0530
Message-Id: <20240925063032.2311796-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

There is an issue when pch_pfit and joiner gets enabled together.
Moves the panel_fitting to later stage after pipe_src width is adjusted for
joiner. Replace adjusted_mode with pipe_mode in pch_panel_fitting function 
so that correct value of pipe_src is used once joiner calculation are done.
Also decouple the current intel_panel_fitting into pch and gmch panel
fitting function.

Nemesa Garg (3):
  drm/i915/display: Modify panel_fitting code for joiner
  drm/i915/display: Add gmch_panel_fitting in all encoders
  drm/i915/display: Call panel_fitting from pipe_config

 drivers/gpu/drm/i915/display/icl_dsi.c       |  8 +--
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c      |  5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    |  8 +--
 drivers/gpu/drm/i915/display/intel_panel.c   | 52 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_panel.h   |  8 ++-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  8 +--
 8 files changed, 71 insertions(+), 42 deletions(-)

-- 
2.25.1

