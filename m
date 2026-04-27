Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id n53yB8pC72kE/gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:04:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42651471740
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6970E10E6B1;
	Mon, 27 Apr 2026 11:04:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jaHkhEg5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26BC10E058;
 Mon, 27 Apr 2026 11:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777287878; x=1808823878;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nyn01qNrubzw8ywsmCHb4NJMI3YFqjPKuCzEcojY/KE=;
 b=jaHkhEg59TqibzbIvngTOaRG/ImcLPEiRmIhPTCxkc8mGOwKxEHlrMsq
 pPSYHF456xHcsZ9aGOaEPF5fCAJ1zKE+KeX27bVmgROjvR20kEy7lsBmg
 Xccnkppfpp/q5r+MD9wMhIB/re8Mg/Qs6jHU9PmlAY6ElhpNmHXWDDTCa
 3mnKg8mL8Ina5pGWeExarFbrDC+ijg0NQe+RZPzqiUqiwB1k7lf2133Rs
 EOrsh+3g2MuezX5+GMGGHUqMWc1LULZw7USRGfL6DF/CznRFkM8unkcnV
 /ZQtScIjPQ5RgJV+QRuDnzbbq1snxgW46t1qBP7Xg/Zomwi+0XvtR/1PZ A==;
X-CSE-ConnectionGUID: 9c9BOX+URfCDbHNtz60fSA==
X-CSE-MsgGUID: +YtrFVaRT2+tqx9Salr+LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78189044"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="78189044"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:04:38 -0700
X-CSE-ConnectionGUID: +6odCcOBT3WxSsSjSa0CpQ==
X-CSE-MsgGUID: 0peF5Lh2TBmL76v3huQWkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="256921674"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:04:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915: crtc iteration cleanups
Date: Mon, 27 Apr 2026 14:04:26 +0300
Message-ID: <cover.1777287836.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 42651471740
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

Some cleanups to crtc iteration.

Jani Nikula (6):
  drm/{i915,xe}: move xe_display_flush_cleanup_work() to i915 display
  drm/i915/display: switch from drm_for_each_crtc() to
    for_each_intel_crtc()
  drm/i915/display: always pass display->drm to for_each_intel_crtc*()
  drm/i915/display: pass struct intel_display to all
    for_each_intel_crtc*() macros
  drm/i915/display: stop passing i to for_each_*_intel_crtc_in_state()
    macros
  drm/i915/display: stop passing i to
    for_each_pipe_crtc_modeset_{enable,disable}()

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  32 +--
 drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  11 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 193 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |  80 ++++----
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../drm/i915/display/intel_display_trace.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |   2 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |   2 +-
 .../gpu/drm/i915/display/intel_global_state.c |   8 +-
 .../drm/i915/display/intel_initial_plane.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |   2 +-
 .../gpu/drm/i915/display/intel_load_detect.c  |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  32 +--
 drivers/gpu/drm/i915/display/intel_plane.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  38 ++--
 drivers/gpu/drm/xe/display/xe_display.c       |  27 +--
 34 files changed, 252 insertions(+), 305 deletions(-)

-- 
2.47.3

