Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BZKgKMKZKWrXaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F12966BD80
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=A58gyMDV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42FA10E685;
	Wed, 10 Jun 2026 17:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7793510E682;
 Wed, 10 Jun 2026 17:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111232; x=1812647232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xxr8JoMbT2dO9AlPxsvnqCtILx229EFg1nhlIvN5vZ8=;
 b=A58gyMDVv3SoLy8dqO9ZTN/yZHdT5NYoRPaD3mn2V+pDXtJbodcBK0OQ
 kRSodYYxUHOD6TZyFU+enKfDylcQw8SnaGZnsEvNNRPBTeK903eDCXj1T
 bR5roCTg7UNIaQiJHj03aeZRg3t9L+T0wzwDLiT8DMN+zg+9mRuyPWoLl
 Q/2UbKaxE54/3doGETCKhA9xm10iqlCxHlLa1tQQ/LqocynOW460kNOgb
 V4PbNlhPofGMBfEGRqowjPbdD+LMIjJWhZKtheFq/hNkDiVxKzrWsLizd
 6K8D1dLwAqNIi9g/hZl8j2sDgrK0SS2qnTD8deAi2HP0l7ICG4qrTjxQH g==;
X-CSE-ConnectionGUID: fEq186dkQmKYrmQEjaIC2Q==
X-CSE-MsgGUID: bPb5G3sIQiCTRZbyuQU5cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81887157"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81887157"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:12 -0700
X-CSE-ConnectionGUID: UbDu+yFcSqix60pecDor6w==
X-CSE-MsgGUID: /iJIHFTjSEe5JuvpPk3bfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246306373"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/14] drm/i915/cdclk: Do the DG2 CDCLK/pipe power well notify
 properly
Date: Wed, 10 Jun 2026 20:06:40 +0300
Message-ID: <20260610170652.5320-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F12966BD80

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The pcode post notufy needs to happen after the CDCLK has been
changed, not before. Also move the pre_notify call a bit for the
sake of symmetry.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9718062d8d6c..d60b3369b4d2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2796,9 +2796,6 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
-	if (display->platform.dg2)
-		intel_cdclk_pcode_pre_notify(state);
-
 	if (new_cdclk_state->disable_pipes) {
 		cdclk_config = new_cdclk_state->actual;
 		pipe = INVALID_PIPE;
@@ -2823,6 +2820,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 
 	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
 
+	if (display->platform.dg2)
+		intel_cdclk_pcode_pre_notify(state);
+
 	intel_set_cdclk(display, &cdclk_config, pipe,
 			"Pre changing CDCLK to");
 }
@@ -2851,9 +2851,6 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
-	if (display->platform.dg2)
-		intel_cdclk_pcode_post_notify(state);
-
 	if (!new_cdclk_state->disable_pipes &&
 	    new_cdclk_state->actual.cdclk < old_cdclk_state->actual.cdclk)
 		pipe = new_cdclk_state->pipe;
@@ -2864,6 +2861,9 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 
 	intel_set_cdclk(display, &new_cdclk_state->actual, pipe,
 			"Post changing CDCLK to");
+
+	if (display->platform.dg2)
+		intel_cdclk_pcode_post_notify(state);
 }
 
 /* pixels per CDCLK */
-- 
2.53.0

