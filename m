Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF298C77FD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BD610ED2A;
	Thu, 16 May 2024 13:56:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0H9hHmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B389910ED26
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867786; x=1747403786;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dm3JgwF6cS+/C+NkenG1YomTTNkk7EZTU75/aPct19Q=;
 b=D0H9hHmwyARWa2N8i0H7X7cqUEoWfl6cHxQkFGsHHXHtjT5dgv/8iSIX
 rUm8swZkgNqx/Z1HqOtcHbeh+zcv8VmAE41xEMwEMGW+Yxkd1fEtKAUwO
 8RrcxkRAXjwnhZcWm8rOSpZP8GHxqzLqVNtEO3/ICnybdOUrEocIQhWKz
 iR90NjrCc6hrJgoVpMH/xsVs0oMumcQ6/c8sWh3lLDpj4vZ2X8ifseoHe
 8zxFb6/zQBR0MXr8sRJeGZVCu8YfNawqCTD27jZXKA9JKLSMDO+LMfmMo
 L5zGffzlFNuTIOnpa70O2UEpmBKsG7hvtgpxe4S6iX8j33Ol8OXldgEp1 g==;
X-CSE-ConnectionGUID: ccRJT50ySwqxzBu/ISr9WQ==
X-CSE-MsgGUID: JMYtlrgTQzi0pW0vL0XBkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357169"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357169"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:25 -0700
X-CSE-ConnectionGUID: vamWmjW1TQKvbb41LAY6TQ==
X-CSE-MsgGUID: D6HRKdkqQSGiX1gTimeHzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435041"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/13] drm/i915: Plane register cleanups
Date: Thu, 16 May 2024 16:56:09 +0300
Message-ID: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bunch of cleanup mostly around plane registers.

Ville Syrjälä (13):
  drm/i915: Add skl+ plane name aliases to enum plane_id
  drm/i915: Clean up the cursor register defines
  drm/i915: Add separate define for SEL_FETCH_CUR_CTL()
  drm/i915: Simplify PIPESRC_ERLY_TPT definition
  drm/i915: Rename selective fetch plane registers
  drm/i915: Define SEL_FETCH_PLANE registers via PICK_EVEN_2RANGES()
  drm/i915: Add separate defines for cursor WM/DDB register bits
  drm/i915: Move PIPEGCMAX to intel_color_regs.h
  drm/i915: Extract i9xx_plane_regs.h
  drm/i915: Polish pre-skl primary plane registers
  drm/i915: Document a few pre-skl primary plane platform dependencies
  drm/i915: Polish sprite plane register definitions
  drm/i915: Document which platforms use which sprite registers

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   1 +
 .../gpu/drm/i915/display/i9xx_plane_regs.h    | 110 ++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
 drivers/gpu/drm/i915/display/intel_color.c    |   2 +-
 .../gpu/drm/i915/display/intel_color_regs.h   |   5 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  42 ++-
 .../gpu/drm/i915/display/intel_cursor_regs.h  |  66 +++--
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_limits.h   |  21 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  49 +---
 .../gpu/drm/i915/display/intel_sprite_regs.h  | 242 ++++++++++--------
 .../gpu/drm/i915/display/intel_sprite_uapi.c  |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |  35 ++-
 .../drm/i915/display/skl_universal_plane.h    |   3 -
 .../i915/display/skl_universal_plane_regs.h   |  68 +++++
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  91 +------
 drivers/gpu/drm/i915/intel_clock_gating.c     |   1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 25 files changed, 449 insertions(+), 313 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane_regs.h

-- 
2.44.1

