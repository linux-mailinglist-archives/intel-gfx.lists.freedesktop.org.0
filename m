Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NV8RDShROmrg5wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:26:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714486B5C91
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:25:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AKYxyiH+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0998910EA39;
	Tue, 23 Jun 2026 09:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787D410EA38;
 Tue, 23 Jun 2026 09:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206756; x=1813742756;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uLuOK48xqu+zAtJr4AKDAMU+RdVdq8xUKpcrbis2GAg=;
 b=AKYxyiH+ARbSYa9V9uIM6NlimQ0w7D65g4YbnAI8eZvDrpu5j8z44DM7
 MGcz07hkNl1XGoN3hMAmuFUMWNNzEzO/d8pGw/j0SN8gQK2VuFgipazsp
 2PGroij5BS4xzHCYE/PUhet5qslZd1+VzHEs7X8ALzD9szYnVbMyDY0wv
 L9uIfAwTsdC1VdEwxWQddUANmN6EZplgbHm/f0zvcQWsAGeylp0TAOuZb
 1Ar7xfy9rdyptjrLhMnqdbpFOt2fvvOiXG2iwF87wbX9lPnOPrySFLC5I
 ZESIMP6gDKAyDDfWxe5j0zWEDIYBfwm40GKQ5uX+LtIT5qm0DpWfMsUpE w==;
X-CSE-ConnectionGUID: +SEf6MHIT4GN4OBA4bH6fQ==
X-CSE-MsgGUID: hJ+Vrv97QEmHafaaFnTMzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="93534319"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="93534319"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:25:56 -0700
X-CSE-ConnectionGUID: OdpwExXmS7adpaoazca6Pg==
X-CSE-MsgGUID: wWJ+vXyEQwO6PuH0nmUeFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245105379"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa006.fm.intel.com with ESMTP; 23 Jun 2026 02:25:54 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/cmtg: Fix array-index-out-of-bounds in
 intel_cmtg_disable
Date: Tue, 23 Jun 2026 14:23:34 +0530
Message-Id: <20260623085334.1297520-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
X-Rspamd-Action: no action
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
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 714486B5C91

to_cmtg_transcoder() returns INVALID_TRANSCODER (-1) for any
cpu_transcoder other than TRANSCODER_A/B. intel_cmtg_disable() then uses
the resulting cmtg_transcoder to index the per-transcoder register array
via TRANS_VRR_CTL(), but unlike the other CMTG helpers it does not check
for INVALID_TRANSCODER first. The only guard is crtc->cmtg.enabled, which
is a sticky flag on struct intel_crtc and can be set while the crtc_state
being disabled has a cpu_transcoder that does not map to a CMTG
transcoder (e.g. during a big-joiner reconfiguration that moves the eDP
across pipes).

This results in a negative array index (trans_offsets[-1]) and a UBSAN
splat:

  UBSAN: array-index-out-of-bounds in .../display/intel_cmtg.c:187:24
  intel_cmtg_disable+0x395/0x3d0 [xe]
  intel_old_crtc_state_disables+0xfb/0x1f0 [xe]
  intel_atomic_commit_tail+0xca6/0x2040 [xe]

Bail out early when cmtg_transcoder is INVALID_TRANSCODER, matching the
guard already used by the other CMTG helpers.

Fixes: 3bb44e8d421a ("drm/i915/cmtg: Modify existing hook to disable CMTG")
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 6da28c185080..dcd29ebdb432 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -183,6 +183,9 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 	if (!crtc->cmtg.enabled)
 		return;
 
+	if (cmtg_transcoder == INVALID_TRANSCODER)
+		return;
+
 	crtc->cmtg.enabled = false;
 	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
 		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
-- 
2.29.0

