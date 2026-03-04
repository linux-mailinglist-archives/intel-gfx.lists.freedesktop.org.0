Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOU3DTgwqGlPpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11A12002FD
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D7910E183;
	Wed,  4 Mar 2026 13:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHZ0lWmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F0B10E183;
 Wed,  4 Mar 2026 13:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630068; x=1804166068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9MCSKF1IS82SbmQJUCeWLW3i2LM/Yx04Hf7WJ73aczE=;
 b=aHZ0lWmNxB/10DvcayUGGqDoXwP+lWe73mNH6WDMy1ydyRpn3q4/yq4R
 B7LwLjc+DBpozPejYyMZN3vsJw+uDx9hl1GPoJ4/+VnnpuUQAxqrHtPsA
 3Tvgd0YuNJdrqD1TuYqveGYP7SHRxmKy/qAtwmnD5STKqnVoOURtS17jC
 /MVuNlRfpKY69j2Jg4Ba4t3xTRT3rjCbdx3FutZWfXHYIZlbGz8wgEhty
 YFM4lxgm8XTxoxb3bnnkkqRo1BMVuBvvCkJPOPHaq6LEoksIv86UuuRfJ
 ignYd6quMWhB5MY8xzRdvjrbRXKH/4xChcnJYLBioSL0Jmq34vo7Gfrfd A==;
X-CSE-ConnectionGUID: yIIEN7e8R+2vkfnocDUM0w==
X-CSE-MsgGUID: /jHJdSecRzCoEDezYmAb9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293447"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293447"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:26 -0800
X-CSE-ConnectionGUID: DYLkna+TQYCuL+66LJIn7A==
X-CSE-MsgGUID: cOtqmElnTLu6A06NLcTK3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350733"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:26 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 00/24] Refactor LT PHY PLL handling to use DPLL framework
Date: Wed,  4 Mar 2026 13:13:59 +0000
Message-ID: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: B11A12002FD
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

This is v2 of [1], with the following changes
 - Split .enable_clock/disable_clock patch into separate, smaller patches
 - Use PCLK ack register to check if PLL is locked or not
 - Commit message updates

[1] https://lore.kernel.org/intel-gfx/20260213122615.1083654-1-mika.kahola@intel.com

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
  drm/i915/lt_phy: Replace crtc compute clock
  drm/i915/lt_phy: Add .enable_clock hook on DDI
  drm/i915/lt_phy: Add .disable_clock hook on DDI
  drm/i915/lt_phy: Dump lane count for HW state
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
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 175 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 194 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  26 ++-
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 10 files changed, 319 insertions(+), 173 deletions(-)

-- 
2.43.0

