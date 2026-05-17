Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONSTN9HTCWqTrgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF945561B8F
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C269310E41E;
	Sun, 17 May 2026 14:42:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJgRk4yr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C12910E2F8;
 Sun, 17 May 2026 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779028943; x=1810564943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HUZqa+qIIgi2AS0RLBiI8d4ReApKL5FYIDU++INWdOw=;
 b=PJgRk4yr2MkGaxnwma7GTNw8jHoEnpJ+0CmRLmIQXGDfmEb6fWx7frHe
 5ID5StUdyRkKmBPKPZc23uiW9sHnn0MOMhtPTnFWtTf13cczBYRDgdUp1
 O8zfHOMISbHcIZx8qnxnHXo/JtsRFtfMe8mNT7JAdrv+mXR8Ei6w2T7Wh
 czUJi5rgaIFJVjTXM58LRUbyfkPVnC4/nzivJ534RIPEbRWTlB0JMihUc
 W3XQytxUqj+Gyb55Z6vJ4n98UpDAeT7FX2VyjixZlxsSMp6/LLRevIZ2f
 SQhZTgCEhFXPiV/T9hg5IJ2Bkxcv1BcSrnpA3glUJbH5NOIL9eRDU8qlD g==;
X-CSE-ConnectionGUID: JO5UjSfPQ0qBUzcdj9gL3g==
X-CSE-MsgGUID: 00GllMjITrK/q9BrQvH+8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="102575522"
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="102575522"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:22 -0700
X-CSE-ConnectionGUID: oLCGeNRPRSe4d97Tygj/uA==
X-CSE-MsgGUID: +kvogFylQ0Op+eL2ovRfrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="236552063"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with always-on VRR
 TG
Date: Sun, 17 May 2026 19:57:53 +0530
Message-ID: <20260517142753.2813959-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: AF945561B8F
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

For Legacy timing generator, if there are no panel replay/sel_update or
other SRD constraints, the Set context latency (SCL) window should be
at least 1.

However, for VRR timing generator the SCL window can be 0. It has other
guardband constraints, but that are checked during guardband computation.

Allow SCL to be 0 for platforms that have VRR TG always on.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f6cd88902be9..f0350e7f76a8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1488,6 +1488,9 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 	    needs_panel_replay)
 		return 0;
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		return 0;
+
 	return 1;
 }
 
-- 
2.45.2

