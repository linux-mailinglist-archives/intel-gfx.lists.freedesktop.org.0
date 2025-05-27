Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA872AC4B70
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E2D10E3F7;
	Tue, 27 May 2025 09:25:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HLwqGZtx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC5010E3F7;
 Tue, 27 May 2025 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337933; x=1779873933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dLaTZ5VCnEEAkwxrQxq2MzSTq02B1MrwXsh0lkYziAw=;
 b=HLwqGZtxkj969pZM1GNTn6qUggcTvykVdYLteVQWaP+S+LJQ221jP2AS
 aeJNm0W8qnAjLChKvl6o2XCI+l29MbRaS/gRDvik0/C2mnohenWifmXJT
 ORV9FjLbaU9BeCoU/bWfhHL4RbGdvTtEzbZShvBsHi1gEmoDt0zD5lCRq
 7jZ/bW5pRNgiSYqYhi2BG7YtfZXfa9a08CMtr2aeQYfHJwLjLbIItERTX
 z5wVkbWjb6ZC4h2ndHtbo7idW3LLd20+zMWyNln6gTWWs92pYfo9aPvai
 EnpfwPfq7RFoZXirzfnh6xYVHHKUuc7AbNGSqs7vupBQhU4RlWnJb2Edh g==;
X-CSE-ConnectionGUID: xb715LY/TrupeScXQxS40g==
X-CSE-MsgGUID: LaG5GvZ8RaWnN4ShxZ0rmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54114206"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54114206"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:31 -0700
X-CSE-ConnectionGUID: c8WXxpqKTMGNXZ5QsSItoA==
X-CSE-MsgGUID: UZgCWGsATPWOi1K0QAaJjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="179922966"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/6] drm/i915/dram: dram_info refactoring
Date: Tue, 27 May 2025 12:25:20 +0300
Message-Id: <cover.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Rebase and resend of [1].

[1] https://lore.kernel.org/r/cover.1746631057.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915/bw: pass struct dram_info pointer around
  drm/i915/dram: add accessor for struct dram_info and use it
  drm/i915/wm: DG2 doesn't have dram info to look up
    wm_lv_0_adjust_needed
  drm/i915/dram: pass struct dram_info pointer around
  drm/i915/dram: add return value and handling to intel_dram_detect()
  drm/i915/dram: allocate struct dram_info dynamically

 drivers/gpu/drm/i915/display/intel_bw.c       | 49 ++++++-------
 .../drm/i915/display/intel_display_power.c    |  9 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 15 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 21 +-----
 drivers/gpu/drm/i915/soc/intel_dram.c         | 71 ++++++++++++-------
 drivers/gpu/drm/i915/soc/intel_dram.h         | 26 ++++++-
 drivers/gpu/drm/xe/display/xe_display.c       |  4 +-
 drivers/gpu/drm/xe/xe_device_types.h          | 21 +-----
 9 files changed, 117 insertions(+), 103 deletions(-)

-- 
2.39.5

