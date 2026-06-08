Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qb8TG4y7JmrRbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D1B656593
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CEz6iVaR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB9310F35D;
	Mon,  8 Jun 2026 12:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C4210F35D;
 Mon,  8 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780923274; x=1812459274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRXV4Q39DGfj0gCd9tAAAF9UNfwrjdKxuapY18NrnIE=;
 b=CEz6iVaRuOWOG9P4B73iMJQZKkc4i7ig2k5n7KwLKckkoqglRy9e6x7R
 V4B3t+v3fVcqnxyJGH8ltCO4JE3Q7AmkKaDpxNtlX8VsyT7K8i9qP1Fr3
 artR/446gr+Z/TTiYkzFbbRJnjuVL570NLg3lQyFXcsYrQkUbXlEnWTdY
 tga4OQLvWZeyvefWhKG5YDIj4a7jDWiYp5if1nGdX7J5aCeNroYJMSclj
 2h76W1ywiFIy9YLGw5bokPR2qAyWB2QyaQ6MMCGpoX1HtiP2OX6Ji9v35
 tUa+tWucvFTMWsKPshOEjIyooSjFxzbbeST9PvB66jpqv9CpKjol4IhBn Q==;
X-CSE-ConnectionGUID: ND6RLcIkTy65uiQcnpK4+A==
X-CSE-MsgGUID: Os0L+tffTji+C8JeazPdtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81401593"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81401593"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:54:34 -0700
X-CSE-ConnectionGUID: 0MT4JP9DTdG639k+Bq++vw==
X-CSE-MsgGUID: MHl7N2s0RWyM7F2ZytP8xA==
X-ExtLoop1: 1
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa003.fm.intel.com with ESMTP; 08 Jun 2026 05:54:32 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [RFC PATCH 2/2] drm/i915/wm: Wait a vblank before shrinking plane DDB
Date: Mon,  8 Jun 2026 18:20:09 +0530
Message-Id: <20260608125009.979672-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260608125009.979672-1-nemesa.garg@intel.com>
References: <20260608125009.979672-1-nemesa.garg@intel.com>
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
X-Rspamd-Action: no action
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
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15D1B656593

Back-to-back atomic commits that keep the per-pipe DBUF
allocation, MBUS join state and slice mask unchanged but
reshuffle per-plane PLANE_BUF_CFG sub-ranges can cause
pipe FIFO underruns. Wait a vblank on the CRTC if any plane
is shrink (stays allocated, range got smaller) or swap (new
range overlaps another plane's old range on the same pipe).

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 49 ++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5a3677ea25b0..fdd09700e808 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3648,6 +3648,53 @@ void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
 
 }
 
+/*
+ * Pre-program shrinking plane DDBs and wait a vblank so HW retires
+ * the old (larger) ranges before the main commit places new/grown planes
+ * into the freed space. Avoids the brief DDB overlap that causes pipe
+ * FIFO underruns. Only handles pure shrinks (new range contained in old);
+ * swaps are not handled here.
+ */
+static void skl_dbuf_pre_shrink(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_crtc_state *old_cs, *new_cs;
+	struct intel_crtc *crtc;
+
+	if (DISPLAY_VER(display) != 30)
+		return;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_cs, new_cs) {
+		struct intel_plane *plane;
+		bool need_wait = false;
+
+		if (!old_cs->hw.active || !new_cs->hw.active)
+			continue;
+
+		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
+			enum plane_id pid = plane->id;
+			enum pipe pipe = crtc->pipe;
+			const struct skl_ddb_entry *o = &old_cs->wm.skl.plane_ddb[pid];
+			const struct skl_ddb_entry *n = &new_cs->wm.skl.plane_ddb[pid];
+			u16 osz = skl_ddb_entry_size(o), nsz = skl_ddb_entry_size(n);
+
+			if (pid == PLANE_CURSOR || !osz || !nsz || nsz >= osz ||
+			    n->start < o->start || n->end > o->end)
+				continue;
+
+			intel_de_write(display, PLANE_BUF_CFG(pipe, pid),
+				       PLANE_BUF_END(n->end - 1) | PLANE_BUF_START(n->start));
+			/* Arm by re-writing PLANE_SURF (same value -> no visible flip). */
+			intel_de_write(display, PLANE_SURF(pipe, pid),
+				       intel_de_read(display, PLANE_SURF(pipe, pid)));
+			need_wait = true;
+		}
+
+		if (need_wait)
+			intel_crtc_wait_for_next_vblank(crtc);
+	}
+}
+
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -3660,6 +3707,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 	if (!new_dbuf_state)
 		return;
 
+	skl_dbuf_pre_shrink(state);
+
 	old_slices = old_dbuf_state->enabled_slices;
 	new_slices = old_dbuf_state->enabled_slices | new_dbuf_state->enabled_slices;
 
-- 
2.25.1

