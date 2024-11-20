Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED429D386F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFA510E6ED;
	Wed, 20 Nov 2024 10:35:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lxppHzz2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B2810E6EB;
 Wed, 20 Nov 2024 10:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098926; x=1763634926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kRNYDm8WM5lMGNAiIGhO6YgMLGjMZ78ExbMHgUGicpk=;
 b=lxppHzz2sTwNwdjRLCX5RWuiohqdomTiPQPh6aCNRKPFJdNxf1m4SFqa
 M5K+EUARApb0YTmy4ybWafTa/GhP7hRRWfTMmM3lvViGJCgvRBtu0srQd
 ClsoVfZUxSST0yhF6yafosM27uOTeFilKQLEjr0dVk3vfOXI7aHCNydQu
 3vKc3L+51fXQZk75j4ZtV6rpObxL9tusWgumEy604dLTDt85TBvUvGX/6
 +3RHxJrm5+Kc6PER34Ga6UJLmbmRkzrTr73NaG/ZdopqiR2VQy2ORkwlN
 qM+cISZsRm+QWub2OPnNia2T/60H+PUCUtetZxkO0dhy6l9nC5gRy2cFn g==;
X-CSE-ConnectionGUID: ePWUqNyfSqSilM7WVN7crQ==
X-CSE-MsgGUID: GxiAqPIMSgyrFfFaChrCLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520049"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520049"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:25 -0800
X-CSE-ConnectionGUID: LujEmT8DSKOKn3rgmV5aHw==
X-CSE-MsgGUID: oBX3szaiRMCZScDUtZIbLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674029"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 00/12] DP DSC min/max src bpc fixes
Date: Wed, 20 Nov 2024 16:07:50 +0530
Message-ID: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Rev2: Drop patch to limit max_requested_bpc based on src DSC bpc
limits. Instead add change to ignore max_requested_bpc if its
too low for DSC.

Rev3: Update patch#1 commit message.

Rev4: Rebase.

Rev5: Address Jani's comment on patch#3.

Rev6: Rebase.

Rev7: Add patch to fix return type for dsc_min/max_src bpc helpers to
int.

Rev8:
-Drop the first patch.
-Refactor helpers for fec support.
-Add patches to refactor pipe_bpp limits and link limits.

Ankit Nautiyal (12):
  drm/i915/dp: Refactor FEC support check in intel_dp_supports_dsc
  drm/i915/dp: Return early if DSC not supported
  drm/i915/dp: Separate out helper for compute fec_enable
  drm/i915/dp: Remove HAS_DSC macro for intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Return int from dsc_max/min_src_input_bpc helpers
  drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
  drm/i915/dp: Drop max_requested_bpc for dsc pipe_min/max bpp
  drm/i915/dp: Refactor pipe_bpp limits with dsc
  drm/i915/dp_mst: Refactor pipe_bpp limits with dsc for mst
  drm/i915/dp: Use clamp for pipe_bpp limits with DSC
  drm/i915/dp: Make dsc helpers accept const crtc_state pointers
  drm/i915/dp: Set the DSC link limits
    intel_dp_compute_config_link_bpp_limits

 drivers/gpu/drm/i915/display/intel_dp.c     | 189 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  18 +-
 3 files changed, 120 insertions(+), 101 deletions(-)

-- 
2.45.2

