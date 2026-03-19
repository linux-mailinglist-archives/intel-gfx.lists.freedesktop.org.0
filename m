Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMPhFMvgu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F152CA743
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827C910E91B;
	Thu, 19 Mar 2026 11:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUGkaJSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCC610E983;
 Thu, 19 Mar 2026 11:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920456; x=1805456456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ae4ekYXmSknRRax25oKYfTOgWcMaG5pZWBPkwKuqCGM=;
 b=hUGkaJSk7I6NI0DAgHG52/kJ7OSWuW7IZy/yFfgG2+LVzHKFGIxosARe
 dbt96U6o7Lm/5jb3pL/w1TmJwzFDzKEX5XT2hZgR1elWt7Ev9Tr/agxbm
 Nb0YOqQeLwV5kDd/ipLwyN9o+3wsj3nrDT1CzillU+7WGZhV1ywHACBZw
 wMm8hZXI1V0suU2OQKyNA7Up7I7ZvWjLcYRV/U5JKPY+QmJGIpoA4S5jO
 izzPolZo3fvHPMTFcL0Z6ltTLVBO2FmHnntUKT7LnmjG7mtP6Cvxj6HxW
 9QuqmFtOrBY2iOhvFOSIJecMj6I4Mv1TS58EBvM11Nhi/GLXqzLmZuZ04 A==;
X-CSE-ConnectionGUID: QHWAMPq5S7ystcRKURBZSg==
X-CSE-MsgGUID: +9HjFSCiSn24Ez+s7YxzJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78891638"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78891638"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:56 -0700
X-CSE-ConnectionGUID: gWwny0gBQDeBfK95NjJHJA==
X-CSE-MsgGUID: 8M/q3ZCcQgixj24sz9JdDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222970889"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/wm: Extract skl_allocate_plane_ddb_nv12()
Date: Thu, 19 Mar 2026 13:40:29 +0200
Message-ID: <20260319114034.7093-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 05F152CA743
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract skl_allocate_plane_ddb_nv12() as the compute counterpart to
skl_check_wm_level_nv12(). Mainly to hide some of the clutter from
skl_crtc_allocate_plane_ddb().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 40 ++++++++++++++------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 24978f312fec..7c4c42dde991 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1390,9 +1390,9 @@ struct skl_plane_ddb_iter {
 };
 
 static void
-skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
-		       const struct skl_wm_level *wm,
-		       struct skl_ddb_entry *ddb, u64 data_rate)
+_skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
+			u16 min_ddb_alloc,
+			struct skl_ddb_entry *ddb, u64 data_rate)
 {
 	u16 size, extra = 0;
 
@@ -1409,12 +1409,31 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
 	 * to avoid skl_ddb_add_affected_planes() adding them to
 	 * the state when other planes change their allocations.
 	 */
-	size = wm->min_ddb_alloc + extra;
+	size = min_ddb_alloc + extra;
 	if (size)
 		iter->start = skl_ddb_entry_init(ddb, iter->start,
 						 iter->start + size);
 }
 
+static void
+skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
+		       const struct skl_wm_level *wm,
+		       struct skl_ddb_entry *ddb, u64 data_rate)
+{
+	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc, ddb, data_rate);
+}
+
+static void
+skl_allocate_plane_ddb_nv12(struct skl_plane_ddb_iter *iter,
+			    const struct skl_wm_level *wm,
+			    struct skl_ddb_entry *ddb_y, u64 data_rate_y,
+			    const struct skl_wm_level *uv_wm,
+			    struct skl_ddb_entry *ddb, u64 data_rate)
+{
+	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc, ddb_y, data_rate_y);
+	_skl_allocate_plane_ddb(iter, uv_wm->min_ddb_alloc, ddb, data_rate);
+}
+
 static int
 skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
@@ -1521,15 +1540,14 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			continue;
 
 		if (DISPLAY_VER(display) < 11 &&
-		    crtc_state->nv12_planes & BIT(plane_id)) {
+		    crtc_state->nv12_planes & BIT(plane_id))
+			skl_allocate_plane_ddb_nv12(&iter, &wm->wm[level],
+						    ddb_y, crtc_state->rel_data_rate_y[plane_id],
+						    &wm->uv_wm[level],
+						    ddb, crtc_state->rel_data_rate[plane_id]);
+		else
 			skl_allocate_plane_ddb(&iter, &wm->wm[level],
-					       ddb_y, crtc_state->rel_data_rate_y[plane_id]);
-			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
 					       ddb, crtc_state->rel_data_rate[plane_id]);
-		} else {
-			skl_allocate_plane_ddb(&iter, &wm->wm[level],
-					       ddb, crtc_state->rel_data_rate[plane_id]);
-		}
 
 		if (DISPLAY_VER(display) >= 30) {
 			*min_ddb = wm->wm[0].min_ddb_alloc;
-- 
2.52.0

