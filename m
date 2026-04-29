Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCuGM5WI8WnNhgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 06:27:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4D248F329
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 06:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BD210E3B9;
	Wed, 29 Apr 2026 04:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jn6x21sH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D674410E3B9;
 Wed, 29 Apr 2026 04:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777436818; x=1808972818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R42L8YlcKAalxMGhiB8Axf77o25EHikqKzkhzskCMfs=;
 b=jn6x21sHj8VnQKfwOpOE5T814Z7YiIpQsHWPRFvFTjhUwmGQwQC8cm/C
 h5u6MtdRHe02z9yYKQnqmCKBX7wEr1YHriBaHs1RgRAq2HtO/ctlM9piV
 zC8CcT1l6pYfOnV664OcBw2g6UiNZA3P8AK1Nsb9hz2PTP9P5ox0EsoZT
 w3DeF9rtm+jjZeQ8XAeo64g+Ix9QOcHIXddkpPamCYSlKT6yk64Jvo8B0
 KgQsOb3LSz87bzRB6uRhC7wPNXENCOmxvHRrMOQX8iOjWravmmP7e6ryN
 IUXnYIKQh3PESeXBfBJ6AOE/0ChaFBxRVMPflYjPSErIa8iwL8b7SNpBt g==;
X-CSE-ConnectionGUID: H1shteoySy+hajVGDAFrHw==
X-CSE-MsgGUID: jHZf1nKYS5Wpxp60/fjmwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="88666225"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="88666225"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 21:26:57 -0700
X-CSE-ConnectionGUID: NeQbuKQCTtKOwtxy8wSHsA==
X-CSE-MsgGUID: HvqbcE23SW+3RDzmE/Ty5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="272292627"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 28 Apr 2026 21:26:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, swati2.sharma@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Date: Wed, 29 Apr 2026 09:56:50 +0530
Message-Id: <20260429042650.3335718-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 4F4D248F329
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

When a CRTC is moved to a different transcoder (e.g. on DP-MST stream
allocation), PIPE_SCANLINE and PIPE_FRMCNT can return values latched
from the previous transcoder/mode for up to one vblank period after
the new pipe is enabled. The vblank evasion code in
intel_pipe_update_start()/end() then samples a stale or boundary
scanline and the frame counter ticks during the critical section,
producing diagnostic errors of the form:

  [243.348405] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
pipe B (start=300 end=301) time 61 us, min 2128, max 2161, scanline
start 1200, end 2165
  [248.536260] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
pipe B (start=561 end=562) time 61 us, min 2128, max 2161, scanline
start 2162, end 2167

Here "scanline start 1200" is the vblank_start of a previously
programmed mode on a different transcoder, while "2162" is the current
mode's vblank_start sampled before any real frame has been emitted.
Both indicate a stale read rather than a real evasion miss.

Wait for one vblank after crtc_enable() to give the new transcoder a
chance to start producing live PIPE_SCANLINE/FRMCNT values before any
subsequent atomic commit enters the vblank evasion section. This adds
at most one frame of latency on modeset, which is invisible to users.

Reproduced with igt@kms_rotation_crc@sprite-rotation-180 on a DP-MST
sink; with this patch the failures no longer occur.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f..8ebd0df25c11 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6741,6 +6741,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	display->funcs.display->crtc_enable(state, crtc);
 
+	intel_crtc_wait_for_next_vblank(crtc);
+
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
 }
-- 
2.34.1

