Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAEDCCF771
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 11:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B1A10EF22;
	Fri, 19 Dec 2025 10:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5vfe4AE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9CB10EF21;
 Fri, 19 Dec 2025 10:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766141442; x=1797677442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dEGZoNr8Nh758uXoAXYw98eW6IhUy/tksXhQU0yXqe8=;
 b=Q5vfe4AEOVokKgzJPczwXpFu6NK5rwntxgAkSCwEDQjTrFv49z5MkLq8
 hk3jhnAnrayJCy634uUnc5nwnO5CUPIpJkzKBZynD7atHdTdvBsc6YnD6
 rxcwJydfaU4JvqZoL2EKYl+XeH7t/PfmkKlXaAmjgaJ8u6d2xWOusdVbh
 vqWNVTYFJJ0gj7oz9vd0rgztD/1kcmUotGE50QDjQU+G2AI2yW95ld2pC
 2UCdxTKyFBLgBLDg0CQ9eP7rk6LlPDbTMt6GcKxE4iHakJA3nVtKyi9+q
 t8tIzwQ1l9o+97WtoxaWsRn30grhFmXI0OBXtvwB6s6Cah7DrhH7fWCDM A==;
X-CSE-ConnectionGUID: I3StSM3MQQi98eNIyZvMNQ==
X-CSE-MsgGUID: kk/OHznMSTGFhDCc/Tt/lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="71962299"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="71962299"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:50:42 -0800
X-CSE-ConnectionGUID: xoxNGp8OT222pH+bipLEKw==
X-CSE-MsgGUID: NhDbzGLGQiqoDpzJxe0Exg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="199089802"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:50:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 0/2] drm/i915/display: reduce i915_drv.h usage
Date: Fri, 19 Dec 2025 12:50:32 +0200
Message-ID: <cover.1766141244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

This helps reduce the dependencies on i915_drv.h, better highlighting
what's left and what needs to be addressed.

Ville, I hope this does not make your life more difficult with the
uncore conversions. If it does, we can drop this.

BR,
Jani.


Cc: Ville Syrjala <ville.syrjala@linux.intel.com>

Jani Nikula (2):
  drm/xe/compat: convert uncore macros to static inlines
  drm/i915/display: use to_intel_uncore() to avoid i915_drv.h

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 17 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c       | 17 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    |  8 ++--
 drivers/gpu/drm/i915/display/intel_dram.c     | 39 +++++++++----------
 drivers/gpu/drm/i915/display/intel_rom.c      |  8 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c   | 13 +++----
 .../drm/xe/compat-i915-headers/intel_uncore.h | 17 ++++++--
 8 files changed, 66 insertions(+), 57 deletions(-)

-- 
2.47.3

