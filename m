Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KWJOKlY82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878924A36A5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D454410E278;
	Thu, 30 Apr 2026 13:27:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MJVZrMpo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00D010E402;
 Thu, 30 Apr 2026 13:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777555622; x=1809091622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7ciEt+6Cwvk1amiFekkaqrQdGnMkdRI/J8yDvgkQoXw=;
 b=MJVZrMpoRDnyJ1OH/Ui0lGsFl8KMvdb7WzxOZPQ7tVIZnG8BW36pqO7I
 WxXO2iDlzzAiNWdiC8XrWQ3FJZJsPVplGjfQNmkTD1T6pDVfVTYfiHlg2
 5G7rljbEbew+wg5CsxTvrlwIZzYqas15hSeIlcJnRarb5P7ea/AkLyBTD
 TmburWlToKKFTHnjT1VT8dFCPMv++/9TSMfqgk2nl6HTNj/E2nBJ932/T
 rNLJMvMjbhb5QBoTyb6N/nfXRTDHgDaKrnuU42OsGpyO+LDzDRoi8tF+U
 bYeubyWalrccCzZehXR0WtnkE5jU6GZ+Plow5WINiQ/I9sfs/OJTBrbpU g==;
X-CSE-ConnectionGUID: jdOfadUCTMCz/vGaQogIIA==
X-CSE-MsgGUID: sUOaolpOTlyVkSld96dMcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78398718"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78398718"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:02 -0700
X-CSE-ConnectionGUID: EJzjVB5bRUa63AuYVFu5Wg==
X-CSE-MsgGUID: P6gRI9a2TWih8Mn8SE00ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="257919840"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:26:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] drm/i915/intel_panel: Reduce redundant
 intel_panel_fixed_mode() calls
Date: Thu, 30 Apr 2026 18:42:15 +0530
Message-ID: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 878924A36A5
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

This series addresses feedback from Jani Nikula to reduce
intel_panel_fixed_mode() calls in encoder code [1].

Currently, encoder code calls intel_panel_fixed_mode() directly to check
for or get fixed mode state, then calls intel_panel_mode_valid() or
intel_panel_compute_config(), which repeat the lookup internally.

This series avoids those redundant calls by:
 - Extending intel_panel_mode_valid() to return the effective target clock
   via out parameter
 - Dropping direct intel_panel_fixed_mode() calls from encoder mode_valid
   paths
 - Dropping redundant fixed mode checks from compute_config paths

Note: intel_sdvo.c retains two intel_panel_fixed_mode() calls in
intel_sdvo_create_preferred_input_timing() and intel_sdvo_pre_enable()
as they seem to indeed need the fixed modes.
It might need a bit more work to get rid of them.

[1] https://lore.kernel.org/intel-gfx/0fb737c2484e116721b944befff146d9069ecee3@intel.com/

Ankit Nautiyal (5):
  drm/i915/intel_sdvo: Check fixed_mode->clock against max_dotclock in
    mode_valid
  drm/i915/intel_panel: Avoid calls to intel_panel_fixed_mode() in
    mode_valid
  drm/i915/intel_dvo: Drop call to intel_panel_fixed_mode() from
    compute_config
  drm/i915/intel_sdvo: Drop call to intel_panel_fixed_mode() from
    compute_config
  drm/i915/dp: Drop call to intel_panel_fixed_mode() from compute_config

 drivers/gpu/drm/i915/display/intel_dp.c    | 12 +++------
 drivers/gpu/drm/i915/display/intel_dsi.c   |  7 +++---
 drivers/gpu/drm/i915/display/intel_dvo.c   | 29 ++++++----------------
 drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +++---
 drivers/gpu/drm/i915/display/intel_panel.c |  9 ++++++-
 drivers/gpu/drm/i915/display/intel_panel.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 11 +++++---
 7 files changed, 34 insertions(+), 44 deletions(-)

-- 
2.45.2

