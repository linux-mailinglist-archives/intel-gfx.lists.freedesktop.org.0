Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL5tBIYY1mkxBAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:57:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B228D3B9680
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBF110E59D;
	Wed,  8 Apr 2026 08:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAR8RUjz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B1C10E5A4;
 Wed,  8 Apr 2026 08:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638658; x=1807174658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KM3H4mvGgcmcwYaJ0vMxVqfVQlSvjcWp62H1r2n8rIA=;
 b=DAR8RUjzvZ41WZLyLesqwCfhy47lEgvDFH99Jw2SuQPHFmPuVQludVNR
 yRp8GwB19dEJVuCYLNEC+g+LqWTwCjCf6k2n799/Tge6sK9BUuT5x4cu8
 xbIfPo39MtLIFdKz5yTFeW1o36880onQU3AkExD9YdQeOI8J7vjmcsdHw
 Bhk20hFIdb28Un1I5E/eNh0oJJqYaiMoSV5uXNIiDC95zMHJIlWy6Npmv
 4lLqc08TzCpnnkpAxM1ACMfwc+yY2tVOtTWCYsSzqKblMvUJ5oT0n/iFp
 KyxEuE2yWiaHsE81e8Ly/a/9FHGLMJOqOhAElWQHmibJ0Vep9p2dnD1e7 A==;
X-CSE-ConnectionGUID: iEazX66XRUuXLucfvoJsZg==
X-CSE-MsgGUID: 6FABCHCxSVmkHO0kpqNnXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76516582"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76516582"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:57:37 -0700
X-CSE-ConnectionGUID: 8C51P7KeTryQBomQm0cFtA==
X-CSE-MsgGUID: Jro53ta6R2OgQYfWiWsCtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227572422"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:57:35 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/26] Fix Adaptive-Sync SDP for PR with Link ON + Auxless-ALPM
Date: Wed,  8 Apr 2026 14:12:12 +0530
Message-ID: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B228D3B9680
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable Adaptive Sync SDP for Panel replay + auxless ALPM.
First few patches are fixes in existing AS SDP enablement and drm core
changes for Panel replay with SDP.
Later patches add the support to send AS SDP for Panel replay with Link
ON and with auxless ALPM (Link-Off). 

This series is in continuation from discussions in [1] [2] [3]
and is actually revision 5 of the series [4].

While sending patches Rev 3 of [4], patchwork encountered an issue and
somehow dropped few patches from the series, and created new patchwork
links with incomplete list of patches for rev 3 and 4. With this CI couldnt
pick up the series for testing.

To avoid further confusion and more patchwork links with missing patches,
I am modifying the subject of the series to create new 'final' patchwork
link (with a hope that patchwork doesn't miss anymore patches) for which
we can get the CI results.

As the first few drm core changes get reviews, I intend to send those
separately and get them merge next.

[1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
[2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/
[3] https://lore.kernel.org/intel-gfx/7c2d6f4e-69e6-452a-89cc-5fd4254430bd@intel.com/T/#m6e8beab2cc3b6ff9d61f740f107d83a2f4e08114
[4] https://patchwork.freedesktop.org/series/161977/#rev2

Changes from last revision of Series [4]
 - Add helper to print SDP version in the logs and use it.
 - Fill missing sdp_type field in AS SDP unpack.
 - Check PR support also in helper
   intel_psr_pr_async_video_timing_supported()
 - Add #TODO to check Display ID 2.0 blocks for AS SDP for determining
   AS SDP v2 support.
 - Check if PR is enabled along with AS SDP enable before setting
   relevant Downspread CTRL DPCD bits.

Ankit Nautiyal (26):
  drm/dp: Rename and relocate AS SDP payload field masks
  drm/dp: Clean up DPRX feature enumeration macros
  drm/dp: Add bits for AS SDP FAVT Payload Fields Parsing support
  drm/dp: Add DPCD for configuring AS SDP for PR + VRR
  drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
  drm/dp: Add a helper to get the SDP type as a string
  drm/dp: Add target_rr_divider field in AS SDP logging
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
  drm/i915/dp: Account for AS_SDP guardband only when enabled
  drm/i915/dp: Add a helper to decide if AS SDP can be used
  drm/i915/dp: Skip AS SDP for DP branch devices
  drm/i915/dp: Use revision field of AS SDP data structure
  drm/i915/dp: Set sdp_type in AS SDP unpack
  drm/i915/dp: Include all relevant AS SDP fields in comparison
  drm/i915/psr: Add helper to get Async Video timing support in PR
    active
  drm/i915/dp: Add member to intel_dp to store AS SDP v2 support
  drm/i915/dp: Allow AS SDP only if v2 is supported
  drm/i915/psr: Write the PR config DPCDs in burst mode
  drm/i915/display: Add helper for AS SDP transmission time selection
  drm/i915/psr: Program Panel Replay CONFIG3 using AS SDP transmission
    time
  drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for PR + Auxless
    ALPM
  drm/i915/dp: Program AS SDP DB[1:0] for PR with Link off
  drm/i915/dp: Split AS SDP computation between compute_config and
    compute_config_late
  drm/i915/dp: Compute and include coasting vtotal for AS SDP
  drm/i915/dp: Always enable AS SDP if supported by source + sink

 drivers/gpu/drm/display/drm_dp_helper.c       |  39 +++-
 drivers/gpu/drm/i915/display/intel_alpm.c     |  20 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 187 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_link_training.c |  15 +-
 .../drm/i915/display/intel_dp_link_training.h |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  40 ++--
 drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  10 +
 include/drm/display/drm_dp.h                  |  20 +-
 include/drm/display/drm_dp_helper.h           |   1 +
 14 files changed, 288 insertions(+), 62 deletions(-)

-- 
2.45.2

