Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214DC9392C2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B4F10E1D9;
	Mon, 22 Jul 2024 16:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7Xd9tBL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D47E10E1D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667289; x=1753203289;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9f/Pf4sIc7BcVKbSMPshAR2QCRBmTDpjaSsRrdKsi9Q=;
 b=V7Xd9tBLa0c4SHHGzYTXIEJgja8SSfislpipsbp+C22xLRQR2YTVSJiF
 hx9jAMK/JQW3pFljHfzxnbGhjrEdhbzfaNTT3EVjDrLUZjc9wsPgifVK2
 Wd3X6dCtc0vGl1/zGzGc70E4n36LLiJJAdgnfwWdLWjDK75HIQskJZMwT
 V5l3LONPXl8LpgIHktP6w+qx3li6ZMdO/X/AUZFY9cGTdmviLvY/T8teJ
 MMIhi9f98bjoBuajpcPOWAFYTsLunJkJ0IaeulWLdH2V6bDd9Rakt9TIE
 tzQZl0lwI/QLNQlbbLqzmoPxHG3wrYt0XLM6YJdGrlDCULkmIYtSUtaoW g==;
X-CSE-ConnectionGUID: kM37WZK+Rz+pFlgQemiXyw==
X-CSE-MsgGUID: r5iMzWMGSuudRTlMeQr4Ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117290"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117290"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:49 -0700
X-CSE-ConnectionGUID: skucwkk0S/6yQ9XvnEisdg==
X-CSE-MsgGUID: Bq7DZVqDRlKOvEvRkKT7og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056186"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/14] drm/i915/dp_mst: Enable LT fallback for UHBR<->non-UHBR
 rates
Date: Mon, 22 Jul 2024 19:54:49 +0300
Message-ID: <20240722165503.2084999-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
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

This patchset enables the link training fallback on MST links between
UHBR and non-UHBR link rates. As a dependency it also switches the
fallback to happen in a link configuration sequence ordered by BW and
makes sure that the MST BW reported via the ENUM_PATH_RESOURCES message
is always up-to-date in the MST topology SW state.

Imre Deak (14):
  drm/dp_mst: Factor out function to queue a topology probe work
  drm/dp_mst: Add a helper to queue a topology probe
  drm/dp_mst: Simplify the condition when to enumerate path resources
  drm/i915/ddi: For an active output call the DP encoder sync_state()
    only for DP
  drm/i915/dp: Initialize the link parameters during HW readout
  drm/i915/dp: Send only a single modeset-retry uevent for a commit
  drm/i915/dp: Add a separate function to reduce the link parameters
  drm/i915/dp: Add helpers to set link training mode, BW parameters
  drm/i915/dp_mst: Reduce the link parameters in BW order after LT
    failures
  drm/i915/dp_mst: Configure MST after the link parameters are reset
  drm/i915/dp_mst: Queue modeset-retry after a failed payload BW
    allocation
  drm/i915/dp_mst: Reprobe the MST topology after a link parameter
    change
  drm/i915/dp_mst: Ensure link parameters are up-to-date for a disabled
    link
  drm/i915/dp_mst: Enable LT fallback between UHBR/non-UHBR link rates

 drivers/gpu/drm/display/drm_dp_mst_topology.c |  55 ++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 .../drm/i915/display/intel_display_types.h    |  21 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 131 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_link_training.c | 107 +++++++++++---
 .../drm/i915/display/intel_dp_link_training.h |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  74 +++++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   1 +
 include/drm/display/drm_dp_mst_helper.h       |   2 +
 10 files changed, 361 insertions(+), 41 deletions(-)

-- 
2.44.2

