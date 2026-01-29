Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJg4LpCYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:27:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB3B2DA3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B456910E89D;
	Thu, 29 Jan 2026 17:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EaWLbQKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD5710E89D;
 Thu, 29 Jan 2026 17:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707663; x=1801243663;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y2vOn2ZseL8wOiFziCkldY3AizndPL10R2YjuCqJNXs=;
 b=EaWLbQKzHmD9u7sVM2alJZSoLCQPgqbF1fBUV7IBvMGwlE1MAxqVeuzq
 iTRJyJH2l3oDFwion5GrjUfIGWphYTNA0jUD74ZVbMvCvMFoDZeKgwPeM
 h52GtSNrsJ1g9of6YgF1qskkTu5WYCXDgM39br3XTXQJMSrOThDt4lXBk
 VwvcbGajlX0PBAalXFxb68V8WjT766lCi8kCwmdEsOYM7O3smDwFrzk4/
 nGeYquZeH0KrttYabe25UvQgyHeihsMObA+EzpyZYrhrJFrdkNzwTiYMQ
 0yhQnZY+fS9BudaWE1cswFuPwbYqz1EB2bLDbCjpkKoYe1hFcmB4ODuu5 Q==;
X-CSE-ConnectionGUID: OFLeOx2bTlC3wzhBzAaYqA==
X-CSE-MsgGUID: YQdNpNdMQBqeOwarcfltaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926788"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926788"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:42 -0800
X-CSE-ConnectionGUID: jhW8bzckTGmdOkzwiaCM3A==
X-CSE-MsgGUID: zZhc65HNTgG0pLFX9FMstw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239360815"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/16] Account for DSC bubble overhead for horizontal slices
Date: Thu, 29 Jan 2026 22:41:38 +0530
Message-ID: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,patchwork.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 28EB3B2DA3
X-Rspamd-Action: no action

When DSC is enabled on a pipe, the pipe pixel rate input to cdclk frequency
and pipe joiner calculations needs to be adjusted to account for
compression overhead: specifically, the "bubbles" added at each horizontal
slice boundary. This overhead has always existed, even on earlier
platforms, but was not previously accounted for.

Currently, the number of joined pipes is computed much earlier than the
decision to use DSC: both during the mode_valid phase for each mode and in
the compute_config phase for a given mode. As a result, the DSC bubble
overhead cannot be considered when determining the number of pipes to join,
which may lead to incorrect configurations.

This series refactors the sequence of steps used to determine the number of
pipes to be joined and the DSC policy. The first few patches restructure
the mode_valid and compute config logic to make room for DSC bubble
overhead accounting. With these, we iterate over joiner candidates and
select the minimal joiner configuration that satisfies the
mode-requirements. The later patches introduce the actual overhead
adjustment and use it for: the minimum cdclk requirements with DSC,
SST mode_valid logic, and SST/MST compute_config logic.

Rev 2:
 - Refactor joiner computation for compute config.
 - Refactor DSC BW calculation.
 - Add overhead for SST/MST compute config phase for recomputing joiner
   requirements for DSC.
 - NOTE:
   - For Patch#7 (drm/i915/dp: Rework pipe joiner logic in mode_valid)
     git diff = --patience is used for better readability.

Rev 3:
 - Use diff = --patience in format-patch for better readability.
 - Add a macro to iterate over the joiner candidates.
 - Add a separate helper to check pixel rate against dotclock limit.
 - Add patch from Chaitanya for additional platform specific
   limitations [1].

[1] https://patchwork.freedesktop.org/patch/661952/?series=151047&rev=1

Rev 4:
 - Address review comments from Jani and Imre.
 - Drop enum for joiner candidates and iterate over num of pipes joined.
 - Rename some of the helpers.
 - Split the patch to check for pixel limit for max uncompressed
   dotclock into PTL and other platforms. For PTL the bspec and HSDES
   matches, but for other platforms need to confirm the need for the
   limits.

Rev 5:
 - Address comments from Imre.
 - Add a patch to remove joiner helpers that are no longer required.
 - Dropped the patch to replace the joiner loops with an iterator; will
   follow up this separately.
 - Modified the patch to enforce pixel limit for max uncomprssed
   dotclock for pre PTL platforms, and added the limit only for WCL.
   Limits for prior platforms is intentionally left to avoid regression
   on these platforms and deal with them if there are actual issues
   reported.
 - Use diff = --histogram as its seen to work better for this series as
   also suggested by Imre.

Ankit Nautiyal (14):
  drm/i915/dp: Early reject bad hdisplay in intel_dp_mode_valid
  drm/i915/dp: Move num_joined_pipes and related checks together
  drm/i915/dp: Extract helper to get the hdisplay limit
  drm/i915/dp: Rework pipe joiner logic in mode_valid
  drm/i915/dp: Rework pipe joiner logic in compute_config
  drm/i915/dp_mst: Move the check for dotclock at the end
  drm/i915/dp_mst: Move the joiner dependent code together
  drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
  drm/i915/dp_mst: Extract helper to compute link for given joiner
    config
  drm/i915/dp_mst: Rework pipe joiner logic in compute_config
  drm/i915/dp: Remove unused joiner helpers
  drm/i915/dp: Introduce helper to check pixel rate against dotclock
    limits
  drm/i915/dp: Refactor dsc_slice_count handling in
    intel_dp_mode_valid()
  drm/i915/dp: Account for DSC slice overhead

Chaitanya Kumar Borah (2):
  drm/i915/display: Add upper limit check for pixel clock
  drm/i915/display: Extend the max dotclock limit to WCL

 drivers/gpu/drm/i915/display/intel_display.c |  19 ++
 drivers/gpu/drm/i915/display/intel_display.h |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 321 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h      |  12 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 212 ++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.c    |   1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   3 +
 7 files changed, 395 insertions(+), 174 deletions(-)

-- 
2.45.2

