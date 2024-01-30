Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34751842258
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 12:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DE0112F89;
	Tue, 30 Jan 2024 11:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6740710F895
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 11:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706613107; x=1738149107;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JxXxQ7IGkxDAkKziu05gCEQFARacsqd/GLmzEzAsbj0=;
 b=a4/VnK+Qn9zHHoorl+ZmZiGgY3zuNTc1LAcN5D2f67VPR1b5lWohDeiC
 wvU38rvWxtEmOmiYmrUZ0CRTFKBEzVpybGUKwcrZNLWnvMubj5byM2aWC
 GCbFvHJmrBr2xDa5mqW+H/Cdr2cuq2tEnXC8hOyXvm1Usn69E+kidaCkb
 9z5G4wi1FpR2JLcK5RjLVhirgdbUZYDV7xbgHPqI1DgxwvKViuqLBZ/xY
 Mc/v2sbrucI8xUiIwnR4qpQx1PJenJ22fundQVkAyEn981pabzA6HgxUU
 CBcVdkicGCC6HtXrBpGGdpr9I/jYMrwAYxG1jhnCMI47xPFAFlXREiGKj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402877152"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402877152"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858461142"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858461142"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.41.112])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:44 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/4] ALPM AUX Wake Configuration
Date: Tue, 30 Jan 2024 13:11:26 +0200
Message-Id: <20240130111130.3298779-1-jouni.hogander@intel.com>
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

This patch set is adding some missing AUX wake related configuration
for Lunar Lake.

Also ALPM parameters are moved to separate struct because amount of
parameters is about to increase in upcoming patches.

Additionally all ALPM related register definitions are added for
Lunar Lake.

v3:
  - Fix ALPM_CTL2_A address
  - Remove duplicate defines
  - Move alpm_parameters struct definition to intel_psr struct
  - Move DISP_VER checks into _lnl_compute_alpm_param and lnl_alpm_configure
  - 
v2:
  - Use REG_BIT instead of BIT
  - Add commit message to first patch

Jouni Högander (4):
  drm/i915/alpm: Add ALPM register definitions
  drm/i915/psr: Add alpm_parameters struct
  drm/i915/alpm: Calculate ALPM Entry check
  drm/i915/alpm: Alpm aux wake configuration for lnl

 .../drm/i915/display/intel_display_types.h    | 11 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 72 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 57 +++++++++++++++
 3 files changed, 126 insertions(+), 14 deletions(-)

-- 
2.34.1

