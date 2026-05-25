Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL2zA87gE2qzGwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 282D05C5FA0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBCC10E3D2;
	Mon, 25 May 2026 05:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vvk/KtQi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2024910E3CC;
 Mon, 25 May 2026 05:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779687626; x=1811223626;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yH7hRB7Tu4cvzkZ1H9plqpZp0PwMp0AMJ3RRB4pPd+M=;
 b=Vvk/KtQiwyXY57pJY/GSWr51FIAiGgvD6zujFzIFWHVPG1AX56BT1Azz
 EtlQAnmw/pNhJ4jNWkjhgEmuUajEvZ0U5ia/DXmoWT7zuZ0RI7F3SzeJB
 jg2Qx9muskPGsBitrfIIafztibnTZARGFqbxTUFuOznH+fY4urGFR7fWF
 HqOl7Gcxh6Jav1g6HX/LHB2aSqBKXLO+OfC417U5FPFlusTQtBGe63vbA
 tYweqOdnxudWhWJ7LvbsMW1v3R9Uzutckmb4jrB7+kwhtv4vx6+iGkrCG
 gPr5HGXn/OGO4wA8TPos+k2c7QZCvbpSiXT/6Tf+zID7HR6rVHvmwTmq+ Q==;
X-CSE-ConnectionGUID: PyhlL/FBR9mWXf5kctHKUA==
X-CSE-MsgGUID: z76LEGkWReKZfJmlzCvu0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="68030782"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="68030782"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:26 -0700
X-CSE-ConnectionGUID: PpSYzsibQmyMiwB0axCgqQ==
X-CSE-MsgGUID: ZZ6NYKaiSlyXCgZoptt21g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="237306441"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/11] Fix Adaptive-Sync SDP for PR with Link ON + Auxless-ALPM
Date: Mon, 25 May 2026 10:52:24 +0530
Message-ID: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 282D05C5FA0
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

Rev 5:
 - Since all DRM core changes and PCON related fixes are merged, rebase
   the remaining patches.

Rev 6:
 - Re-spin of previous 11-patch series with one previously omitted patch
   added as 12/12. Patches 1-11 are unchanged from previous revision.

Rev 7:
 - Address review comments form Ville.
 - Drop patch to split AS SDP computation between compute_config and
   compute_config_late.

Ankit Nautiyal (11):
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
  drm/i915/dp: Compute and include coasting vtotal for AS SDP
  drm/i915/dp: Enable AS SDP whenever VRR is possible
  drm/i915/dp: Account for AS_SDP guardband only when enabled

 drivers/gpu/drm/i915/display/intel_alpm.c     | 20 +++-
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 96 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 +
 .../drm/i915/display/intel_dp_link_training.c | 20 +++-
 .../drm/i915/display/intel_dp_link_training.h |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 +++++---
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 10 files changed, 161 insertions(+), 27 deletions(-)

-- 
2.45.2

