Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6541A38D57
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F2D10E21F;
	Mon, 17 Feb 2025 20:37:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFwQoKLn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF3310E21F;
 Mon, 17 Feb 2025 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739824654; x=1771360654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gP2fDNNQg1aParneC9w0//FWBSZg+6mhpMz+D0dj0Ug=;
 b=kFwQoKLndLDHHAn4WGe58yk2zq0nD/ZjBRHYP5limf6/A7RihM8gy1rM
 R9gliZoaX6mItKmYWfGKCyraem43KXVursEOG9SVGV44EemLb9W1ctEf9
 QDbxG6up9FUZwllKKXM+111g5eNuPfxmktyoXdW8Ox5vN9Adkqd/5fact
 4PoOD+DhXgfa36V/EGRtEe1/ArQzaqu9uOSLPOa8hqKbwinZ/XqCdU2Df
 C8WRJEwlzkSnocuZzNn38TqeIfAv7X1BHeHt+5bTWmD8NljDkvPi/aMnt
 DijvHL3ygUoh/vU0FmAdiDl6eWnlA26En0QgaX6qF283Cti+UVk3qlYOD g==;
X-CSE-ConnectionGUID: AP/nhaUSQeKJdIbOM0Mj0g==
X-CSE-MsgGUID: GdV+qTwWRjmGlYAPJT0csw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="58043187"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="58043187"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:34 -0800
X-CSE-ConnectionGUID: Z8t55oPeT5mB4MBwEZr5fg==
X-CSE-MsgGUID: qom1PahsRqGOG+CtL7liCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114853218"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:32 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 0/3] Improve type-safety on POWER_DOMAIN_*() macros
Date: Mon, 17 Feb 2025 17:34:25 -0300
Message-ID: <20250217203722.87152-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
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

Fix one issue[1] reported by the kernel test robot and also take this
opportunity to improve POWER_DOMAIN_*() macros by making them explicitly
return the expected enum type with patch #2 and then turning them into function
with #3.

Patch #3 could be squashed into #2, but I'll defer that to reviewers to provide
their input.

[1] https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/

Gustavo Sousa (3):
  drm/i915/display: Use explicit base values in POWER_DOMAIN_*() macros
  drm/i915/display: Make POWER_DOMAIN_*() always result in enum
    intel_display_power_domain
  drm/i915/display: Convert POWER_DOMAIN_*() to functions

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 39 ++++++++++++-------
 .../gpu/drm/i915/display/intel_display_irq.c  | 18 +++++----
 .../drm/i915/display/intel_display_power.c    | 21 ++++++++++
 .../drm/i915/display/intel_display_power.h    | 15 +++----
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  3 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 13 files changed, 82 insertions(+), 44 deletions(-)

-- 
2.48.1

