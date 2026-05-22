Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Pe/GL+2EGqFcwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9AE5B9DD9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 22:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CB310E2A6;
	Fri, 22 May 2026 20:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMdTygyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DA110E2A6;
 Fri, 22 May 2026 20:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779480252; x=1811016252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f8OvaonxYZSvU5Cdn1mAYdEACjjH+9DDTi1UeyOP3Uc=;
 b=RMdTygyRhAYKBQ0Efjt/7rPrvKqxyWm/N8RDqGR4dWI2bNPEy1HF3kjH
 PYiYzjJI9ComP/oXj3bc488bxT2RSrSd53Gs1nWI0Lwm9hONQoIBqRuBY
 QCOJVxSqBATcjQMspVXxqwhVRRMgLJULUTigc+Bqei2DYAsYU+moYGeQf
 r/LCN494Dgx3tGZfULF/5NNKj7d3ZPSNPhCSUq5Ie5KaLrw50us/t1BzO
 aESxbXq4/987mmdrMyqBE6QyUeTcVF1jFClZ8GBCjl0FOqxZWZFSZVAqr
 fqkvM/cCSFqyde+Ut2sPD/yYxD0GX3QdHiO0ak3nKTv1YV0evmTl5ST0f w==;
X-CSE-ConnectionGUID: tBpTT9n3RWCH55BkBxDnrw==
X-CSE-MsgGUID: QhnMQlyxRA6CJoN4eUF3sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="80396773"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="80396773"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:11 -0700
X-CSE-ConnectionGUID: VddvLoBjSD6q9vS0oks/SA==
X-CSE-MsgGUID: OQSRY4c9QsaiS7FJtsUXqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="234649081"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 13:04:09 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/10] drm/i915/bw: Fix 'deinterleave' rounding direction
Date: Fri, 22 May 2026 23:03:40 +0300
Message-ID: <20260522200346.17377-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid]
X-Rspamd-Queue-Id: ED9AE5B9DD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For some reason we're rounding up when calcualting the deinterleave
value. But the spec says we should round down. Fix it.

But I suppose this doesn't actually matter since the deinterleave
values should always be power of two. The only exception is therefore
the deinterleave==1 case, which gets handled by the max(..., 1).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bbaafcc1b6be..da294c1722b1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -607,7 +607,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >= 12)
-		qi.deinterleave = max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
+		qi.deinterleave = max(qi.deinterleave / 2, 1);
 
 	if (DISPLAY_VER(display) >= 12 && num_channels > qi.max_numchannels)
 		drm_warn(display->drm, "Number of channels exceeds max number of channels.");
-- 
2.52.0

