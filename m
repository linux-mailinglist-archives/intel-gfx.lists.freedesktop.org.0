Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5277598ED29
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504D410E7E6;
	Thu,  3 Oct 2024 10:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcqkksuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E719710E7E4;
 Thu,  3 Oct 2024 10:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952105; x=1759488105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fvImsMQCHH9VfEoeG1lvvLyEsY5Ncrjzh/45R3fU1GE=;
 b=DcqkksuY5bkoROoWT2oO0HjNFv43St8saLOwPrlXnSPe+rouMmInwAG3
 ksx/RO2AVvhg+6LMLoK8g9EyklWGpXIUFnL8WwG+zvFwVxFov3+/Gs2l3
 N9JgKHZc9/JvxJBPJC2Wdm+TZQVZ4TNcokq5hu6HLKwuvVazZQUIKBnBs
 5vTYmp90SUWP0fT30mSiDV4KppPU6MtPL2nxAtuidzOr5piGVCv28y+8x
 8fkYPi+f/J89Ae0arhSyoxczgmLOwWDdL6HSWY7K7Xz7TyknRyxUP9joy
 G7DQ5z2fbhAg/Gky1B1ZE+mpF9Bas1pmZcpj/eipVGqfyyTSQKA10PSrj Q==;
X-CSE-ConnectionGUID: dHiWUxByTK+5Hp0vAlA4Ng==
X-CSE-MsgGUID: Z5KoJ+FkRqeYng4A7ffUzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270759"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270759"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:44 -0700
X-CSE-ConnectionGUID: 0SnxNJTHRTW9lr1Xc41bSQ==
X-CSE-MsgGUID: wRLRtDbuSLmEcmuw9pHqMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142434"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 0/7] DP DSC min/max src bpc fixes
Date: Thu,  3 Oct 2024 16:13:36 +0530
Message-ID: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Use helpers for source min/max src bpc appropriately for dp mst case and
to limit max_requested_bpc property min/max values. 

Rev2: Dropped patch to limit max_requested_bpc based on src DSC bpc
limits. Instead added change to ignore max_requested_bpc if its
too low for DSC.

Rev3: Updated patch#1 commit message.

Rev4: Rebase.

Rev5: Addressed Jani's comment on patch#3.

Rev6: Rebase.

Rev7: Added patch to fix return type for dsc_min/max_src bpc helpers to
int.

Rev8: Drop the first patch and added patches to refactor pipe_bpp limits
and link limits.

Ankit Nautiyal (7):
  drm/i915/dp: Use HAS_DSC macro in intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Return int from dsc_max/min_src_input_bpc helpers
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Drop max_requested_bpc for dsc pipe_min/max bpp
  drm/i915/dp: Refactor pipe_bpp limits with dsc
  drm/i915/dp: Use clamp for pipe_bpp limits with DSC
  drm/i915/dp: Set the DSC link limits
    intel_dp_compute_config_link_bpp_limits

 drivers/gpu/drm/i915/display/intel_dp.c     | 142 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  14 +-
 3 files changed, 79 insertions(+), 84 deletions(-)

-- 
2.45.2

