Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB5B492299
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0125F10EC27;
	Tue, 18 Jan 2022 09:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4FE10EC27
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497842; x=1674033842;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DHv1WcK4AHBrTozT2uGxU+mibWm57PW9f+FlJH9YJbE=;
 b=MgH3b8hYiZwcMC2LtUjzNjCYchBf3FHQ2Prf6W4LudvdsK/wX86uTHg8
 zutqrARiVrbg4FdApNkmv/lici9kdfZgXRXb7aVoQpsLvWsbXLl+pulCc
 caDgdUA+bweEq3LA/IEKGczk7AKrHIoe+xp22nrHcf+PXrYw68iPPPyyS
 Zr+dM1zocT/ecdttnKF4UzQH1pVpE0sxpNPCSeHeEej9dijH/iXEpXfzk
 CMDpBIC/z4jyb992sD90Dsh6LtXrjn1wpBcAbcnW7B4OG0EhDWZSJSVnB
 gDmiz5/VXg9lIh8cJgKUgzxVJi3cVeuJPKK2/sw7RMRt+M/gBsX6lnl4y A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243598340"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="243598340"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="492607007"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 18 Jan 2022 01:24:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:23:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:41 +0200
Message-Id: <20220118092354.11631-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Extract skl_ddb_entry_init()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract a small helper to populate a ddb entry.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 44 +++++++++++++++++++--------------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 7185af0ff205..9a9d4acb2988 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4058,6 +4058,15 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	return 0;
 }
 
+static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
+			      u16 start, u16 end)
+{
+	entry->start = start;
+	entry->end = end;
+
+	return end;
+}
+
 static int intel_dbuf_slice_size(struct drm_i915_private *dev_priv)
 {
 	return INTEL_INFO(dev_priv)->dbuf.size /
@@ -4196,8 +4205,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
 	int ret;
 
 	if (new_dbuf_state->weight[pipe] == 0) {
-		new_dbuf_state->ddb[pipe].start = 0;
-		new_dbuf_state->ddb[pipe].end = 0;
+		skl_ddb_entry_init(&new_dbuf_state->ddb[pipe], 0, 0);
 		goto out;
 	}
 
@@ -4213,8 +4221,10 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
 	start = ddb_range_size * weight_start / weight_total;
 	end = ddb_range_size * weight_end / weight_total;
 
-	new_dbuf_state->ddb[pipe].start = ddb_slices.start - mbus_offset + start;
-	new_dbuf_state->ddb[pipe].end = ddb_slices.start - mbus_offset + end;
+	skl_ddb_entry_init(&new_dbuf_state->ddb[pipe],
+			   ddb_slices.start - mbus_offset + start,
+			   ddb_slices.start - mbus_offset + end);
+
 out:
 	if (old_dbuf_state->slices[pipe] == new_dbuf_state->slices[pipe] &&
 	    skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
@@ -4291,8 +4301,9 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 
 static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 reg)
 {
-	entry->start = REG_FIELD_GET(PLANE_BUF_START_MASK, reg);
-	entry->end = REG_FIELD_GET(PLANE_BUF_END_MASK, reg);
+	skl_ddb_entry_init(entry,
+			   REG_FIELD_GET(PLANE_BUF_START_MASK, reg),
+			   REG_FIELD_GET(PLANE_BUF_END_MASK, reg));
 	if (entry->end)
 		entry->end++;
 }
@@ -5154,9 +5165,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	/* Allocate fixed number of blocks for cursor. */
 	total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
 	alloc_size -= total[PLANE_CURSOR];
-	crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR].start =
-		alloc->end - total[PLANE_CURSOR];
-	crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR].end = alloc->end;
+	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR],
+			   alloc->end - total[PLANE_CURSOR], alloc->end);
 
 	if (total_data_rate == 0)
 		return 0;
@@ -5257,17 +5267,13 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			    DISPLAY_VER(dev_priv) >= 11 && uv_total[plane_id]);
 
 		/* Leave disabled planes at (0,0) */
-		if (total[plane_id]) {
-			plane_alloc->start = start;
-			start += total[plane_id];
-			plane_alloc->end = start;
-		}
+		if (total[plane_id])
+			start = skl_ddb_entry_init(plane_alloc, start,
+						   start + total[plane_id]);
 
-		if (uv_total[plane_id]) {
-			uv_plane_alloc->start = start;
-			start += uv_total[plane_id];
-			uv_plane_alloc->end = start;
-		}
+		if (uv_total[plane_id])
+			start = skl_ddb_entry_init(uv_plane_alloc, start,
+						   start + uv_total[plane_id]);
 	}
 
 	/*
-- 
2.32.0

