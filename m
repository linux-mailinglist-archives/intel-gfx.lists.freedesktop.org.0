Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIZ9DGVdnGmkEwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:00:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD6E17794A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD64A10E3D7;
	Mon, 23 Feb 2026 14:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJtAREBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4233E10E3D3;
 Mon, 23 Feb 2026 14:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771855201; x=1803391201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2eqLmW3Q9stjnz4EBfBsjYNQn4CKvsCYHrBdKIx1jNM=;
 b=YJtAREBBjzEpyQZdWtiirJ0lc+YpXJLoyHXtq0oRKoqc99/dDr3LKZvP
 Fxqm5aitlSXW+z9O2LJX0p0F9gTQ/hSI6NRZXscjS/SzLOsqJRiGv+w5b
 W6QjsFezl9z3W/sqbksI4NDX/rAtYcW8P2LB1pw71v1Ef++cVX6zcHNg2
 Vvk/YzgAx2l8QNu/ypri+eQ3S/OanpqRA+IQbic91ZCGZvgCdYqbRULk0
 iR9blEwNrANBHqwzIR0rLPjbknq6ZQzvqmyg2JG4Zy2KDxmrmFiAxyTqp
 bZT07kxrPwCHItuIe/61HpR66EMHkXhhiLiX2EsxSWrxdCp2fp5MrFvZ9 Q==;
X-CSE-ConnectionGUID: LrLai4hbQaejdR0J5uULkg==
X-CSE-MsgGUID: DgXwLzcbQ5ycvKbkEAboHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="72827028"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="72827028"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:00:01 -0800
X-CSE-ConnectionGUID: pNQe17viTcaRcqKBog4jzw==
X-CSE-MsgGUID: yeow5yx7TUeX2NLG7572qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="212961147"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:59:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/14] Fix Adaptive Sync SDP for PR with Link ON + Auxless ALPM
Date: Mon, 23 Feb 2026 19:14:17 +0530
Message-ID: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7DD6E17794A
X-Rspamd-Action: no action

Enable Adaptive Sync SDP for Panel replay + auxless ALPM.
First few patches are fixes in existing AS SDP enablement.
Later patches add the support to send AS SDP for Panel replay with Link
ON and with auxless ALPM (Link-Off). 

This series is in continuation from discussions in [1] [2] and more
recent [3]:

Apart from few patches from [3] new changes include:
- Add AS SDP version and PR and VRR specific bits in drm_dp.h.
- Modify AS SDP compute config to accomodate PR with Link On and Link
  Off.
- Program Downspread Ctrl DPCD bits.
- Make way for T1 and T2 AS SDP transmission timing/position.

Note:
Currently I have enabled AS SDP for either VRR or Panel Replay. However
in view of the optimized guardband, perhaps we should always enable AS
SDP whenever supported. That way we will always take the AS SDP constraints
into account while computing the optimized guardband.

[1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
[2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/
[3] https://lore.kernel.org/intel-gfx/7c2d6f4e-69e6-452a-89cc-5fd4254430bd@intel.com/T/#m6e8beab2cc3b6ff9d61f740f107d83a2f4e08114

Ankit Nautiyal (14):
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
  drm/i915/dp: Add a helper to decide if AS SDP is needed
  drm/i915/dp: Update the helper intel_dp_needs_as_sdp() for CMRR
  include/drm/display/dp: Add field for storing AS SDP version
  drm/i915/dp: Use version field of AS SDP data structure
  drm/i915/dp: Compute AS SDP after PSR and LOBF
  drm/i915/dp: Add AS SDP support for PR with link ON
  drm/i915/psr: Add helper to check if PR is with link OFF
  drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for PR + Auxless
    ALPM
  drm/i915/dp: Program AS SDP DB[1:0] for PR with Link off
  include/drm/display/dp: Add DPCD registers for configuring Panel
    Replay + VRR
  drm/i915/display: Add member to store AS SDP transmission time
  drm/i915/dp: Account for AS_SDP guardband only when enabled

 drivers/gpu/drm/display/drm_dp_helper.c       |  1 +
 drivers/gpu/drm/i915/display/intel_alpm.c     | 21 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 48 ++++++++++++++-----
 .../drm/i915/display/intel_dp_link_training.c | 10 +++-
 .../drm/i915/display/intel_dp_link_training.h |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 +++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 10 ++++
 include/drm/display/drm_dp.h                  |  9 ++++
 include/drm/display/drm_dp_helper.h           |  1 +
 13 files changed, 105 insertions(+), 18 deletions(-)

-- 
2.45.2

