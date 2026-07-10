Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w14mKzrUUGqO5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E95B73A093
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="ZbkrlV/h";
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB6510F875;
	Fri, 10 Jul 2026 11:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5359710F87B;
 Fri, 10 Jul 2026 11:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682102;
 bh=q+3zmwocnbtU+hrSwY79ROUqACgOGGFEu709GCKpwCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZbkrlV/hecA94hCNo6qXPfUDdtrChLoTGdWGZrIjfgurodyUcOWgzctYp41yTh4hQ
 NEU9kWqyo4cUybSkLgkMM8Udl3cLrlwg6Htqhrd2xrVn1Nu4ZYHan8DzmuC7/T7W1v
 bxSbh2ilP68sJf+ipl+D9Z347I2LBgjE10HHTovjJ5OJSHbVoFj/fPxvoFK0QbQW7s
 Z/h2ZCACNwayQjM1cFF2Q5jd5qnoW6ZcFMk/iqVs8xYNJCbMZ+HcZD1SXVn3pk19Tn
 qfccR242ymCQ6R5XmTrK8TF8sJbx8ZrYYPJfzOuw8JL1SpVDTIF+bSLQJvQYFeeLeU
 XXiRWxTJkwQWw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 07/11] drm/xe: Abstract the initial FB PTE checks a bit
Date: Fri, 10 Jul 2026 13:15:34 +0200
Message-ID: <20260710111539.1274555-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710111539.1274555-1-dev@lankhorst.se>
References: <20260710111539.1274555-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E95B73A093

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a few helpers that allow us to abstract the xe initial FB PTE
check a bit. Still very ad-hoc compared to the nicely abstracted
i915 counterpart, but whatever.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patch.msgid.link/20260511214122.8468-10-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index a62e5394c3f7d..1e1962c955890 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -19,8 +19,19 @@
 #include "xe_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
+#include "xe_ttm_stolen_mgr.h"
 #include "xe_vram_types.h"
 
+static bool is_pte_local(u64 pte)
+{
+	return pte & XE_GGTT_PTE_DM;
+}
+
+static bool need_pte_local(struct xe_device *xe)
+{
+	return IS_DGFX(xe);
+}
+
 static struct xe_bo *
 initial_plane_bo(struct xe_device *xe,
 		 struct intel_initial_plane_config *plane_config)
@@ -44,13 +55,13 @@ initial_plane_bo(struct xe_device *xe,
 	if (IS_DGFX(xe)) {
 		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
 
-		if (!(pte & XE_GGTT_PTE_DM)) {
-			drm_err(&xe->drm,
-				"Initial plane programming missing DM bit\n");
+		if (is_pte_local(pte) != need_pte_local(xe)) {
+			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
 			return NULL;
 		}
 
 		phys_base = pte & ~(page_size - 1);
+
 		flags |= XE_BO_FLAG_VRAM0;
 
 		/*
-- 
2.53.0

