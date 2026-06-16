Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hJ1lC214MWqmkAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF6692019
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PPNqi4g6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D1010EC25;
	Tue, 16 Jun 2026 16:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82A510E7C8;
 Tue, 16 Jun 2026 16:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781626985; x=1813162985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IK4KjTLBlNwJ3BL982RmpDdGDu4YxiJLvx4VEd6uQFg=;
 b=PPNqi4g6qhJfn2UEaqkhm+aZ4bAIwnoQ5mE419zG++NhoyuFNW6uyK5Z
 iP3OqrBGx7Z/tyTNdfWaxm+ucuo5WnOsC5PV4upBcHEIND7Y8QbQ4n0Sr
 BFf6CuAP+3IsjtgHFlsxml748rAS+X1CcILzeB6OZt2mmuInsGsoy0BRw
 7rswHzNIFJFUrLCdSIRWewWIcFR++KKZ1/QnstIx83gNRbfFsn3pJ3/xd
 mSBprX1gc4Tbb+guohsvqf3D1BnI+1/7vgHgaYPYDQtJZu5WguP5ebi1M
 6enPWkfKfZ/mFRgTmEvAPpzMtPfVM0kE0xfCoUCSZb0OyKOuazsAb7Gz1 w==;
X-CSE-ConnectionGUID: XBbQyT3SRL6ZoVL8hpohfQ==
X-CSE-MsgGUID: z23KLzjiSfirbYcXdvVDzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93781282"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93781282"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:04 -0700
X-CSE-ConnectionGUID: GuuWjYBATzSShyYM1iDIvg==
X-CSE-MsgGUID: XUE7cNxNRDedpuAGHHmzhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247693459"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:03 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v6 00/16] drm/i915/display: Add DC3CO support
Date: Tue, 16 Jun 2026 21:51:38 +0530
Message-ID: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2DDF6692019

This series adds initial DC3CO support for display version 35+ and adds
debugfs visibility into DC3CO count/residency.

The series also includes required PSR/ALPM updates for DC3CO enablement.

Changes in v2:
- Move dc3co state from intel_atomic_state to display->power
- Squash cleanup and related patches to reduce series from 19 to 13
  patches

Changes in v3:
- Fix trigger always returning zero in intel_dc3co_compute_state().

Changes in v4:
- Call intel_display_power_set_target_dc_state() only when
  DC3CO is supported.
- Add as_sdp_supported check for Panel Replay trigger.
- Add 1:1 pipe-port mapping check for display version 35
  in intel_dc3co_port_pipe_compatible() and change 
  dc3co eligibility compute logic.
- Re-arm DC3CO work in PSR resume, and schedule it 
  from intel_psr_post_plane_update() to cover cases
  where no PSR flush occurs.
- Remove dc state validation that could break the fallback mechanism.
- Keep dc5_reg initialization in the xe3lp debugfs
  to avoid invalid register access.

Changes in v5:
- Move dc3co functions to intel_display_power.c.
- Add psr2_deep_sleep helper API.
- Rename dc3co_eligible to dc3co_allowed
- Add DC3CO compute and set target state in commit tail.

Changes in v6:
- Add DC3CO allowed guard for intel_cmtg_program().
- Enable DC3CO DC state in allowed_dc_mask.

Dibin Moolakadan Subrahmanian (16):
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

 drivers/gpu/drm/i915/display/intel_alpm.c     |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  20 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_power.c    | 155 +++++++++-
 .../drm/i915/display/intel_display_power.h    |  38 +++
 .../i915/display/intel_display_power_well.c   |  49 ++--
 .../i915/display/intel_display_power_well.h   |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  14 +-
 .../drm/i915/display/intel_display_types.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 265 ++++++------------
 drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 16 files changed, 355 insertions(+), 224 deletions(-)

-- 
2.43.0

