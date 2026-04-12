Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDKuJCV922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6517C3E37E0
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E557710E2B7;
	Sun, 12 Apr 2026 11:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRxeIwU4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C416210E2B7;
 Sun, 12 Apr 2026 11:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992099; x=1807528099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kEIau+R6G0jGe8LpKwThuXzCvZkG9r6W5TqjTHM4yrI=;
 b=kRxeIwU4ZDhVqS1KmtVzduZfm5BznaOxZQy3sNB8512+/JUssS6fDCS4
 Hf+ChVtCVGJBBMK/0QlYuU2HXemfZwAQ23Sdy+j0mQ8bZLpV0QD9O7I1F
 CBmDxwpA0iW6PyboQ4b39C4enXKD0sDU2SzBWOgHXhdmeeE4dYsjAQ9O4
 9roCeQDoUJs+KZa3Ft+XMwy/iFNIQZVuBWtlurVyEUvyFGe0EW+3An84E
 lYJLc1NC7TeenzOYwvSo6BoEe3MkQcOHCMjLaLzURo+oM06pbr35hbnA6
 f38iAxPsoG4xGO8YaZJy7EkbgPGXgh28EIkS+XiBXtUm3wzm7r5xChZXi A==;
X-CSE-ConnectionGUID: LM58igl+R3S16EjcpVudaA==
X-CSE-MsgGUID: OGiYhQNtR4qI3J0IIXYDtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115140"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115140"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:08:19 -0700
X-CSE-ConnectionGUID: AYdLbG+IRLysZIMKGjoq7w==
X-CSE-MsgGUID: eAPe7jIaT4yTExqRGwqhIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507753"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:08:17 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 12/13] drm/i915/cmtg: Disable CMTG if dc3co is not allowed
Date: Sun, 12 Apr 2026 16:07:11 +0530
Message-Id: <20260412103712.4021213-13-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6517C3E37E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DC3co entry condition can change dymamically and disable
CMTG if entry condition is not met for DC3co.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d683d290fa6..9c5985ae89e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6874,7 +6874,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
 
-	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc)) {
+	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc) ||
+				   !intel_cmtg_is_allowed(new_crtc_state))) {
 		intel_cmtg_disable(new_crtc_state);
 		intel_cmtg_disable_interrupt(new_crtc_state);
 	}
-- 
2.29.0

