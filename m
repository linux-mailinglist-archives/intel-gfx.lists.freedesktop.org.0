Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A26E8D3332
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F3310EF70;
	Wed, 29 May 2024 09:39:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBKd31jf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC8210E71C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975543; x=1748511543;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dRMnLMWgBuWhsBx2sNAkxsKf/B2tMEcvMmY3capzLsQ=;
 b=eBKd31jfXoQDk91Jrh24aSnDJC+I8ehGaFN2HMiC7OO6rkFL0dy+AhVl
 rnv8WTELbPY96KhQlry5B6XRttaoVAWfKD4bIVQJwL/v9FzLXglICtc4R
 h/GBRndkBPe4hc4oUH3tK4Np0vKwty8UfFbK9DEpKjX0YABz58D6imCyE
 vJWvET1Yk4TlIf7cBw+E+VUce2gdAVsXojM+xMzLnkwwKAIBH8hHP4K+u
 SLXo87Yn2I3r6+IzN7/ccekAIgiFDjYXdgXkD/S+QoFYBn49n98kzNhC3
 7oRoHbhPfy68S+ixD3VZXxQRuWyydZVtLdqf8zJJLzmiWFV5Faup0xagn Q==;
X-CSE-ConnectionGUID: urovC1IPQC6nOBejPPMMfg==
X-CSE-MsgGUID: gpPr/eRgSK2tA+mYrHD3Sg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316806"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316806"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:02 -0700
X-CSE-ConnectionGUID: vPPc4+/aSXahzuj8CeYGGA==
X-CSE-MsgGUID: wUEt0CqBRbeccHeQLqkFJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273878"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/6] Region Early Transport debugfs support
Date: Wed, 29 May 2024 12:38:43 +0300
Message-Id: <20240529093849.1016172-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a subset of "Panel Replay eDP" and "Panel Replay Fixes" patch
sets (https://patchwork.freedesktop.org/series/133684/ and
https://patchwork.freedesktop.org/series/133648/) Patches to implement
showing sink Region Early transport support and if Region Early
Transport is enabled are included here.

Also Region Early Transport related fixes from patch sets are included.

Jouni Högander (6):
  drm/i915/psr: Add Early Transport status boolean into intel_psr
  drm/i915/psr: Get Early Transport status in intel_psr_pipe_get_config
  drm/i915/psr: Use enable boolean from intel_crtc_state for Early
    Transport
  drm/i915/display: Selective fetch Y position on Region Early Transport
  drm/i915/psr: Allow setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE via
    debugfs
  drm/i915/psr: Add Early Transport into psr debugfs interface

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 56 ++++++++++++++-----
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 3 files changed, 49 insertions(+), 14 deletions(-)

-- 
2.34.1

