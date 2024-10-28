Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E49B3AAF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C298B10E550;
	Mon, 28 Oct 2024 19:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYDGn5cO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BD110E552;
 Mon, 28 Oct 2024 19:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144938; x=1761680938;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QwtGdw1nsi+zBHDaDuhLnrBrl6I51vLxEekfeHJ0byw=;
 b=IYDGn5cOFvVnXLlnSuBin3dpUfNGkGBwXGJyCPXsCfxTbI0t/XomdkRY
 xE+mb1d454XzaMv512rgxlfIo5wB1yP1j/4Bx4/7uV631horP9ih0l6tl
 ZDv2GFCk6RQ20oicol/6wb9l2Mhf1bfGIppNBkP/ruRDmI1iUpYNdR07A
 fcCaM1rG9XJ8//yxPahEOQ+0INBdAiOQnOf6sUxJjwd85CBtJup/mrVwt
 5odxB4yt0lAsLtUSSvPjbKwOzoDELhnvImPmb1tLtSLgiSLxbi7xQND9p
 YZ4e1r9C+XW0U4ZkivoMuW8PBFOXie2rRd90ob/T6gLdHuBpLcDn02b9f w==;
X-CSE-ConnectionGUID: euYVar2KQXydB+BXCU7DTw==
X-CSE-MsgGUID: FjkkS1AMQSCqNrBAMICZAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857766"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857766"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:48:57 -0700
X-CSE-ConnectionGUID: Zt4cW8ztR2+c3p+Xn+2U/A==
X-CSE-MsgGUID: Y3YDZ3ElQX2BnfPRGi3iLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81780119"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:48:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 00/16] drm/i915/display: platform identification
 with display->platform.<platform>
Date: Mon, 28 Oct 2024 21:48:33 +0200
Message-Id: <cover.1730144869.git.jani.nikula@intel.com>
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

Just resending [1] because I never got the CI logs for it.

[1] https://lore.kernel.org/r/cover.1729773149.git.jani.nikula@intel.com

Jani Nikula (16):
  drm/i915/display: reindent subplatform initialization
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform enums
  drm/i915/display: convert display platforms to lower case
  drm/i915/display: add display platforms structure with platform
    members
  drm/i915/display: add platform member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary
  drm/i915/display: add platform group for g4x
  drm/i915/display: add subplatform group for HSW/BDW ULT
  drm/i915/bios: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/pps: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/tv: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vga: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vblank: drop unnecessary i915 local variable
  drm/i915/vblank: use display->platform.<platform> instead of
    IS_<PLATFORM>()

 drivers/gpu/drm/i915/display/intel_bios.c     |  40 +--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   | 269 +++++++++++++-----
 .../drm/i915/display/intel_display_device.h   | 185 ++++++------
 drivers/gpu/drm/i915/display/intel_pps.c      |  47 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
 8 files changed, 340 insertions(+), 229 deletions(-)

-- 
2.39.5

