Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FD4917AB7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 10:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C2610E7B7;
	Wed, 26 Jun 2024 08:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8xydsjg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E521710E7B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 08:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719389926; x=1750925926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qRzmU/vW1nxd0LeNcCTb4ZA5M4bB88+n2pnVCS58bPY=;
 b=f8xydsjgCIuYAwBC5/grgYJDIfdbW8lIL3N2+EzqzvxfoY2TLPH/s+vv
 DYMoQB5xF4AZ+GJMgTj6KvpewYJKFo8fvJ+hR/EqvSNjsZotoXbx/jYsR
 3MpiIbNIp773qq105i4seHHlX/fpEWsL9D+/46SrdCkyNEm/b/BdXHdCP
 Kpd2/zf/SiKSpqGFHsf/sYqB/g6kF/pmvyIPEU1hc7QqSfnQWeg0//vMF
 Epm35NhdHXjpO5qkFV5+YW6sOFv/w+smKFsx7E+k7tUBsPQr1qg3kLv8P
 7L62ALq2HiFRJZtvO3CTaYtotHBPP+jGiNxLvz4maeeJfPjI6R+l47+6y A==;
X-CSE-ConnectionGUID: pP99O1yITPW7SkH1rRazOw==
X-CSE-MsgGUID: wtGaF1FlQUCWtoRM72VKIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20256525"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="20256525"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 01:18:45 -0700
X-CSE-ConnectionGUID: qgQmwCNvT8Cn5lbC4TLDIw==
X-CSE-MsgGUID: ZkkFwbyAQPqrKg1DdBoZEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="75134406"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa001.fm.intel.com with ESMTP; 26 Jun 2024 01:18:43 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] Ultrajoiner basic functionality series
Date: Wed, 26 Jun 2024 11:18:38 +0300
Message-Id: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.

Stanislav Lisovskiy (4):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Implement hw state readout for ultrajoiner
  drm/i915: Compute config and mode valid changes for ultrajoiner
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 316 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 117 +++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  18 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  54 +--
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  14 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  29 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 12 files changed, 469 insertions(+), 125 deletions(-)

-- 
2.37.3

