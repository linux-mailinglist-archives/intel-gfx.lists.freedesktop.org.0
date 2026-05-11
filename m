Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNbeBcXPAWqKkAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:47:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF41450E272
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6403810E731;
	Mon, 11 May 2026 12:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/7I4+Hp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846B210E722;
 Mon, 11 May 2026 12:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778503618; x=1810039618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5e+DvItVetCJsKP/mqD3J7kfdEkBkUxJoiu8ebgVG4w=;
 b=D/7I4+HpHiaozTwWwGuOF8pVOHiODTwGn+ukvxd/tI77phHACKKH96sd
 xCBCyLKieSFNrPaBFWz7/WqqBNPR3dc14fUWHtn2ZthLnwQtcqP/fbMv7
 wh2q3XZIJAVHm6ZB6dZ4AcLQfLxhl1rugHWaPAU2RffCKsyIQqKtUKQfD
 uTCYDhkriFXrQUpr6fVcrXRg8JuIsPYRyd2JzgsHq/fjITI0OxsqySFeX
 5Kt+7u6iL7qPBy6fZONiLhJO3JmaATNAuZctCAgflL13BdzuzVoBVB9gO
 FdZC5bMNbyguYwfiaUcqtuSAcjb9kxsODO65dahZuYFQcLa5358gSUDtE Q==;
X-CSE-ConnectionGUID: SQea/cuNQMWkEHEdylhQ9g==
X-CSE-MsgGUID: +hOAWzRTRKe28HAZpfj/XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90764836"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90764836"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:46:58 -0700
X-CSE-ConnectionGUID: g8BPcBPfQsaP565TF5xXDA==
X-CSE-MsgGUID: GVL/mQ28Tg6c0qBHR2LWaA==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:46:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/4] drm/i915/dp: Include all relevant AS SDP fields in
 comparison
Date: Mon, 11 May 2026 18:02:18 +0530
Message-ID: <20260511123218.1589830-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
References: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: DF41450E272
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Add missing drm_dp_as_sdp header fields to intel_compare_dp_as_sdp()
comparison.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ca06a9d990f7..3f4f54f4ebaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4881,11 +4881,14 @@ static bool
 intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
 			const struct drm_dp_as_sdp *b)
 {
-	return a->revision == b->revision &&
+	return a->sdp_type == b->sdp_type &&
+		a->revision == b->revision &&
+		a->length == b->length &&
 		a->vtotal == b->vtotal &&
 		a->target_rr == b->target_rr &&
 		a->duration_incr_ms == b->duration_incr_ms &&
 		a->duration_decr_ms == b->duration_decr_ms &&
+		a->target_rr_divider == b->target_rr_divider &&
 		a->mode == b->mode;
 }
 
-- 
2.45.2

