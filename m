Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2442A6A955
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 16:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90EBA10E638;
	Thu, 20 Mar 2025 15:04:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BK9F0LuR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC32810E631;
 Thu, 20 Mar 2025 15:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483046; x=1774019046;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OKRWSOr6+XL30z8OGZq9emYZ/dVAswbiqOg+u26FQCE=;
 b=BK9F0LuRA/ZrsWmtWLdAxk4Xia/JsHemDD+HKTxdXPLnTU8maIqm7yx2
 2kSXY8mTBOk1zZC+kwW0MALFiahh+3PDI8WMVgN6gIIWa0nQzyqfiKCWk
 8xeg71ZxWa6HiJ9XHOQd0LlXrLRPsMoAvQHIxTmWCh2bDjtfC0Gm8Ou7I
 4lq0N9fcl1T+Svc3hSptlG1shw+BNZ1hyHMtAwF9XsXuq9kKPrvO5PEnr
 7UAw1p6IeA3BaYpoMRMjiuQ2/enpdMX/xCMauCpwICz8PXYu4e9L94c6o
 Lhd9wEgX0cuc4avcen/IbH/CxgEH6Nrlj7YGWj1IXp7XxYiPxTWrb5unM A==;
X-CSE-ConnectionGUID: DlHbrrEsS+e+AIZURDzjKA==
X-CSE-MsgGUID: 0fFCYOAeT92gicTzdUgYDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43852636"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43852636"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:05 -0700
X-CSE-ConnectionGUID: zRmR5M1HToWR4tOLA97aAA==
X-CSE-MsgGUID: hIS82sU7RFSIuRA2yFKSYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="123578172"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/6] drm/i915/display: add display specific runtime PM interface
Date: Thu, 20 Mar 2025 17:03:54 +0200
Message-Id: <cover.1742483007.git.jani.nikula@intel.com>
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

Resend for CI.

Jani Nikula (6):
  drm/i915/display: add display specific runtime PM wrappers
  drm/i915/display: conversions to with_intel_display_rpm()
  drm/i915/display: use display runtime PM interfaces for for atomic
    state
  drm/i915/display: convert to display runtime PM interfaces
  drm/i915/power: convert to display runtime PM interfaces
  drm/xe/compat: remove intel_runtime_pm.h

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |  8 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 .../drm/i915/display/intel_display_debugfs.c  | 17 ++---
 .../gpu/drm/i915/display/intel_display_irq.c  |  5 +-
 .../drm/i915/display/intel_display_power.c    | 63 +++++++--------
 .../i915/display/intel_display_power_well.c   |  4 +-
 .../gpu/drm/i915/display/intel_display_rpm.c  | 68 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rpm.h  | 37 +++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  9 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  7 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 17 +++--
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  7 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  8 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 11 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  5 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  8 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 17 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |  9 ++-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
 .../xe/compat-i915-headers/intel_runtime_pm.h | 76 -------------------
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 71 +++++++++++++++++
 27 files changed, 287 insertions(+), 193 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c

-- 
2.39.5

