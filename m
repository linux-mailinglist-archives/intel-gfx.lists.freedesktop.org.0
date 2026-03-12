Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DjHFid0smlbMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B832D26E997
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4716810E99A;
	Thu, 12 Mar 2026 08:07:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTrnB6uZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175B110E993;
 Thu, 12 Mar 2026 08:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302820; x=1804838820;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jEajqlmYY/1bwuPzfjmV614O/pswEdM84I1y7ZNPZyM=;
 b=MTrnB6uZlPtgYrMiE/85A8xZ3O4vKFS5TuCqsY0Yw7Sj8kLRcqiP4/VX
 oe4UQ+ZPfisU0cHhH7iJ4JUowV2Y4Cn0T/8CgsEgYMAIbdlTL55VzsdOs
 qgKZk0VQROV8OWqhll0Io0xBdIOHq+GJyGJULIABoSPWyfQ+BzhTkDoAo
 sch+HjjGC5h1Lswix5bIX8Kn78qmgUXFYoxeBTfZ1t3KOQKvhmdb89k4T
 hnPJixx29rEFy990K4CqRYyxmrSa6TMqWWU9HhIlU+1NvpFzMVAfEkWtJ
 6Kn4k8gNchkFTRt8/UuDWxfTMIR2k37hNpvtmNfZUbv6YSwyI84YW4Gza A==;
X-CSE-ConnectionGUID: Zb3pYMZdRLuqH0qcWpgiwQ==
X-CSE-MsgGUID: n5/isL6lQ9iMtfCXX7qRoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013710"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013710"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:06:59 -0700
X-CSE-ConnectionGUID: 9HJ1kzD5T/65HkJyJzA9Lw==
X-CSE-MsgGUID: 0gbBV3N8TvWPf0xYR6EWxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206767"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:06:59 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI v3 00/24] Refactor LT PHY PLL handling to use DPLL framework
Date: Thu, 12 Mar 2026 08:06:33 +0000
Message-ID: <20260312080657.2648265-1-mika.kahola@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B832D26E997
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is v3 of [1], with the following changes
 - Reorder patches to maintain bisectability
 - Drop xe3plpd specific DDI enable_clock/disable_clock hooks and reuse
   MTL intel_mtl_pll_enable_clock() and intel_mtl_pll_disable_clock()
   hooks instead
 - Commit message updates

[1] https://lore.kernel.org/intel-gfx/20260304131423.1017821-1-mika.kahola@intel.com/

Mika Kahola (24):
  drm/i915/lt_phy: Dump missing PLL state parameters
  drm/i915/lt_phy: Add check if PLL is enabled
  drm/i915/lt_phy: Add PLL information for xe3plpd
  drm/i915/lt_phy: Refactor LT PHY PLL handling to use explicit PLL
    state
  drm/i915/lt_phy: Add lane_count to PLL state
  drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
  drm/i915/lt_phy: Add xe3plpd .get_dplls hook
  drm/i915/lt_phy: Add xe3plpd .put_dplls hook
  drm/i915/lt_phy: Add xe3plpd .update_active_dpll hook
  drm/i915/lt_phy: Add xe3plpd .update_dpll_ref_clks hook
  drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
  drm/i915/lt_phy: Add xe3plpd .compare_hw_state hook
  drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
  drm/i915/lt_phy: Add xe3plpd .get_freq hook
  drm/i915/lt_phy: Add xe3plpd .crtc_get_dpll
  drm/i915/lt_phy: Add .enable_clock hook on DDI
  drm/i915/lt_phy: Add .disable_clock hook on DDI
  drm/i915/lt_phy: Dump lane count for HW state
  drm/i915/lt_phy: Readout lane count
  drm/i915/lt_phy: Get encoder configuration for xe3plpd platform
  drm/i915/lt_phy: Add xe3plpd Thunderbolt PLL hooks
  drm/i915/lt_phy: Remove LT PHY specific state verification
  drm/i915/lt_phy: Enable dpll framework for xe3plpd
  drm/i915/lt_phy: Replace crtc compute clock

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  26 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  32 ---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  26 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 186 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 193 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  23 ++-
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 10 files changed, 320 insertions(+), 179 deletions(-)

-- 
2.43.0

