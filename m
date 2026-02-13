Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICZMLHAYj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44694136023
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9245110E7E9;
	Fri, 13 Feb 2026 12:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HnfMFGCa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB7A10E7E7;
 Fri, 13 Feb 2026 12:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985581; x=1802521581;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lz+AKENVvM6Mu58PRHeS3J/OO5bLgZN4YCImT3S0l6I=;
 b=HnfMFGCatZ20s1int5D0o176dkL8ouIoFoiCvNceDZ+6vXWBoTEYFHh9
 2rqS0egtKu2pBxtQHNM2gmhz4qEB/bg6f7eS1F9AhUAb2e7eFb5VtgHY+
 AZnXMjaXDgUIBX6xlX+XFLdkouA9B9HhNIaYNHoZuQvQ6534IOj4DoNWe
 rUVHZUCmYzISee4aIpABp08hd/PJWK/PC8otv9jHiACnYlAJQm/7d1PFW
 2oxpIkdtVaGgEgaWBEHkkNBWkSFKXS9AboOWep42v4E1ofMmfmZNnNrbE
 o4j0B4d2MjA4BGL8mm0iiW7+ouLbXCcBWLnarPynIRNjPIreGjn8rR7d7 A==;
X-CSE-ConnectionGUID: G7QaXlA5Rq+cNTE6xmCqSA==
X-CSE-MsgGUID: q4Z2s82nTZ+72lC11PiAow==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158103"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158103"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:21 -0800
X-CSE-ConnectionGUID: nEUHm9vrT2SBqeAX+68jEA==
X-CSE-MsgGUID: IrlBWdiKTDC6dXOoLKsSDw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 00/19] Refactor LT PHY PLL handling to use DPLL framework
Date: Fri, 13 Feb 2026 12:25:56 +0000
Message-ID: <20260213122615.1083654-1-mika.kahola@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 44694136023
X-Rspamd-Action: no action

Refactors LT PHY PLL handling to route it through the existing
DPLL framework.

Currently, LT PHY PLL control lives in standalone code paths separate
from the DPLL infrastructure. This results in duplicated logic and
special-case handling in the display enable/disable paths.

The series consolidates LT PHY PLL handling under the current DPLL
abstractions. The changes are mechanical in nature and do not introduce
any new DPLL infrastructure.

Intended behavior is unchanged.

Summary:
  - Move LT PHY PLL state handling under DPLL structures
  - Wire LT PHY PLL enable/disable through DPLL hooks
  - Remove redundant standalone LT PLL code paths

Mika Kahola (19):
  drm/i915/lt_phy: Dump missing PLL state parameters
  drm/i915/lt_phy: Add check if PLL is enabled
  drm/i915/lt_phy: Add PLL information for xe3lpdp
  drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
  drm/i915/lt_phy: Add xe3plpd .get_dplls hook
  drm/i915/lt_phy: Add xe3plpd .put_dplls hook
  drm/i915/lt_phy: Add xe3plpdp .update_active_dpll hook
  drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks hook
  drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
  drm/i915/lt_phy: Add xe3pldp .compare_hw_state hook
  drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
  drm/i915/lt_phy: Add xe3plpd .get_freq hook
  drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
  drm/i915/lt_phy: Add .enable_clock/disable clock on DDI for xe3plpd
    platform
  drm/i915/lt_phy: Readout lane count
  drm/i915/lt_phy: Get encoder configuration for xe3plpd platform
  drm/i915/lt_phy: Add xe3plpd Thunderbolt pll hooks
  drm/i915/lt_phy: Remove LT PHY specific state verification
  drm/i915/lt_phy: Enable dpll framework for xe3plpd

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  26 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  32 ---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  26 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 170 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 200 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  26 ++-
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 10 files changed, 322 insertions(+), 171 deletions(-)

-- 
2.43.0

