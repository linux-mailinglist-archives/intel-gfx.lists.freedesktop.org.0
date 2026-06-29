Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EOSfNti6Qmo0AQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:35:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1C26DE150
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:35:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dY+w4n4m;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED3610E9D9;
	Mon, 29 Jun 2026 18:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A6710E0E2;
 Mon, 29 Jun 2026 18:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782758100; x=1814294100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8GYbZxGzyAh/L8lIUsJG9NWV1lf3TmstGfv0C5LnCMk=;
 b=dY+w4n4mTqP05D+sG314hkP6kjzUKfDxBqk/Xhs1RN7dz6WFRpRcP1Ky
 EQpvy7cDkiTibamnOHTMoAvB9e/nZLvjx22xHtmrs2c5+fV4RhBUEDuH6
 O/TsvZ2ASBUU17YrTnaBulAz8v4RJ7KJThjgu18quOiBHalAlucEXNxpG
 NfMcouEhVwUepsR1kPPBliJn8v1IauFZkgcOAvHwrujsRJxud8ZT5F/GT
 f+v+0j44PFnQWa+uuLT/MpaSw9GIObhxyTBw4Di3lPDdAiXYtdCCUd9Ji
 3av5OUBGCCHnJjS274jyzDEE+w9v6QDC0b51BJuoQ0P9OYiyMypxzi228 Q==;
X-CSE-ConnectionGUID: 8VOlQ+FJRCWGtMRiy8iHJQ==
X-CSE-MsgGUID: tlybe6UKTfu4klTcBQhVpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="86010634"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="86010634"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 11:35:00 -0700
X-CSE-ConnectionGUID: cBtZ0DEZS2CrIDkG5v8KDQ==
X-CSE-MsgGUID: oAn1/XsBQeOSPzwiuzZFBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="256956691"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa005.fm.intel.com with ESMTP; 29 Jun 2026 11:34:58 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 suraj.kandpal@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 2/2] drm/i915/cmtg: Warn on invalid CMTG transcoder in
 intel_cmtg_disable()
Date: Mon, 29 Jun 2026 23:32:36 +0530
Message-Id: <20260629180236.1353704-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260629180236.1353704-1-animesh.manna@intel.com>
References: <20260629180236.1353704-1-animesh.manna@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC1C26DE150

intel_cmtg_disable() indexes the per-transcoder register array using the
CMTG transcoder returned by to_cmtg_transcoder(), which is only valid for
TRANSCODER_A/B. The callers are now gated by intel_cmtg_is_allowed(), so
reaching this function with an invalid CMTG transcoder should never
happen.

Add a drm_WARN_ON() that bails out early in that case, both to document
the invariant and to guard against the out-of-bounds register access
(trans_offsets[-1]) should a future caller get it wrong.

v2:
- Add an in-function INVALID_TRANSCODER drm_WARN_ON check. (Suraj)

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 6da28c185080..c8e0f90af910 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -183,6 +183,9 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 	if (!crtc->cmtg.enabled)
 		return;
 
+	if (drm_WARN_ON(display->drm, cmtg_transcoder == INVALID_TRANSCODER))
+		return;
+
 	crtc->cmtg.enabled = false;
 	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
 		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
-- 
2.29.0

