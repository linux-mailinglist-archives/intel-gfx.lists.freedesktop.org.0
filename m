Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A942483C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 151616EE64;
	Wed,  6 Oct 2021 20:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10856EE64
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:49:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="224871798"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="224871798"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="560310645"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2021 13:49:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:21 +0300
Message-Id: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/16] drm/i915: DP per-lane drive settings for
 icl+
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

All the generic link training code should be in check now.
Let's move on to actually programming the each TX lane with
its own individual settings.

Ville Syrjälä (16):
  drm/i915: Remove pointless extra namespace from dkl/snps buf trans
    structs
  drm/i915: Shrink {icl_mg,tgl_dkl}_phy_ddi_buf_trans
  drm/i915: Use standard form terminating condition for lane for loops
  drm/i915: Add all per-lane register definitions for icl combo phy
  drm/i915: Remove dead DKL_TX_LOADGEN_SHARING_PMD_DISABLE stuff
  drm/i915: Extract icl_combo_phy_loadgen_select()
  drm/i915: Stop using group access when progrmming icl combo phy TX
  drm/i915: Query the vswing levels per-lane for icl combo phy
  drm/i915: Query the vswing levels per-lane for icl mg phy
  drm/i915: Query the vswing levels per-lane for tgl dkl phy
  drm/i915: Query the vswing levels per-lane for snps phy
  drm/i915: Enable per-lane drive settings for icl+
  drm/i915: Use intel_de_rmw() for tgl dkl phy programming
  drm/i915: Use intel_de_rmw() for icl mg phy programming
  drm/i915: Use intel_de_rmw() for icl combo phy programming
  drm/i915: Fix icl+ combo phy static lane power down setup

 drivers/gpu/drm/i915/display/icl_dsi.c        |  14 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 265 ++++++++----------
 .../drm/i915/display/intel_ddi_buf_trans.h    |  18 +-
 .../drm/i915/display/intel_dp_link_training.c |   5 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   8 +-
 drivers/gpu/drm/i915/i915_reg.h               |  11 +-
 7 files changed, 154 insertions(+), 177 deletions(-)

-- 
2.32.0

