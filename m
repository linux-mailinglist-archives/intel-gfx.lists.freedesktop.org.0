Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK0KNBNV1mm8DQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:16:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDB23BCB3A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5E410E649;
	Wed,  8 Apr 2026 13:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBKDKIpM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E68010E63C;
 Wed,  8 Apr 2026 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775654158; x=1807190158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P3JfKXk42bl2Zs7kImU0G8YfT791pIQdeXmK0++efhM=;
 b=fBKDKIpMg7OmtyE0pqAXUL3zrzZwAckVyCCFvjvFeOXwISelQbHGbprs
 6EgVVtWn+xD3vxaKyKOXjAwfVnRNlgqbSfkBVCgfutNdFvmZBhz0hk8Vw
 XK9aroXrRnMQZ7adHSsWNGY6CWqCy27/invEuosti6yKxMHPLVfpkLGih
 W76Dt6vZcYQb2g9niiCrxaA4xvG3lTogcvIVtuEYW5m/riNUGSaBQiyht
 k5GzxdrIrFElYc6IxSLh1rJ+KPqQGlnYB8c2y253/ADRuwyzWO4GHe9U4
 WeBCSjdwlVDsHVppb3L1LZHeTnDp3Ty3aoXfMd2Ki89rcIgO2khNJFQpU A==;
X-CSE-ConnectionGUID: 1EoCo2wZS160UcN1bSGSpw==
X-CSE-MsgGUID: jRie1a6fSUOjY1D2SzB1Gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="88020308"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="88020308"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:15:58 -0700
X-CSE-ConnectionGUID: Rx//ZpfYQ3WV+JrNoDaL6A==
X-CSE-MsgGUID: YwbCdrY/SZuarPL7qFytYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227620915"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:15:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] drm/i915/display: start switching to display specific reg
 types
Date: Wed,  8 Apr 2026 16:15:47 +0300
Message-ID: <cover.1775653994.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0DDB23BCB3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_reg_t for display, initially as an alias to i915_reg_t, and
use it in display.

There are probably dragons in converting everything, especially with gvt
usage of _MMIO() macro, but one thing at a time. I didn't go further
this time, to avoid clashing with whatever Ville is doing with
uncore. Also, this was mostly sed, and should be easy enough to rebase
if this conflicts with the uncore stuff.

BR,
Jani.

Jani Nikula (4):
  drm/i915/display: add typedef for intel_reg_t and use it
  drm/i915/display: add struct intel_irq_regs and use it
  drm/i915/display: add struct intel_error_regs and use it
  drm/i915/display: define and use intel_reg_{offset,equal,valid}()
    helpers

 drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
 drivers/gpu/drm/i915/display/g4x_dp.h         | 10 ++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.h       |  6 +--
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  4 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 +--
 drivers/gpu/drm/i915/display/intel_crt.h      |  6 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 26 +++++-----
 drivers/gpu/drm/i915/display/intel_ddi.h      |  6 +--
 drivers/gpu/drm/i915/display/intel_de.c       | 30 +++++------
 drivers/gpu/drm/i915/display/intel_de.h       | 48 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +--
 drivers/gpu/drm/i915/display/intel_display.h  | 10 ++--
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 20 ++++----
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.c   |  8 +--
 .../drm/i915/display/intel_display_reg_defs.h | 35 +++++++++++++
 .../gpu/drm/i915/display/intel_display_regs.h | 50 +++++++++----------
 .../drm/i915/display/intel_display_types.h    | 12 ++---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 50 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 14 +++---
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  6 +--
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 28 +++++------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  8 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 32 ++++++------
 drivers/gpu/drm/i915/display/intel_dsb.c      | 22 ++++----
 drivers/gpu/drm/i915/display/intel_dsb.h      | 10 ++--
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 12 ++---
 .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 +++++------
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     |  6 +--
 drivers/gpu/drm/i915/display/intel_lvds.h     |  6 +--
 drivers/gpu/drm/i915/display/intel_mchbar.c   | 14 +++---
 drivers/gpu/drm/i915/display/intel_mchbar.h   |  8 +--
 .../gpu/drm/i915/display/intel_pch_display.c  | 14 +++---
 drivers/gpu/drm/i915/display/intel_pps.c      | 38 +++++++-------
 drivers/gpu/drm/i915/display/intel_psr.c      | 36 ++++++-------
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  6 +--
 drivers/gpu/drm/i915/display/intel_sdvo.h     | 10 ++--
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 10 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 10 ++--
 drivers/gpu/drm/i915/display/intel_vga.c      |  4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 16 +++---
 55 files changed, 377 insertions(+), 342 deletions(-)

-- 
2.47.3

