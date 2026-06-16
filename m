Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j97FMGNFMWocfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C8A68F7BC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eOZCBZ3q;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437D010EAC3;
	Tue, 16 Jun 2026 12:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84E0310E312;
 Tue, 16 Jun 2026 12:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613919; x=1813149919;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2necX3jAT0hNCItjlIH4n3mJRpK9q0RLb0Sub4S+wVw=;
 b=eOZCBZ3qqJ3UDlF4HaozDxetprqFaKFvTa0P24VYbPGbk4RwJEC+9U4p
 eN+Ha3v1m6lGaVwb7C8vYRHKSLt/YefeoqiJpWoQLdE5t8vnb8BtxhE0y
 UTw0peMXBsELDCsxQJaAZsQ/+VvMXBKO1bWzFeby2Vk5Fi0ia3de7NsTi
 XAAJzx8Ndst8vKrYrJe6wilJ+gsQMgtDecisMzPPCbXVDrE0F3Ia54Yhz
 BhRcAOIN3z7dMJyCLUmucwcPoydhGa1Ajkx6a25YMrXQF5VQ7S2gAq/vD
 coHUqSlmfqotbaF1k8h2wweAGBEThYHFUN6X9skuTViu9a3Vq1vSk393w g==;
X-CSE-ConnectionGUID: aEK624EPTKeZyncNmgVbAA==
X-CSE-MsgGUID: P5jyaVFGTQ+9IQrNM6jPqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513222"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513222"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:18 -0700
X-CSE-ConnectionGUID: cSnBsL5cRmWPhyb93XVhzw==
X-CSE-MsgGUID: 9tJUVACMRlSZHZPeko22qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876242"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:17 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 00/39] For CI only: DC3CO/CMTG validation series
Date: Tue, 16 Jun 2026 18:13:36 +0530
Message-ID: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,patchwork.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54C8A68F7BC

This series is intended for CI validation only
and is not intended for merging.

Please provide review feedback on the original patch series:

* DC3CO: https://patchwork.freedesktop.org/series/163939/
* CMTG: https://patchwork.freedesktop.org/series/157664/

v2:
- Rebase
v3:
- Rebase to dc3co v5 and cmtg v8.
v4:
- Rebase to dc3co v5 and cmtg v9.

Animesh Manna (19):
  drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
  drm/i915/cmtg: Set CMTG clock select
  drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info
  drm/i915/display: Pass target transcoder to
    intel_set_transcoder_timings()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder
  drm/i915/display: Skip DP_MIN_HBLANK_CTL programming for CMTG
    transcoders
  drm/i915/display: Pass transcoder to
    intel_set_transcoder_timings_lrr()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder in LRR
    path
  drm/i915/cmtg: Set timings for CMTG by using transcoder timing helpers
  drm/i915/vrr: Pass transcoder to intel_vrr_set_fixed_rr_timings()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder in VRR
    fixed-rr path
  drm/i915/cmtg: Program VRR fixed-rate timings for CMTG transcoder
  drm/i915/cmtg: Program VRR control register for CMTG transcoder
  drm/i915/cmtg: Set link M/N for CMTG transcoder
  drm/i915/cmtg: Add hook to enable CMTG with sync to port
  drm/i915/cmtg: Add a hook to make eDP transcoder secondary
  drm/i915/cmtg: Add trigger to enable/disable cmtg
  drm/i915/cmtg: Restore CMTG after DC6 exit
  drm/i915/cmtg: Add CMTG interrupt handling

Dibin Moolakadan Subrahmanian (20):
  drm/i915/cmtg: Modify existing hook to disable CMTG
  drm/i915/cmtg: Add CMTG HWGB programming
  drm/i915/cmtg: Add CMTG scan line programming
  drm/i915/display: Remove TGL DC3CO support
  drm/i915/display: Switch DC3CO enable from standalone bit to DC level
    encoding
  drm/i915/display: Use FIELD_PREP() for DC state enable bits
  drm/i915/display: Add DC3CO DC_STATE enable/disable support
  drm/i915/display: Add HAS_DC3CO() macro
  drm/i915/display: Add DC3CO support check
  drm/i915/psr: Add psr2 deep sleep helper API
  drm/i915/display: Add DC3CO compute and set target state in commit
    tail
  drm/i915/display: Store DC3CO eligibility in PSR state
  drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
  drm/i915/display: Enable DC3CO idle protocol in ALPM
  drm/i915/display: PSR Add delayed work to exit DC3CO
  drm/i915/display: Add helper to enable DC counter
  drm/i915/display: Add DC3CO count and residency in dmc debugfs
  drm/i915/display: Guard CMTG function calls
  drm/i915/display: Enable DC3CO DC state
  drm/i915/display: Mask RO bits in gen9_write_dc_state()

 drivers/gpu/drm/i915/display/intel_alpm.c     |   5 +
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 277 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  17 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  11 +
 drivers/gpu/drm/i915/display/intel_display.c  |  96 +++---
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_device.c   |  14 +
 .../drm/i915/display/intel_display_device.h   |   3 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  19 ++
 .../gpu/drm/i915/display/intel_display_irq.h  |   2 +
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_power.c    | 176 ++++++++++-
 .../drm/i915/display/intel_display_power.h    |  40 +++
 .../i915/display/intel_display_power_well.c   |  73 +++--
 .../i915/display/intel_display_power_well.h   |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  20 +-
 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 265 ++++++-----------
 drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   4 +-
 27 files changed, 834 insertions(+), 273 deletions(-)

-- 
2.43.0

