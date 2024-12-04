Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C41E9E3669
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2317210E326;
	Wed,  4 Dec 2024 09:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PAmufu4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1491F10E326;
 Wed,  4 Dec 2024 09:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304235; x=1764840235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hxe8CuU8sCGY/ZQ12BWHn2PlV+jaGvWFbUa455Xk4bc=;
 b=PAmufu4VvzVYPFiYvgMox8orAcN/u9II6j4EX4CuYXAgyiUdP2yCbmvv
 cM/WBryKXxCVoCEF6ewKKU6BFMSEWJRi98VsSjXAoH2I4eW0qTRRMuExr
 XMwAoMh3d2UYTmjaC2CdGbeYiMrKVD4QLNFsEo2znIWCwaZfLMiEBpxox
 OVpaf/lX0KdmeaZKxlGg8Au/tyIEhhz4c9ZRtXARecjwxdUjz/uf3wIrb
 vep4q2W1GNfLse1L3gGmwC8YKA+8OUH5sb/DfMtl9TGZGSxGpg4FG/ph/
 s206cbUtCxir5KyQWGbc/PyvSgOSfKNpc3szqK1L+7CJqKqz5bcP3S/4F Q==;
X-CSE-ConnectionGUID: azo6B4vASJWF2yWSVPOelA==
X-CSE-MsgGUID: 1/1MyAxzSPyr4zAJ0StVVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038450"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038450"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:55 -0800
X-CSE-ConnectionGUID: OdFNeHn+TY+TKkRAgh8zUg==
X-CSE-MsgGUID: DcY0tlz9RUieTXJMAxiPEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555068"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:23:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 00/14] DP DSC min/max src bpc fixes
Date: Wed,  4 Dec 2024 14:56:28 +0530
Message-ID: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Rev9:
-Address review comments.
-Split patch#3 and patch#6 to 2 patches each.
-Rebase.

Ankit Nautiyal (14):
  drm/i915/dp: Refactor FEC support check in intel_dp_supports_dsc
  drm/i915/dp: Return early if DSC not supported
  drm/i915/dp: Separate out helper for compute fec_enable
  drm/i915/dp: Drop check for FEC in intel_dp_fec_compute_config
  drm/i915/dp: Remove HAS_DSC macro for intel_dp_dsc_max_src_input_bpc
  drm/i915/dp: Return int from dsc_max/min_src_input_bpc helpers
  drm/i915/dp: Use intel_display in intel_dp_dsc_max_src_input_bpc()
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
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  23 ++-
 3 files changed, 123 insertions(+), 103 deletions(-)

-- 
2.45.2

