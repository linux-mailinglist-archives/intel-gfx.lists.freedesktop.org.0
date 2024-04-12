Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26B8A3535
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2454C10F64C;
	Fri, 12 Apr 2024 17:58:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bckyanre";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3883210F641
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944702; x=1744480702;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hZjOHXTVESEkwCkzDni2O0MmCCCwtPpukd7dnzhitzQ=;
 b=BckyanredlvdNOHn7mW45+OTu7aStm07QeYD62adp+VPOwZuK5LwoXqf
 n5GhWQMi5cv55W4nfR6bpPENpUNWTDREzumH0h/nYGGW9/DtqTLqiOlzG
 0h3x9YEvuJo0MFs7frBP0OAVsAzg3sur6JHJZTzyIFkphYAPrP0JAjfpW
 MghB+hxYNqMpsQUjeOfOGLwVDBvAgN8orPkKRX0BQ6oP+t1V0bLao6/Ne
 zAYmHmvh1/dKNtn/DfVeu3lkiakRd04TLO1G5nqLhexyA68efKx7iZKSd
 6vNlq332gk12VIjbDGmCjKJ3e1PQWhzkSvcrEGSF1uSe4+dJoJF+mCaXb Q==;
X-CSE-ConnectionGUID: E1UZRQuZS22ylb0AHGOpug==
X-CSE-MsgGUID: WbgvRhYtSUyqK4J7hMS4Iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586945"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586945"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:20 -0700
X-CSE-ConnectionGUID: BxhmRW6qQzW4ZSq9rmIFmw==
X-CSE-MsgGUID: NX2jH3GETVK2abD8gWl+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383002"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup
Date: Fri, 12 Apr 2024 20:58:10 +0300
Message-ID: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Start off with a bit of cleanup around the BXT/GLK DPIO
PHY registers, and finish off with per-lane vswing
programming.

Ville Syrjälä (8):
  drm/i915/dpio: Clean up bxt/glk PHY registers
  drm/i915/dpio: Add per-lane PHY TX register definitons for bxt/glk
  drm/i915/dpio: Extract bxt_dpio_phy_regs.h
  drm/i915/dpio: Introdude bxt_ddi_phy_rmw_grp()
  drm/i915/dpio: Use intel_de_rmw() for BXT DPIO latency optim setup
  drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
  drm/i915/dpio: Program bxt/glk PHY TX registers per-lane
  drm/i915: Enable per-lane DP drive settings for bxt/glk

 .../gpu/drm/i915/display/bxt_dpio_phy_regs.h  | 273 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  10 +-
 .../i915/display/intel_display_power_well.c   |  18 +-
 .../drm/i915/display/intel_dp_link_training.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 213 ++++++++------
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  48 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +-
 drivers/gpu/drm/i915/i915_reg.h               | 262 -----------------
 9 files changed, 432 insertions(+), 399 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h

-- 
2.43.2

