Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6523DA45B11
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4297110E8B2;
	Wed, 26 Feb 2025 10:01:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lvNuplSM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68F810E89E;
 Wed, 26 Feb 2025 10:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564085; x=1772100085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=phjNO4u1VflO884qEQQIaeIhhDrAgrrJRpekiTJPxfQ=;
 b=lvNuplSMwZGSWJKuSAKC1iJJRP87vd8H3L/ICc0pJOYSLArErOMMTdhJ
 lNQIM+rrW21TMWaauXMgZ3qoyHSb/QuxxuWihwu5+QeiTVC7Y7LwdDivY
 dk8eEoZpRNPgfS8/u5fb4gH+ZGQliHO+8PnjI6Us9TIEdNPNiEr6rNtMH
 VIu0zEhcr4aYvCgOI21GUWEMsQR8on8qUo6kCFWCrOVxqj2DW4SZoPOyl
 rGePKNvv7+9Y/q9gIjIehQCorhbAlWl4g/+ejTyiS6Kp8pSGHt0as3I+u
 dB87ggVdsoEYcnePagffz8DpMZUkRlzzAH0dXi9nkNf5/3WIqNhCpTs4C g==;
X-CSE-ConnectionGUID: hIjXCUCsQIKw+Iq4jMBvOQ==
X-CSE-MsgGUID: JybHZwQMSdSTjN4aYIMq7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58938400"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="58938400"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:24 -0800
X-CSE-ConnectionGUID: T8Wyu3i7TE2IcHnMsJCCPA==
X-CSE-MsgGUID: dD84b9pgRgyGUXu7YMKIaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117577869"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/pfit: panel fitter refactors
Date: Wed, 26 Feb 2025 12:01:06 +0200
Message-Id: <cover.1740564009.git.jani.nikula@intel.com>
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

Move pfit code to intel_pfit.c, convert to struct intel_display, split
out pfit registers to a separate file, etc.

Jani Nikula (5):
  drm/i915/pfit: rename intel_panel_fitting() to
    intel_pfit_compute_config()
  drm/i915/pfit: move ilk and i9xx pfit code to intel_pfit.[ch]
  drm/i915/pfit: fix comment style for moved comments
  drm/i915/pfit: convert moved code to struct intel_display
  drm/i915/pfit: split out intel_pfit_regs.h

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 165 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     | 168 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_pfit.h     |  10 +-
 .../gpu/drm/i915/display/intel_pfit_regs.h    |  79 ++++++++
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  70 --------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 16 files changed, 268 insertions(+), 242 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit_regs.h

-- 
2.39.5

