Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vrgxHDnUUGqM5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D3873A08B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=hmOcIZGi;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D84310F878;
	Fri, 10 Jul 2026 11:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB32410F875;
 Fri, 10 Jul 2026 11:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682099;
 bh=8OOecsLalkhMhzDjTmPYJsSQ2MSjP7aUquCNY+5c6dA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hmOcIZGiOhblnrRrRBHlQns6Y0NjAMUbiQUwmhPj2N3Le3gaPzziUqfa4qR73v4dS
 8hypL4H8xg2+zWf7xDt+yVhjtk+T0WSjcDS/Yg9f7FLs4pJG8yhuaSPKIYmIsU6q4j
 FlKJCYN0xjf7CmIyZ4387fhLLuV+nkvl0aG8qPo6X3nqrc6Wd6yc5KTijHpXBjnaMe
 M8valw5/Ie22UBvuQiiLS0o4rn/0JzhltqB2Gb3ZP6Scn3m8SLl38pZT/1oEO3fNXc
 zhHVS1dXXkGwGVAbQZp4quNWszIWyh8Woo00Ct/GKNd93B7/N9uXCqjU0Xe1fxmwMk
 WJlGqhvY0NC8g==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 05/11] drm/xe: Do the initial FB size alignment earlier
Date: Fri, 10 Jul 2026 13:15:32 +0200
Message-ID: <20260710111539.1274555-6-dev@lankhorst.se>
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
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1D3873A08B

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For some reason we've split the alignment of 'base' vs. 'size'
to live on separate sides of the xe initial plane PTE readout.
There's no reason for this split, so make things less confusing
by aligning both at the same time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patch.msgid.link/20260511214122.8468-7-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index da04ee66252ad..feb979cca12af 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -37,6 +37,10 @@ initial_plane_bo(struct xe_device *xe,
 	flags = XE_BO_FLAG_FORCE_WC | XE_BO_FLAG_GGTT;
 
 	base = round_down(plane_config->base, page_size);
+	size = round_up(plane_config->base + plane_config->size,
+			page_size);
+	size -= base;
+
 	if (IS_DGFX(xe)) {
 		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
 
@@ -79,10 +83,6 @@ initial_plane_bo(struct xe_device *xe,
 		}
 	}
 
-	size = round_up(plane_config->base + plane_config->size,
-			page_size);
-	size -= base;
-
 	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base,
 					  ttm_bo_type_kernel, flags, 0, false);
 	if (IS_ERR(bo)) {
-- 
2.53.0

