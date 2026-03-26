Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O0CHKRpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC23338FBE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1547B10E382;
	Thu, 26 Mar 2026 17:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tl5ZrnkI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891D610E9AC;
 Thu, 26 Mar 2026 17:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545313; x=1806081313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rOqFxkMemOkwukBhrN56DFvni0AeOaIylCnebKvYRGE=;
 b=Tl5ZrnkIXzdfhmhaL9TS5Qj33RnZHbXv6W1vIchPsxijqWY11rgHncGL
 ZCR1FltsKX6Mo9+HT9i58TaoiW1izSaWDxeSewi9WcsZlDhwKoBj3QTCz
 gX0tNji4GYY3BHUWiIq8sKgB4Hu9mYIJHvBh9qlmIp7C8i85njZ11Hdv+
 PtcdFF5H9kPx2L0djKHj1rburDcAIxRy3PLrAsOb7GM+DDxmEMgnNUC38
 okEjkNw0MsabZkPfbeej7KrOXteA1nOe4DT7wfT7Ul/q5C6ZTYPxXZBsx
 i6dge84O1vx2i2d80esYCFVn7sLneH3nue4a1kAuoMpZZEtlzGLz+ZVWN g==;
X-CSE-ConnectionGUID: HF3+EjV8RW6IdmleySjsCw==
X-CSE-MsgGUID: uhdjBDgpRpKk26OHfvBkdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630549"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630549"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:13 -0700
X-CSE-ConnectionGUID: d5S/qlSlRVKE4T1JH/kz6w==
X-CSE-MsgGUID: Q2agoVMGReOWzN7yfYVwag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975499"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:10 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 00/19] drm/i915/display: Add DC3CO support
Date: Thu, 26 Mar 2026 22:45:38 +0530
Message-ID: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: ADC23338FBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds initial DC3CO support for display version 35+ and adds
debugfs visibility into DC3CO count/residency.

The series also includes required PSR/ALPM updates for DC3CO enablement.

This series is based on the CMTG enablement series currently under
review:
https://patchwork.freedesktop.org/series/157664/

DC3CO is not enabled by this series since power_domains->allowed_dc_mask
is not updated to include DC3CO.

TODO: 
- CMTG restore on DC6 exit
- CMTG HWGB programming for DC3CO latencies
- Enable DC3CO in power_domains->allowed_dc_mask

Dibin Moolakadan Subrahmanian (19):
  drm/i915/display: Remove TGL DC3CO support
  drm/i915/display: Replace DC_STATE_EN_DC3CO with
    DC_STATE_EN_UPTO_DC3CO
  drm/i915/display: Use FIELD_PREP() for DC state enable bits
  drm/i915/display: Add DC3CO DC_STATE enable/disable support
  drm/i915/display: Validate target DC state against allowed_dc_mask
  drm/i915/display: Fix HAS_DC3CO() and add DC3CO trigger enum
  drm/i915/display: Add helper to check DC3CO support
  drm/i915/display: Add DC3CO eligibility computation
  drm/i915/display: Remove unused PSR dc3co_exitline field
  drm/i915/display: Remove unused dc3co_exitline from intel_crtc_state
  drm/i915/display: Store DC3CO eligibility in PSR state
  drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
  drm/i915/display: Define DC3CO idle protocol bit in PR_ALPM_CTL
  drm/i915/display: Enable DC3CO idle protocol in ALPM
  drm/i915/display: PSR Add delayed work to exit DC3CO
  drm/i915/display: Add helper to enable DC counter
  drm/i915/display: Remove DC3CO DMC debugfs
  drm/i915/display: Add DC3CO count and residency in dmc debugfs
  drm/i915/display: PSR set idle frames while exit from DC3CO

 drivers/gpu/drm/i915/display/intel_alpm.c     |   9 +
 drivers/gpu/drm/i915/display/intel_display.c  |  98 +++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../drm/i915/display/intel_display_power.c    |  20 +-
 .../drm/i915/display/intel_display_power.h    |  16 ++
 .../i915/display/intel_display_power_well.c   |  36 ++-
 .../i915/display/intel_display_power_well.h   |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  14 +-
 .../drm/i915/display/intel_display_types.h    |  14 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  15 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 224 +++++-------------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 15 files changed, 245 insertions(+), 211 deletions(-)

-- 
2.43.0

