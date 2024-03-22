Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2360C886A48
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D816C10E89B;
	Fri, 22 Mar 2024 10:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEugwNAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F82D10E89B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711103420; x=1742639420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ec/vxemfn44CAqJ11D0ci0P/PvrMMWPTa7Z9RN84DKs=;
 b=BEugwNAhpA4jSJXVXpCuM41E/0H88AgA10lcthINBy5G+Y2Be1ub/o5K
 42RRa20iW81TxOhgWSh1kVSqtMtgzOmiDrrYvFyVrttzWcK3C7WaQV0q4
 P7eJn2plZA1F40kG2FE1NiFFjumfJqm1Ekypr6jKFS+HyFjNs1+R+ytlS
 HgmHQ5f2S92PE2z7fo0BGnpEXsTcQeugmK18nxobQSJ1pTbQKuhlyaw9T
 c1kjUKbrUy29rVkq4KZiHRID27XdOD7FvYyz0684D9SyRAlOtI1kaCOjw
 KuXwj1lkdd2dxVb6jP9IWsRbkuO4KhsfoaAy4NlKIErvJpUwoP11hHMOP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17292849"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17292849"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19559318"
Received: from opopa-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.37.152])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 0/5] ALPM AUX-Less
Date: Fri, 22 Mar 2024 12:29:55 +0200
Message-Id: <20240322103000.103332-1-jouni.hogander@intel.com>
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

This patch set is implementing calculation of ALPM AUX-Less parameters
for Intel HW and writing them in case of AUX-Less is enabled. It is
also enabling ALPM AUX-Less for eDP Panel Replay. Current code is not
allowing Panel Replay on eDP. Patches for this are coming later.

This implementation is only for Panel Replay usage. LOBF (Link Off
Between Active Frames) usage needs more work.

v5:
  - mention AUX Less enable is only on source side in commit message
v4:
  - drop patch adding AUX LESS dpcd defines
  - re-use fast_wake_lines to store aux_less_wake_lines
  - add comment explaining why AUX less is enabled on eDP panel replay
    without any extra checks
v3:
  - use definitions instead of numbers for max values
  - do not use alpm_ctl as uninitialized variable
v2:
  - use variables instead of values directly
  - fix several max values
  - move converting port clock to Mhz into _lnl_compute_*
  - do not set AUX-Wake related bits for AUX-Less case
  - do not write ALPM configuration for DP2.0 Panel Replay or PSR1

Jouni Högander (5):
  drm/i915/psr: Add missing ALPM AUX-Less register definitions
  drm/i915/psr: Calculate aux less wake time
  drm/i915/psr: Silence period and lfps half cycle
  drm/i915/psr: Enable ALPM on source side for eDP Panel replay
  drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel
    Replay

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 188 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  12 +-
 3 files changed, 193 insertions(+), 9 deletions(-)

-- 
2.34.1

