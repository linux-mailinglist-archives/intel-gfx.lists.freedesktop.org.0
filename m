Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGotLUd08GngTgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 10:48:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463CF480847
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 10:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F9B10E319;
	Tue, 28 Apr 2026 08:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XtccGLYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E6810E2F7;
 Tue, 28 Apr 2026 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777366085; x=1808902085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IRAF5zhru/eFAdZIN2pA1DvNsp9shPsXdvm8s/M4BQI=;
 b=XtccGLYbey3ns7pOPQ2tmIXfLPEH03fhCyxHMhhKg2B2voacUvVIbXAe
 eORJqZvB6U4VgGvV3KSLDXmXgj0jMUWwxwVv2EIiAVEImZHinSV1EmTQs
 e7lYaf51wY2JmCBVLHixS5kDFqH/AXe8m7hi4fGPeeVAUtGPLvyat8I4T
 SVBUk6PcrJqpGP34Y0jyvfLe4LTAKC6pvUUF7+b5g4QhYl6mU9s5juVOU
 /RzuIGgyIeCuuF+8cgZBMJ7+V94BJ235DjPjNMIt6HT/yD9ASRPwyEoI/
 O49xhIOhsVA18LvhfeAzgV27I4xbBp6G4CRxBv+YgvGhDNG9fsXApS9qL A==;
X-CSE-ConnectionGUID: N2CIJ9h+TNWOzgJITRy5tA==
X-CSE-MsgGUID: c957NrdwRqm9FnPQ5BhHyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89357629"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89357629"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:48:04 -0700
X-CSE-ConnectionGUID: 9bip5/eNSfOCuC8Z4jJb8Q==
X-CSE-MsgGUID: M+cqAYNyS0KIvr0F/zywjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="229538619"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:48:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] drm/i915/intel_panel: Fix seamless VRR mode switching for
 DRRS panels
Date: Tue, 28 Apr 2026 14:03:21 +0530
Message-ID: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Rspamd-Queue-Id: 463CF480847
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]

Currently intel_panel_fixed_mode() can return a lower refresh rate mode
for VRR panels if the lower refresh rate mode is first in the list.
This creates problems for seamless switch features like LRR and
Seamless-DRRS, as it results in changes to vsync_start/end causing a
full modeset instead of a seamless switch.

This is particularly problematic for DRRS panels on platforms without
double buffered M/N support for LNL+ (display version 20+), where
seamless clock changes are not possible.

This series attempts to fixe this by:
1. Adding a helper to get the highest refresh rate mode from the list of
   fixed modes for a connector.
2. When a seamless switch to a lower mode is desired, making
   intel_panel_fixed_mode() return the highest refresh rate mode,
   provided the requested rate is in VRR range. The vblank is then
   extended to provide the desired refresh rate.

To determine whether a full modeset or seamless switch is intended, the
connector state is checked for the allow_modeset flag. A nullable
conn_state parameter is added to intel_panel_fixed_mode() and
intel_panel_compute_config() for this purpose.

Ankit Nautiyal (2):
  drm/i915/intel_panel: Add a helper to get the highest refresh rate
    mode
  drm/i915/intel_panel: Use highest refresh rate mode for seamless VRR
    changes

 drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c    |  6 +--
 drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 50 ++++++++++++++--------
 drivers/gpu/drm/i915/display/intel_panel.h |  8 +++-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
 9 files changed, 54 insertions(+), 34 deletions(-)

-- 
2.45.2

