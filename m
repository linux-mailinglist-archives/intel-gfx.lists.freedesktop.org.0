Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DD08A318F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 16:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEA510F6A2;
	Fri, 12 Apr 2024 14:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrT37ynW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DAF10F6AD;
 Fri, 12 Apr 2024 14:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712933588; x=1744469588;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ox+FVc0yRS0XmO+OAmznu+ZJebfI23/XHrPqXGmTkMc=;
 b=nrT37ynWfm8d5L6K01cEmygy+mfauviXrovgvJisQak+CMYE6W2I0olh
 wx/27Gm2NfTGFZ/HC0cqv/vxuKueU28Z5bSliHke/rnG9ED/v2YM6Sawq
 L3QLXt3ApAYoPF8RA06ZiqmrYfMqvBpyydJI7BLfHrQPBAfatT4hDnk80
 dfKrKaEvD4YNEwyIbvxuIENF2aVGMkVCv3yLrYrIseFGOUWDvsO7kZ+EC
 BAVI6ZbNjifH0MpcEN5/HWgNOC6Pu9DsmxI1XEHLP/wHvoxgi2VGreTQk
 XEYNSxqriPJi8KLOUbHk91U5+Zelv5UNvU1NIdtHsuZ7YkZKLj9GlZQuX A==;
X-CSE-ConnectionGUID: QWsC2UuhTF+6wqQbL17s2A==
X-CSE-MsgGUID: V4+RfcNoTwKgJMYamovVoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8246537"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8246537"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:08 -0700
X-CSE-ConnectionGUID: XDZgub5wSXuMHu+en6EbJA==
X-CSE-MsgGUID: Mj58zgNZTPaDnyqc10ccqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21162183"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/6] drm/i915: i915_reg.h cleanups
Date: Fri, 12 Apr 2024 17:52:52 +0300
Message-Id: <cover.1712933479.git.jani.nikula@intel.com>
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

Continue the cleanup of i915_reg.h. Remove 1k lines from it this time
around.

Jani Nikula (6):
  drm/i915/audio: move LPE audio regs to intel_audio_regs.h
  drm/i915/color: move palette registers to intel_color_regs.h
  drm/i915/display: split out intel_fbc_regs.h from i915_reg.h
  drm/i915/display: split out intel_sprite_regs.h from i915_reg.h
  drm/i915/display: split out intel_dpio_regs.h from i915_reg.h
  drm/i915/display: split out bxt_phy_regs.h from i915_reg.h

 drivers/gpu/drm/i915/display/bxt_phy_regs.h   |  292 +++++
 .../gpu/drm/i915/display/intel_audio_regs.h   |   16 +
 .../gpu/drm/i915/display/intel_color_regs.h   |   30 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
 .../i915/display/intel_display_power_well.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |    2 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |    1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |    1 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h |  152 +++
 .../gpu/drm/i915/display/intel_lpe_audio.c    |    2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |    1 +
 .../gpu/drm/i915/display/intel_sprite_regs.h  |  349 +++++
 drivers/gpu/drm/i915/display/vlv_dpio_regs.h  |  352 +++++
 drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |    2 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |    1 +
 drivers/gpu/drm/i915/gvt/display.c            |    2 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |    5 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |    2 +
 drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 1154 -----------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |    1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    3 +
 24 files changed, 1217 insertions(+), 1156 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/bxt_phy_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbc_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/vlv_dpio_regs.h

-- 
2.39.2

