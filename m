Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDE88B3604
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 12:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F5810EFC2;
	Fri, 26 Apr 2024 10:51:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C6VzClfw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CBF10EFC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 10:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714128703; x=1745664703;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WDEaiWt1LPXxiCbov5JTTTIaTOqQvwnjMIADirhgeBM=;
 b=C6VzClfwQ/BQxgqm7pu6kmCLTgdQqqrFj/2fHn2x3FPLzuKEPjrwJ0Xd
 fl2Enl5YSatjfMX4OU97z6a93EjQISgNHFhiyjcCr8hkSldqYsx7Q9Oxy
 F9GU7TAKaaMtc5hcqMHbM0768Uql3kz/QvwH/9MpmxL/fHXkMNNHU7bin
 FGGvz4hdCO1yLibd2BUresMKNkS8cSbJY/CZYaQ+pzceANH1F+h7LHCUB
 evbgF77/vm7QOZNmFXWv6hQwhcXDWVy6WCZMmyG+ialj65LYC8CJP0tVZ
 KzfxZnnhz0h37l+er1Kab6eQiHU+W0XzPEBivDn59kKwyisAI5vO/lEtY A==;
X-CSE-ConnectionGUID: AOk2PUMQQaO8m0NMr/TKsQ==
X-CSE-MsgGUID: EivtVgSYQEynnLh8NzT6ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="20546285"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="20546285"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:42 -0700
X-CSE-ConnectionGUID: m5tduNhGQxaOtehvXh9fDg==
X-CSE-MsgGUID: sZ4BLvfoR/+4yOvUamBk2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="30200793"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/4] drm/i915: i915_reg.h cleanups
Date: Fri, 26 Apr 2024 13:51:33 +0300
Message-Id: <cover.1714128645.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v2 of https://lore.kernel.org/r/cover.1712933479.git.jani.nikula@intel.com

Jani Nikula (4):
  drm/i915/audio: move LPE audio regs to intel_audio_regs.h
  drm/i915/color: move palette registers to intel_color_regs.h
  drm/i915/display: split out intel_fbc_regs.h from i915_reg.h
  drm/i915/display: split out intel_sprite_regs.h from i915_reg.h

 .../gpu/drm/i915/display/intel_audio_regs.h   |  16 +
 .../gpu/drm/i915/display/intel_color_regs.h   |  30 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 120 +++++
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   1 +
 .../gpu/drm/i915/display/intel_sprite_regs.h  | 348 ++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   2 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   5 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 509 ------------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |   1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   2 +
 15 files changed, 528 insertions(+), 512 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbc_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_regs.h

-- 
2.39.2

