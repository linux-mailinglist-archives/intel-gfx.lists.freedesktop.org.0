Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKUZJrjWgml5cQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCF4E1DD7
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E463610E33D;
	Wed,  4 Feb 2026 05:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gi+kmrdY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C415810E337;
 Wed,  4 Feb 2026 05:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770182325; x=1801718325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C5PrrsbBwtpi5CH1Nf22xNxv3CXKkut1myZEbwzvsBw=;
 b=gi+kmrdYeCSir7MWBfaWaZ1mHjYZgq3sKi2xt5ujn/6djSjrpLAHW5vO
 TH8Tu4CcnIrZsTS8K+ZiXDRONFR48YRK2zwiUt3sgjN3H4M6LaFVx83CN
 SZ/HXUIdN02G+/pjdiW2YcW2rPGCusH3n4KFaEFcABuGlRL81iI46fgNp
 b/igByGE/WJg0QiaEXQWp+bvZdR/s2ImE9s2AL/QsjBVfXiKzb65vCIB+
 wBzO8wKMTn6OeQyzeB4eLsrqb/YvdavowW9F+Bn4n9U4pGEDEseVw5bxZ
 OZm9EBG07RhDqfyf3mP5IBUbbJraEDRkWnvQZHMoj/o6b64t7KSm8MIDN g==;
X-CSE-ConnectionGUID: W9CEphFlSNGlRTx/T2Xblg==
X-CSE-MsgGUID: 6pad1ki5TUyDE19N9PVinQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82102825"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82102825"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:45 -0800
X-CSE-ConnectionGUID: pgcz3pSeTbGkpPNFCuI+1A==
X-CSE-MsgGUID: KlC4bT1OSJOihBUtSfZtsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210127512"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:43 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, michal.grzelak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND 5/5] drm/i915/alpm: Disable LOBF around transitioning for
 LRR/seamless MN
Date: Wed,  4 Feb 2026 10:32:50 +0530
Message-ID: <20260204050250.762718-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6DCF4E1DD7
X-Rspamd-Action: no action

When enabling LRR/seamless MN disable LOBF first and re-enable
afterwards.
- pre_plane_update: if LOBF was enabled, disable LOBF before the
  update_lrr/update_m_n transition.
- post_plane_update: Re-enable LOBF after the transition.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 739a0a74e008..295f14416be7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1014,7 +1014,9 @@ static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_sta
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_enabling(has_lobf, old_crtc_state, new_crtc_state) ||
+	       (new_crtc_state->has_lobf &&
+		(new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1023,7 +1025,9 @@ static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_st
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(has_lobf, old_crtc_state, new_crtc_state);
+	return is_disabling(has_lobf, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->has_lobf &&
+		 (new_crtc_state->update_lrr || new_crtc_state->update_m_n));
 }
 
 #undef is_disabling
-- 
2.45.2

