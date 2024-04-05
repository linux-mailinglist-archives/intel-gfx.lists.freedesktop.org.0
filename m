Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD31899BF2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB6F113B44;
	Fri,  5 Apr 2024 11:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCr9nO8+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D32113B44
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317000; x=1743853000;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Db3sX8e60hVZxh5TSXjwvNposgSFVuntZOXjKdoLq/c=;
 b=jCr9nO8+dtnr66p32Z65EyE8awnlK53KllHCqIM1gfjaST0/Qb2hsyoO
 /6L3c/0vSkWcPC5nePcap44Jt3cHgL3Syg8c/5MiYwy2RdRCP01HkoXIF
 lSKKEzR/0H3D1V5z+IAWvYMuXi5hPlthEQLnThcPsddXwBc4mnm8Q2nM+
 +VXvsjRv6lNBf2/fuGnrw/3yoITvP+Plg1gYQ09ts1f8mOm67ctio0h94
 tMKaUzbt5Bby5xXhFYUpRZyAJB/CCEypjOWuHQ8khgvLPrZX69JKEH/t6
 2kAkzb4K8k0ai31A70fLo75w8CujXG3Pw+oDJTMy6MrqPpPBBxUNkzZxH g==;
X-CSE-ConnectionGUID: KOfrenf/T8eed+/ClqiMMQ==
X-CSE-MsgGUID: WMxFHE71T0WJPPpayDI6HA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116533"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116533"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:39 -0700
X-CSE-ConnectionGUID: t3XF2Bt7RyygPPH+/Q+CEQ==
X-CSE-MsgGUID: NN1G+iNCT3GV3bN/CDbgVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858732"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/8] Panel Replay fixes and clean ups
Date: Fri,  5 Apr 2024 14:35:54 +0300
Message-Id: <20240405113602.992714-1-jouni.hogander@intel.com>
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

This patch set is a subset of Panel Replay selective update support set:

https://patchwork.freedesktop.org/series/128193/

It contains fixes and clean ups to current Panel Replay implementation:

Several needed functions are not executed for panel replay
Ensure link training follows enabling panel replay on sink side
Do not update phy power state for panel replay.
Do not apply workarounds not applicable for panel replay
Do not write registers/bits not applicable for panel replay
Unify panel replay enable/disable sink
Document boolean variables used by PSR code

All patches are reviewed. Sending now as a standalone
set for CI results before merging.

Jouni Högander (8):
  drm/i915/psr: Add some documentation of variables used in psr code
  drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
  drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
  drm/i915/psr: Do not update phy power state in case of non-eDP panel
    replay
  drm/i915/psr: Check possible errors for panel replay as well
  drm/i915/psr: Do not write registers/bits not applicable for panel
    replay
  drm/i915/psr: Unify panel replay enable/disable sink
  drm/i915/psr: Panel replay has to be enabled before link training

 drivers/gpu/drm/i915/display/intel_ddi.c     |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c |  12 ++
 drivers/gpu/drm/i915/display/intel_dp.c      |   8 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 197 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   5 +
 5 files changed, 166 insertions(+), 67 deletions(-)

-- 
2.34.1

