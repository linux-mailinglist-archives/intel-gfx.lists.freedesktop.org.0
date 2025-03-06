Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE03A55115
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4298D10E9F5;
	Thu,  6 Mar 2025 16:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iATvEMBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F16410E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278866; x=1772814866;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+YOkBRb8+WEqWTgLXWEFvfXh/pZ4RrnDjd6vNWfzNGg=;
 b=iATvEMBeOwbOYH6eR9PGLa4XwNrb5TvIGE+WaCKtoicbzD/W9x11221B
 ixzIanSMm2P4MS+aV7VQo3TWe+zRD8uAhotm8wVcST+faBJgl7Mhcv4tw
 ry7uCdouT+tIt6USx+ZAQMqBi6TXQGTKaBkfgBC6aDdcJwy61IHcsOJUT
 S8OxprFbdxXiJQ5LeD+04+o8lVgoP7revm7JBPr4qfG7faRYZFYDDmbto
 rA8aC9UIgj+hvf+l9XtX/G3yVpqrSsLR9GZhhgxwV4ApUaxLHeV9Of8/Q
 w1K/H8kr7fbhUmzGo4+0HjedTjmeMgtumGRNAbEaDjwqwhqdb1QqJO5sO g==;
X-CSE-ConnectionGUID: +G1mer3TTXiB9mSmFQrSEw==
X-CSE-MsgGUID: 9HT4gf9/RzqPWpaqmAeNeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704263"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704263"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:24 -0800
X-CSE-ConnectionGUID: Gvf1iiR/SwqSlaUGYEhWDg==
X-CSE-MsgGUID: hU40IjjyQsKam44x2d1Zvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 00/18] drm/i915: cdclk/bw/dbuf readout/sanitation cleanup
Date: Thu,  6 Mar 2025 18:34:02 +0200
Message-ID: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

I want to clean up the messy interactions between
cdclk/bw/dbuf/etc. code. Start to making the state
handling during readout/sanitation a bit more sane.

v2: Rebase due to intel_display changes
    Rework the intel_bw_crtc_update() stuff a bit (Vinod)

Ville Syrjälä (18):
  drm/i915: Drop redundant shared_dpll=NULL assignments
  drm/i915: Don't clobber crtc_state->cpu_transcoder for inactive crtcs
  drm/i915: Use intel_plane_set_invisible() in
    intel_plane_disable_noatomic()
  drm/i915: Extract intel_cdclk_crtc_disable_noatomic()
  drm/i915: Extract skl_wm_crtc_disable_noatomic()
  drm/i915: clean up pipe's ddb usage in intel_crtc_disable_noatomic()
  drm/i915: Add skl_wm_plane_disable_noatomic()
  drm/i915: Extract intel_bw_crtc_disable_noatomic()
  drm/i915: Extract intel_cdclk_update_hw_state()
  drm/i915: Extract intel_bw_update_hw_state()
  drm/i915: Update bw_state->active_pipes during readout
  drm/i915: Skip some bw_state readout on pre-icl
  sem/i915: Simplify intel_cdclk_update_hw_state()
  drm/i915: Simplify cdclk_disable_noatomic()
  drm/i915: Split wm sanitize from readout
  drm/i915: Do wm readout ealier for skl+
  drm/i915: Move dbuf_state->active_piepes into skl_wm_get_hw_state()
  drm/i915: Relocate intel_bw_crtc_update()

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 18 +----
 drivers/gpu/drm/i915/display/intel_bw.c       | 74 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |  6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 30 +++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 40 ++++------
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 .../drm/i915/display/intel_modeset_setup.c    | 55 ++++----------
 drivers/gpu/drm/i915/display/intel_wm.c       |  6 ++
 drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  | 56 ++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +
 12 files changed, 189 insertions(+), 106 deletions(-)

-- 
2.45.3

