Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EADE384E3CB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC63D10E884;
	Thu,  8 Feb 2024 15:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iI6fUKmK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B2310E883
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405444; x=1738941444;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1R9NVdGqswSqNPr+Ni47cZkvvA54c3rgYxcBJJEmi6c=;
 b=iI6fUKmKbGIBcBgcgHajNibL/xpYwPalXBZ9rc0KQ9rKsDoLL8s93aNH
 XR0dZpxvjo8xpf39xDEKfX37n8UKjleJzZkwruJ/2RBtdmavvkVPy24yh
 1BTAT6Qhn4ZZLiQhTxsvI7J9uFhuurDDHy+EeXSAZ2jtO8YH/SxWvY/K1
 3vrp7v/+xA12oS+rsP3YoB3uMoW4TeoOqO9Ju0/9PUfXungQ+xpObce4P
 Ojeja2uOVZJMAx+BevJTsxUncHWHxPL933mDzsdV5wWTjm8z5U4ntUo/H
 YGXm4M08BxHt7y/PErophLnAeiPn8+GPoGIr9kwHg+cyQOtg0zwCqOLLO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219133"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219133"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863644"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863644"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/13] drm/i915: drm_dbg_kms() conversions and cleanups
Date: Thu,  8 Feb 2024 17:17:07 +0200
Message-ID: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Convert a bunch of lingering DRM_DEBUG_KMS() & co. to the
per-device drm_dbg_kms() variants. The stuff remining after this
are DVO encoder drivers, DMI match functions, and ACPI/DSM stuff.

And also include a bit of other house cleaning I spotted.

Ville Syrjälä (13):
  drm/i915: Correct for_each_old_global_obj_in_state() arguments
  drm/i915/sdvo: Convert to per-device debugs
  drm/i915/sdvo: Fix up code alignment
  drm/i915/color: Use per-device debugs
  drm/i915/fb: Use per-device debugs
  drm/i915/bios: Switch to kms debugs
  drm/i915/bios: Use per-device debugs for VBT related stuff
  drm/i915/hdcp: Use per-device debugs
  drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()
  drm/i915/wm: Use per-device debugs in pre-ilk wm code
  drm/i915/wm: Use per-device debugs ilk wm code
  drm/i915/dvo/ns2501: Nuke pointless casts
  drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)

 drivers/gpu/drm/i915/display/dvo_ch7017.c     |   2 +-
 drivers/gpu/drm/i915/display/dvo_ch7xxx.c     |   2 +-
 drivers/gpu/drm/i915/display/dvo_ivch.c       |   2 +-
 drivers/gpu/drm/i915/display/dvo_ns2501.c     |   6 +-
 drivers/gpu/drm/i915/display/dvo_sil164.c     |   2 +-
 drivers/gpu/drm/i915/display/dvo_tfp410.c     |   2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  81 +++----
 drivers/gpu/drm/i915/display/intel_bios.c     |  73 +++---
 drivers/gpu/drm/i915/display/intel_bios.h     |   3 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |   7 +-
 .../gpu/drm/i915/display/intel_global_state.h |   4 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   6 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 217 ++++++++++--------
 15 files changed, 233 insertions(+), 197 deletions(-)

-- 
2.43.0

