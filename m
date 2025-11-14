Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF842C5C8F1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2692E10E238;
	Fri, 14 Nov 2025 10:26:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HmMWNtb0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F7110E238;
 Fri, 14 Nov 2025 10:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116015; x=1794652015;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zEc3c9s4GdzqPhCT4F4nARFT1u4wIZqlFLT9QRosYng=;
 b=HmMWNtb0k7mROSb5dMyMTw7HGxjb9zQPfm6xmFcB0DtmINk+C9xKf33W
 u6XzijtMnkpsRNVXmQX2lWeZwPAfXHFnUxvlQTRnbNlW06G7JwXvFIfgD
 HikMemt54bX84x4szQBLNk0uSh6hOvvCFc0gb+n4G9Njig/AZl9f7UwG7
 U6h9Y4n1exNqaXJ+zhrEUeQu2fyb4LFtzwZIoKsdD/Gc0WHAX1YEgjoM5
 WLZpslkovBY4eHBsl8FopWEyJaxoNuxnN2+ae2GTgvw6WsVGnA+bEro8L
 hcB8eKlcV2vHqDBAVzeQI5efw5NfEj1TsrIiO6WmD5pPcxRt7loVtFdVv A==;
X-CSE-ConnectionGUID: QkZ1u8ppQpKFPyKB2bSAiA==
X-CSE-MsgGUID: iZreOjq1REyIMkZpeTrRLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="87855743"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="87855743"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:26:54 -0800
X-CSE-ConnectionGUID: HIHvUEDBTn+lHDpotb5hxA==
X-CSE-MsgGUID: G55/NhB/R9qWhZSXwfLXIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189041630"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:26:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/10] drm/i915: call irq and rps through the parent interface
Date: Fri, 14 Nov 2025 12:26:39 +0200
Message-ID: <cover.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Join series [1] and [2] together, converging on having the
intel_parent.[ch] wrappers. Also added a couple more patches for
individual functions in the interface.

[1] https://lore.kernel.org/r/cover.1762846363.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/cover.1762440096.git.jani.nikula@intel.com

Jani Nikula (10):
  drm/{i915,xe}/display: duplicate gen2 irq/error init/reset in display
    irq
  drm/i915/display: convert the display irq interfaces to struct
    intel_display
  drm/{i915,xe}/display: move irq calls to parent interface
  drm/i915: add .vgpu_active to parent interface
  drm/i915: add .fence_support_legacy to parent interface
  drm/i915/rps: store struct dma_fence in struct wait_rps_boost
  drm/i915/rps: call RPS functions via the parent interface
  drm/i915/rps: postpone i915 fence check to boost
  drm/i915: add .fence_priority_display to parent interface
  drm/xe/rps: build RPS as part of xe

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 191 +++++++++---------
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 .../gpu/drm/i915/display/intel_display_rps.c  |  34 ++--
 .../gpu/drm/i915/display/intel_display_rps.h  |  21 --
 drivers/gpu/drm/i915/display/intel_fbc.c      |  13 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   6 +-
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   1 -
 drivers/gpu/drm/i915/display/intel_parent.c   |  72 +++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  26 +++
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   6 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |   5 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  39 ++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |   2 +
 drivers/gpu/drm/i915/i915_driver.c            |  22 ++
 drivers/gpu/drm/i915/i915_irq.c               |  16 ++
 drivers/gpu/drm/i915/i915_irq.h               |   2 +
 drivers/gpu/drm/xe/Makefile                   |   6 +-
 .../compat-i915-headers/gem/i915_gem_object.h |  13 --
 .../compat-i915-headers/gt/intel_gt_types.h   |  11 -
 .../gpu/drm/xe/compat-i915-headers/i915_irq.h |   6 -
 .../drm/xe/compat-i915-headers/i915_vgpu.h    |  18 --
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  85 --------
 drivers/gpu/drm/xe/display/xe_display.c       |  18 ++
 include/drm/intel/display_parent_interface.h  |  27 +++
 28 files changed, 360 insertions(+), 313 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_parent.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_parent.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
 delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_irq.c

-- 
2.47.3

