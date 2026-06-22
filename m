Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 36aLFM2qOWqOwAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAFB6B2835
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lDPMKuPp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6EF10E8BB;
	Mon, 22 Jun 2026 21:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2DA10E871;
 Mon, 22 Jun 2026 21:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782164169; x=1813700169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BIfpUsn/0OSrfLZGMqDoPrNmWunHZK6NnheRC5tKfDU=;
 b=lDPMKuPptY6WNW4caDsNlwro5MiQsyBzN100SbgwVSbwwFAVxgWnAT3I
 uNHAEuBRdDT1VDw8PMmcxsIt3GkbNZ6adx+X+kjz4jrXV5X5jHkNSNsD0
 VSaToMPwF75zFiROGmM6WjIGz2skrejtxnRAmw+d8p2CrrysKwFrN2pUL
 +XbPx4QJeC6UPUebD+n4oYZx4CP46+7OVxIaMiGDJJHGj9ohcjhw5mAsw
 OUK13pJzmCaynAN1BSMV9tuAJt1yJCiJbIC2Iwt5ogvzoAgAILBWt1oeE
 jwVrPlqE5/+6xieUEEHpUssEeioIsrEZYOHiscYpBgtcMhWULG8IYFHS7 w==;
X-CSE-ConnectionGUID: Mb75aceAS1GgoezdqrQwCg==
X-CSE-MsgGUID: bjQGQOFfRu6MmZdvP9CfMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="86812055"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="86812055"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:08 -0700
X-CSE-ConnectionGUID: SfiLt37+TbmlPekVkdVimA==
X-CSE-MsgGUID: vG+sxAf3TA+oE5F4x+eKKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="253229744"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:06 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 0/5] drm/i915: Work harder to enable VRR based refresh rate
 changes on eDP
Date: Tue, 23 Jun 2026 00:35:57 +0300
Message-ID: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFAFB6B2835

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Tweak the eDP fixed mode selection algorithm to allow
userspace to do refresh rate changes on VRR capable
eDP panels without full modesets.

v2: Cleaner split for VRR vs. fixed refresh rate fixed mode
    selection to avoid some corner cases

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Ville Syrjälä (5):
  drm/i915/panel: Split VRR vs. fixed refresh rate fixed mode selection
    into separate stages
  drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
  drm/i915: Pass the full atomic state to .compute_config()
  drm/i915/panel: Adjust intel_panel_compute_config() calling convention
  drm/i915/panel: Attempt VRR based refresh rate change for
    !allow_modeset

 drivers/gpu/drm/drm_modes.c                   |  23 +++
 drivers/gpu/drm/i915/display/g4x_dp.c         |   5 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   5 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   9 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 167 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_panel.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   7 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   5 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   5 +-
 include/drm/drm_modes.h                       |   1 +
 19 files changed, 203 insertions(+), 79 deletions(-)

-- 
2.53.0

