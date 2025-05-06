Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC7AAAC524
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B2F10E68C;
	Tue,  6 May 2025 13:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJGEPPcn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A58C10E68C;
 Tue,  6 May 2025 13:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536816; x=1778072816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n7X9mh4Fnd0OKS/4YoIeMCfaFqvw/kPfF2RDPEl52ow=;
 b=HJGEPPcnnnJlcOQKqPmAo+RlJqZjiLP7bo23bU2JtQNM3TyQVnRvdhDL
 0boVkAnsiObKQ8fiaLdnKqy/8DnT/Ymf2jO4E+isMYFyi8OhA7GMZ9Br0
 JGaCOtMZ1RGtWThv7XBHxXxY2xUAJ1CZZsOFQoQ2kaAY/MvdoudBOKjkj
 Pgy7Juhl7g35NZ70yvPLUlcx6Tr5r6a4bdrFPfW4fM0EK8Qlazc+kJC6q
 e9lph6egxgfWEekivqkqcOashNJnGxj7T2O7zTzlST5Xf7yHJtnfSzh/8
 qRNODnLId3zqISq1m6GPV3lRIeTp0SnDlfALGcdhRWZX9Z9KSBXlTWS8H Q==;
X-CSE-ConnectionGUID: c4BeoOiySLy41CiqccP/cw==
X-CSE-MsgGUID: 8qGG1J+ZRx+mQKrHW1rbpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112222"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112222"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:06:55 -0700
X-CSE-ConnectionGUID: CahX045WRNiDkyJeV7bcWQ==
X-CSE-MsgGUID: fk1xH/ykTg+OvnHCVkWJPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588219"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:06:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/8] drm/i915: irq_lock refactoring, move to display
Date: Tue,  6 May 2025 16:06:42 +0300
Message-Id: <cover.1746536745.git.jani.nikula@intel.com>
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

Refactor some irq/rps code to help move i915->irq_lock to
display->irq.lock, and then do the move.

Jani Nikula (8):
  drm/i915/irq: move locking inside vlv_display_irq_reset()
  drm/i915/irq: move locking inside
    valleyview_{enable,disable}_display_irqs()
  drm/i915/irq: move locking inside vlv_display_irq_postinstall()
  drm/i915/irq: split out i915_display_irq_postinstall()
  drm/i915/irq: split out i965_display_irq_postinstall()
  drm/i915/irq: make i915_enable_asle_pipestat() static
  drm/i915/rps: refactor display rps support
  drm/i915/irq: move i915->irq_lock to display->irq.lock

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  43 +++--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 153 ++++++++++--------
 .../gpu/drm/i915/display/intel_display_irq.h  |   3 +-
 .../i915/display/intel_display_power_well.c   |   5 -
 .../gpu/drm/i915/display/intel_display_rps.c  |  23 +++
 .../gpu/drm/i915/display/intel_display_rps.h  |  24 +++
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   9 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  44 ++---
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 129 ++++++---------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  14 +-
 .../drm/i915/display/skl_universal_plane.c    |  10 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  10 +-
 drivers/gpu/drm/i915/i915_driver.c            |   1 -
 drivers/gpu/drm/i915/i915_drv.h               |   2 -
 drivers/gpu/drm/i915/i915_irq.c               |  27 +---
 drivers/gpu/drm/xe/Makefile                   |   1 -
 .../drm/xe/compat-i915-headers/gt/intel_rps.h |  11 --
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  11 --
 drivers/gpu/drm/xe/display/xe_display_rps.c   |  17 --
 23 files changed, 260 insertions(+), 314 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_rps.h
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rps.c

-- 
2.39.5

