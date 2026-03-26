Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFd4C9SzxWnEAwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:31:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4681633C725
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9931010E68B;
	Thu, 26 Mar 2026 22:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YiLIeSLb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494D910E1CC;
 Thu, 26 Mar 2026 22:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774564304; x=1806100304;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DsyEp5s/YhgHTJkZ1GLqG4XcnOP9monPRWBrGCWXZL8=;
 b=YiLIeSLbR54oRhqCDygmfXojjAdu5gJAuG+lB0Yk5IRiiPIEegwaPqY8
 mehZf2zvkeGmy6lsMGZ2VQCrtIv9GHUylWi+aYuKG9Va+b1zpYvfFoDs4
 AavkneHTw6l33U23ZJedBLUnePqx7HgpJZ4lXWEvJ5CWw9hZ1oL0h1Jau
 7h0JBspWPMLBrgWOPVCF/XPWVoWmWHz9kmjkyc6ZPfwMKPc1wcT0E7AK3
 ojDUFQEhaUZgyDk/innDZiv+Vw/tP0UjBCEL96E+8DRONF2x0nqCqmmI0
 FidQyHRXU7ftiBR+c2Y9zXc4V6CuCPDylDr5SDHtBOuw/VMPr+umUQ0wJ Q==;
X-CSE-ConnectionGUID: I8fUkPYAT8Og6vOf8+zlQw==
X-CSE-MsgGUID: 5j6C4FfDTY21XP8ZY6Dtpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="78233014"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="78233014"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:31:44 -0700
X-CSE-ConnectionGUID: 0/KkAzSWSYiYXEFbQJk/Tw==
X-CSE-MsgGUID: 5Ow1ulgkQYOBfxCW2PJSNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="226769452"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:31:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter properly
 into the scaler code
Date: Fri, 27 Mar 2026 00:31:30 +0200
Message-ID: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4681633C725
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The sharpness filter isn't anything special. It's just another
mode of the pipe scaler, so treat is as such.

This gets rid of tons of special casing all over the place,
and will allow me to finally land the pending pipe prefill
series: https://patchwork.freedesktop.org/series/156137/

Note that this will fail some kms_sharpness_filter tests,
because those tests are basically incorrect. But I couldn't
decide yet how much of that entire test should be nuked. It
seems to be doing a *lot* of things, most of which have
nothing to do with the sharpness filter...

Cc: Nemesa Garg <nemesa.garg@intel.com>

Ville Syrjälä (9):
  drm/i915/casf: s/casf_enable/enable/
  drm/i915/casf: Make a proper hw state copy of the sharpness_strength
  drm/i915/casf: Move the casf state to better place
  drm/i915/casf: Extract scaler_has_casf()
  drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
  drm/i915/casf: Constify crtc_state
  drn/i915/casf: Remove redundant argument from
    intel_casf_filter_lut_load()
  drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
    (e)DP/HDMI
  drm/i915/casf: Integrate the sharpness filter properly into the scaler
    code

 drivers/gpu/drm/i915/display/intel_casf.c     | 102 +++++-----------
 drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
 .../drm/i915/display/intel_display_debugfs.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
 .../drm/i915/display/intel_modeset_setup.c    |   1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
 drivers/gpu/drm/i915/display/skl_scaler.c     | 110 +++++++-----------
 drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
 12 files changed, 112 insertions(+), 206 deletions(-)

-- 
2.52.0

