Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ACEB29ED6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E89C10E41B;
	Mon, 18 Aug 2025 10:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="arTLHYYW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9132A10E41A;
 Mon, 18 Aug 2025 10:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511655; x=1787047655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bwGoXQQGXXWOJuqfth/d0VCrtTBjYOJ7sMc/WSb/cUM=;
 b=arTLHYYWz9BdcaF/uhLigFU8vvm1sgo1gwCwQocgY8BdaHAqqWzibn46
 a0by4FlSPTnzdvAFGqJzvPfSNdKFOtZuB7WlAEB++umE8zqOu+ey5TKyu
 1yPRi3WW7n+aH0xkyL5H0xUih2NGXvDXcL5OcLvUxudZE2PCqk0e/HQUf
 drQbYbtP5zHJ7sEoxx8B90mtJgm1LoCsN5wgqmDl8fHHXdatibZJjK54o
 ZHKQEuwQuGx+Rncb3eMT6sg+r8ETFKI1Ugv8ROwnPacqyfmu9101JV1VE
 /m75uhwLIVrOBMAZcAfST75nM51fGyp9x2IuXlpwV4eG6SBsI+j5auLLR w==;
X-CSE-ConnectionGUID: oxxb0o5/QsueYEaLWl5pxQ==
X-CSE-MsgGUID: 3OW8wDJjQl2e1DEdqFgXqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105517"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105517"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:34 -0700
X-CSE-ConnectionGUID: U7ojNNXAThmyJTCHWCwYdA==
X-CSE-MsgGUID: lnLLDFUdSGmF2e5iS/Mtng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778778"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 0/5] drm/i915 and drm/xe: remove fsb/mem freq cleanups
Date: Mon, 18 Aug 2025 13:07:23 +0300
Message-ID: <cover.1755511595.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

Resend of [1] for CI.

[1] https://lore.kernel.org/r/cover.1753971617.git.jani.nikula@intel.com


Jani Nikula (5):
  drm/i915/dram: add intel_fsb_freq() and use it
  drm/i915/dram: add intel_mem_freq()
  drm/i915/rps: use intel_fsb_freq() and intel_mem_freq()
  drm/i915/dram: bypass fsb/mem freq detection on dg2 and no display
  drm/i915/dram: move fsb_freq and mem_freq to dram info

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 13 +++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++--
 drivers/gpu/drm/i915/i915_drv.h               |  2 -
 drivers/gpu/drm/i915/soc/intel_dram.c         | 54 +++++++++++--------
 drivers/gpu/drm/i915/soc/intel_dram.h         |  5 +-
 drivers/gpu/drm/xe/xe_device_types.h          |  1 -
 8 files changed, 54 insertions(+), 36 deletions(-)

-- 
2.47.2

