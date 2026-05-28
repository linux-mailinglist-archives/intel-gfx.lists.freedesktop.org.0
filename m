Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Gz6E03MF2o7RAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A195EC9A2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510610EBEF;
	Thu, 28 May 2026 05:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUUXgRVm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE5F10EBEF;
 Thu, 28 May 2026 05:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779944521; x=1811480521;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sBzty2hjHKsH772Ad3aL+ucMhuevxrA7iAjA12mag0I=;
 b=ZUUXgRVm7ZYoawxv7XXmdkGe9J32KMt7vAIo1tnzLwqMY4G5MTUB1mJ5
 K8RYcaFP542G/CsU3TBzCFQ/UIzxjpwuTBOjH0n+N8b01bOdunPIzFBqE
 qTiHFkzu5ItNQZLlu7DyEky0i/tPZTa8QNcTL+JscoB19LMKkYaRHob2k
 9VI5TQYKtXCeiwuu17wTeVqn9r7WtNSoX1z68o6v2ueZ0TctFUla1al+d
 C2eFn/Qd7dAkuGhcGjmCSyUrCdKQPqulX6d04dM+wIruBvjUh6LwAiKSn
 sgEFLP0Kd4G7Zu7TISK5VwEFmBjNOz2Hjh8llPibELx77B4s90gYb7t9R g==;
X-CSE-ConnectionGUID: 5HK83CEfR12f/T57Pr4hww==
X-CSE-MsgGUID: 3igxtP4pSd6K2wNq47a3tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80895698"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80895698"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:01 -0700
X-CSE-ConnectionGUID: +FBSzI2PRMCTDPGleQTRxA==
X-CSE-MsgGUID: GJUotKguQ7SV3NbSiphf0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="238025859"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:00 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v2 00/17] For CI only: DC3CO/CMTG validation series
Date: Thu, 28 May 2026 10:31:14 +0530
Message-ID: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 90A195EC9A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series is intended for CI validation only
and is not intended for merging.

Please provide review feedback on the original patch series:

* DC3CO: https://patchwork.freedesktop.org/series/163939/
* CMTG: https://patchwork.freedesktop.org/series/157664/

v2:
- Rebase

Dibin Moolakadan Subrahmanian (17):
  drm/i915/cmtg: Enable CMTG
  drm/i915/display: Remove TGL DC3CO support
  drm/i915/display: Switch DC3CO enable from standalone bit to DC level
    encoding
  drm/i915/display: Use FIELD_PREP() for DC state enable bits
  drm/i915/display: Add DC3CO DC_STATE enable/disable support
  drm/i915/display: Add DC3CO support check
  drm/i915/display: Add HAS_DC3CO() macro
  drm/i915/display: Add DC3CO eligibility computation
  drm/i915/display: Store DC3CO eligibility in PSR state
  drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
  drm/i915/display: Enable DC3CO idle protocol in ALPM
  drm/i915/display: PSR Add delayed work to exit DC3CO
  drm/i915/display: Add helper to enable DC counter
  drm/i915/display: Add DC3CO count and residency in dmc debugfs
  drm/i915/display: program CMTG before DC3CO enable
  drm/i915/display: Add RO bit masking gen9_write_dc_state()
  drm/i915/display: Enable DC3CO for display version 35+

 drivers/gpu/drm/i915/display/intel_alpm.c     |   6 +
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 360 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  17 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  | 129 ++++++-
 .../gpu/drm/i915/display/intel_display_core.h |   3 +-
 .../drm/i915/display/intel_display_device.c   |  14 +
 .../drm/i915/display/intel_display_device.h   |   3 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  12 +
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_power.c    |  65 +++-
 .../drm/i915/display/intel_display_power.h    |  25 ++
 .../i915/display/intel_display_power_well.c   |  49 +--
 .../i915/display/intel_display_power_well.h   |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  23 +-
 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 245 ++++--------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |   5 +
 23 files changed, 788 insertions(+), 232 deletions(-)

-- 
2.43.0

