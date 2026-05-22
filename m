Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAEfJWtdEGqDWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC05B55FD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB9710E577;
	Fri, 22 May 2026 13:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVrqYE5K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D1510E1ED;
 Fri, 22 May 2026 13:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457383; x=1810993383;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2YBEC4ut7dt+s4wBM3oYAlIZFsZ4zH8CkJvcRTBW5Ps=;
 b=JVrqYE5K6W5Igjln47gOnUdt/Zg/UsC1UUmPl5egQVfyuP+VGrDcB6yK
 PZYr6psJTo6R1MjyXgxtHUZn9FNbPzixQKWffqjIv2umMQDaMvyzxe71t
 Q6aEff2hUMKEeC4hNk5CU5wPpUwgcFtgoDK+2pzAqhbUokjsOOOkHME7H
 Oz+DxW7BIpuM0b+gTfM8LIT0QFQ5kJj+CCISmDy+N+iPcyyQ+gWGRe/vz
 0a2vbh+4FGaYolqTllTsWYZc245b8sJM+Cko4D4ACyf1rceMls13H8nPA
 sBsXVN1MTbRGJbOXC1o/xSSNtoIgNF2iX8ne5rgABtoYj42jydjCJfvH0 A==;
X-CSE-ConnectionGUID: iQtW+wmxSmK1hnNryJEPtQ==
X-CSE-MsgGUID: oh7m1iDNTnSJEZ36lLpxlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850593"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850593"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:03 -0700
X-CSE-ConnectionGUID: 5NpfBQZbT5yZaJNoJoCWww==
X-CSE-MsgGUID: 7s2VaSKCQFetscyYie5WQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317161"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/6] drm/i915/intel_panel: Fix seamless VRR mode switching for
 DRRS panels
Date: Fri, 22 May 2026 18:55:05 +0530
Message-ID: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 04DC05B55FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently intel_panel_fixed_mode() can return a lower refresh rate mode
for VRR panels if the lower refresh rate mode is first in the list.
This creates problems for seamless switch features like LRR and
Seamless-DRRS, as it results in changes to vsync_start/end causing a
full modeset instead of a seamless switch.

This is particularly problematic for DRRS panels on platforms without
double buffered M/N support for LNL+ (display version 20+), where
seamless clock changes are not possible.

This series attempts to fix this by:
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

Rev2:
 - Address Ville's comments to preserve Vtotal-Vsync distance while
   adjusting VTOTAL.
 - Address Manasi's comments to always go with highest RR mode
   irrespective of allow_modeset flag for modes that have same clock but
   different votal.

Rev3:
 - Drop patch to deprecate TRANS_VSYNC, instead add Vsync start/end in
   lrr codepaths. (Ville).
 - Fix the condition to avoid picking higher RR mode for DRRS panels
   when allow modeset flag is set.

Ankit Nautiyal (6):
  drm/i915/display: Handle VSYNC timing in LRR path
  drm/i915/panel: Preserve Vtotal-Vsync distance while adjusting vtotal
  drm/i915/intel_panel: Add a helper to get the highest refresh rate
    mode
  drm/i915/intel_panel: Pass crtc_state to intel_panel_compute_config
  drm/i915/intel_panel: Use highest refresh rate mode for VRR panels
  drm/i915/intel_panel: Refine VRR fixed mode selection for DRRS panels

 drivers/gpu/drm/i915/display/icl_dsi.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c   | 102 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_panel.h   |   9 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c    |   8 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |   2 +-
 9 files changed, 108 insertions(+), 30 deletions(-)

-- 
2.45.2

