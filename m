Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MP5MFU/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86745E94A4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031B810E929;
	Wed, 27 May 2026 19:00:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EUPxWgEm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC57010E928;
 Wed, 27 May 2026 19:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908432; x=1811444432;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=48uF737H1Brotrbi2TcbsfzZ9yElv1oDFbF5x6CEkUc=;
 b=EUPxWgEmc74U1rKlm1F0k+qBuD5p+b3jy3Px3LLeuGvJ04PHppijaalk
 jCYw1s6Cz8SQu1xGbBaq9PgBDVjL8OWijSefpSoeCrCEfBDBAF5qTGz7s
 BdVfRSW1nH8RZXwYDe1BB79tW6UpU2u3btwthWvCMoqQtnak4Lmp8N5ZW
 duCe9HIRrrgH8AAUFMLV5D9MuOY7/TqxEKb7Bax+FARDOZQ3HzBzGDtPW
 jcqc165Op8waR4Ye9HNlK0F9LhuRpGLGW0Z4qJPLikYs8gLoiGYbTtcew
 17leSR9jIqmN45OKiOSQpU/eFlDtvhSSfzvWiuDs4JqIXPxIVX5q7ZGsD Q==;
X-CSE-ConnectionGUID: zVk5Eq8nSbe5u156q5YvOA==
X-CSE-MsgGUID: cfLtRFiwQMqBJvCSCBxrkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602118"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602118"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:32 -0700
X-CSE-ConnectionGUID: ofDixBcpTDGLj5J1NYrMYQ==
X-CSE-MsgGUID: fsesdScjQYOIvrAhxslfEw==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:30 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI 00/17] For CI only: DC3CO/CMTG validation series
Date: Thu, 28 May 2026 00:29:47 +0530
Message-ID: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: E86745E94A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series is intended for CI validation only
and is not intended for merging.

Please provide review feedback on the original patch series:

* DC3CO: https://patchwork.freedesktop.org/series/163939/
* CMTG: https://patchwork.freedesktop.org/series/157664/

Animesh Manna (1):
  drm/i915/cmtg: Enable CMTG

Dibin Moolakadan Subrahmanian (16):
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
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 361 +++++++++++++++++-
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
 23 files changed, 789 insertions(+), 232 deletions(-)

-- 
2.43.0

