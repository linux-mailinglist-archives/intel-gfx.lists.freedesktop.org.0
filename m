Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMseJKR76GmsKwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:41:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A44443103
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CCE10E90D;
	Wed, 22 Apr 2026 07:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEmUMNij";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4906410E8C5;
 Wed, 22 Apr 2026 07:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776843680; x=1808379680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+oqzzC7IWZcSswZgVW/xROM4PziXPsX9BaYO5vqKwEA=;
 b=BEmUMNijQBvK5SE9tvaMcx2dczjknyw56AHyob37iGVFrH/2sVqM+fhT
 LgqdJeTaBKmiw2JEgqyry9ybDgF8z/XcoppoyOlnx+JaBuAVCzBLhQ3i8
 tPdPHDmPF88TcVHHPafzPwgrScIeuVW3qq32cmCuLN3B3uLkqGU5JMKxz
 GhiE3gWOAp9+8H0d0LdSPaH0IqkUE1uncOCaLraLxinvVX5FsI3VQtvIP
 MTczOb62hqosVT5+4gAtWbRXpiXJm8ZdseguyZ6vw+6NAlKbHWxtpBuqI
 xs9GqWtJ2ofmYqqFN27CZkVgNPiAOYA52UIpdGEnidd7Hxr9Lxv6luREA Q==;
X-CSE-ConnectionGUID: +EVujMVyRLeyU1KF+YYopw==
X-CSE-MsgGUID: nayTiADVRJi/q828L6A1Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="89177167"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="89177167"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 00:41:20 -0700
X-CSE-ConnectionGUID: ClL7FvL1TD6AyE5fn+P9ow==
X-CSE-MsgGUID: Dqc9TSMoTwK+y4/AyLG5vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="229114723"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 22 Apr 2026 00:41:19 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 6/6] drm/i915/cursor: Allow joiner cursor fast path update
Date: Wed, 22 Apr 2026 13:07:22 +0530
Message-Id: <20260422073722.1861494-7-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260422073722.1861494-1-nemesa.garg@intel.com>
References: <20260422073722.1861494-1-nemesa.garg@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 67A44443103
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The legacy cursor path forced all joiner updates to the
slow path by checking joiner_pipes.
Drop the condition so that joiner cursor updates can use
the fast path.

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index e03b27f05fc2..25bc3b95f4f1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -886,8 +886,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 */
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state) ||
-	    intel_crtc_needs_fastset(crtc_state) ||
-	    crtc_state->joiner_pipes)
+	    intel_crtc_needs_fastset(crtc_state))
 		goto slow;
 
 	/*
-- 
2.25.1

