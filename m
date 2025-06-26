Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC4AEA497
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB6310E8D9;
	Thu, 26 Jun 2025 17:43:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m804rVFu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1503E10E8D4;
 Thu, 26 Jun 2025 17:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959794; x=1782495794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+27lFIZKup/4iJbhBpb7uySkCBE9SfNuVMGmyBjizqs=;
 b=m804rVFuI8VFGLrHUU9mptsOSHTbHIvjTnYLGcUYj1bwqllJc2TwzEdd
 rJUVN7XUWD0k+P7LFcVv4kPM1CgVLgMzOS2qjBMJTxTNGCWjWswID9JIx
 izRxS6t9QTekGOoGdutlp3D+KnwZnfSt3UoIh/pLvDC34raweMRdWgXK7
 xt3Sjm+giGtOZbRFu1mVH9QLYPXhVOwOlPQLSD0sWZ6vNgj+UTf9H+ip8
 BBMLOgmGcE1XQ8dpfoRHRPxmxadt70obZYNOZV+eGYXEUZSVAo+DlVHSM
 VPlKBOydkO/9UJJFabewhletZZAlcXJBd0lgbOTj2DFdgg0SETbeQ3Xqe A==;
X-CSE-ConnectionGUID: O4nEtMssRhqEgyCCxUXoag==
X-CSE-MsgGUID: 6QaowGAPSAWAL8Rz94b1Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53141068"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53141068"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:13 -0700
X-CSE-ConnectionGUID: Vcgj/VjFQWOIkru9H9IjOg==
X-CSE-MsgGUID: iNHYpKupS5iYq1emyPRDDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152207955"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/8] drm/i915/display: use intel_de_wait_*() functions
Date: Thu, 26 Jun 2025 20:42:58 +0300
Message-Id: <cover.1750959689.git.jani.nikula@intel.com>
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

We have intel_de_wait_*() functions for waiting for register bits to
reach a value. Use them instead of depending on the i915 helpers from
i915_utils.h.

Jani Nikula (8):
  drm/i915/hdmi: use intel_de_wait_for_set() instead of wait_for()
  drm/i915/ddi: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/dpll: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/cdclk: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/hdcp: use intel_de_wait_for_set() instead of wait_for()
  drm/i915/power: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/pch: use intel_de_wait_custom() instead of wait_for_us()
  drm/i915/dsi: use intel_de_wait_custom() instead of wait_for_us()

 drivers/gpu/drm/i915/display/icl_dsi.c        | 41 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 12 ++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 14 ++++++-
 .../drm/i915/display/intel_display_power.c    | 14 +++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 ++++++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 +--
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 14 +++++--
 8 files changed, 91 insertions(+), 40 deletions(-)

-- 
2.39.5

