Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KGOAvdo8GkITAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:59:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF97747F782
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 09:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52BDE10EA6B;
	Tue, 28 Apr 2026 07:59:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPl8lpNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6026E10EA6B;
 Tue, 28 Apr 2026 07:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777363188; x=1808899188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sO3x84RsarJ3LVMgec7hukKI/dA54dS0M1uY9GW54i0=;
 b=IPl8lpNbsTr640qmrNf8Vyn/RYVGeel/Ve+gllTLaOP+zBECy2ZRTMD8
 tLklLYRuWmue+iYTtgEpKqB0zQZ9yBZa3BZWVsvvq2GBsb4TVgxZimM2C
 st72NgBmAcpme17cz0knDjD2sJjveoBPgy1t7qgAzWg3mayCRT0NuPQNW
 sRHkTDmBoc1dMrraeCfVZ517JFI1i0R5KRHUoWhwWlOfbFuDZcIrbn41k
 OnNeDKuQYXgPrdV72cBrhcWj6LtXtu6Rlh9ct7CIqkS3vFr2JP2GYOeKo
 L0WUzhD+yFR8j1Bt5ckhBTuSbrXsnPfqb8yQhwtELwkVZ75KOv9JTeGkA w==;
X-CSE-ConnectionGUID: V25EVzxVTQayh0BGi353Zg==
X-CSE-MsgGUID: v7+hY052RsqfkI7rCn/P1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82115907"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82115907"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:59:48 -0700
X-CSE-ConnectionGUID: 2noRSr9XSEyOPh+lE0f9Yw==
X-CSE-MsgGUID: yFcgMt5OQ+6ZPtMBwt5rcw==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:59:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/9] drm/dp: Refactor AS SDP logging to use space-separated
 field names
Date: Tue, 28 Apr 2026 13:14:53 +0530
Message-ID: <20260428074457.3566918-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
References: <20260428074457.3566918-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: CF97747F782
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Replace underscores with spaces in AS SDP log field labels to be
consistent with the VSC SDP logging style.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index a697cc227e28..745559826cd9 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3508,10 +3508,10 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
 	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
 		   as_sdp->revision, as_sdp->length);
 	drm_printf(p, "    vtotal: %d\n", as_sdp->vtotal);
-	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
-	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
-	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
-	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
+	drm_printf(p, "    target rr: %d\n", as_sdp->target_rr);
+	drm_printf(p, "    duration increase ms: %d\n", as_sdp->duration_incr_ms);
+	drm_printf(p, "    duration decrease ms: %d\n", as_sdp->duration_decr_ms);
+	drm_printf(p, "    operation mode: %d\n", as_sdp->mode);
 }
 EXPORT_SYMBOL(drm_dp_as_sdp_log);
 
-- 
2.45.2

