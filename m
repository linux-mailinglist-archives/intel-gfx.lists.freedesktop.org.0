Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74A189CB77
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06D1C10E179;
	Mon,  8 Apr 2024 18:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L3+MDQXv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B66210E179;
 Mon,  8 Apr 2024 18:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599729; x=1744135729;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GGKsBvNNyQ3MM8M6a8odybhgEb5urJqQta/+a6U5MJk=;
 b=L3+MDQXv5dixJlLCHSP3YNSduEghLE1fVro92LXBZQL2f+bddSeZfSVv
 wR5vYuardr211LhVDX/atzrQW3WCMJX55joPh1hkVv3qtQw/+ZxWA0Jwh
 kYdH/na+5wBiqFlUyESbUSO92GouKgCmEy+v8q3vIpT6u5u5VQpCbQQm+
 JwiCvHrBR8i8o8cJvmfq0M6CIDMF1R4+LmI9Ry47d4LduNqHxTThY0nB9
 cwma6zsVJzHVmB6URUqrOnnje53HlE50HPJZc1lG6QWEAxdPACPYInU4A
 xW+dL1igBVU5M0KAvPuTB64vSwQLsKfCN3lgrVspaOICRmsF0U6qY7WQX g==;
X-CSE-ConnectionGUID: eTKhikMKSKKQbTF3ShrD4w==
X-CSE-MsgGUID: p/AQJEHHSZS0BlnqIMeLog==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="19038610"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19038610"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:08:49 -0700
X-CSE-ConnectionGUID: hJ2ks7jVTBu2sPYNNUDEzA==
X-CSE-MsgGUID: TXXOWpKqQU+3VoX0PkyQQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="43144997"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:08:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 0/8] drm/i915: drm_i915_private and xe_device cleanups
Date: Mon,  8 Apr 2024 21:08:35 +0300
Message-Id: <cover.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Continue cleaning up the members from drm_i915_private and xe_device to
struct intel_display.

Jani Nikula (8):
  drm/i915/gt: drop display clock info from gt debugfs
  drm/i915: move skl_preferred_vco_freq to display substruct
  drm/i915: move max_dotclk_freq to display substruct
  drm/i915: move vblank_enabled to display substruct
  drm/i915: move display_irqs_enabled to display substruct
  drm/i915: move de_irq_mask to display substruct
  drm/i915: move pipestat_irq_mask to display substruct
  drm/xe/display: remove unused xe->enabled_irq_mask

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 23 ++++----
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../gpu/drm/i915/display/intel_display_core.h | 12 ++++
 .../gpu/drm/i915/display/intel_display_irq.c  | 57 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  4 --
 drivers/gpu/drm/i915/i915_drv.h               | 13 +----
 drivers/gpu/drm/i915/i915_irq.c               |  8 +--
 drivers/gpu/drm/xe/display/xe_display.c       |  1 -
 drivers/gpu/drm/xe/xe_device_types.h          | 15 +----
 19 files changed, 73 insertions(+), 88 deletions(-)

-- 
2.39.2

