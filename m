Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ro+PIDzUUGqR5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729473A098
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=b0euX7Qm;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AB410F87E;
	Fri, 10 Jul 2026 11:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5164710F882;
 Fri, 10 Jul 2026 11:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682104;
 bh=WHkgbrlbVx+gq9jpolwBHQ/0a2BSebhtKYtkti+7smQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b0euX7Qmcux6fP1YYidpRZZ+Sw07ecCc+qX2H9oTdJpPRxi8YcXDup/s9m/QyWxlV
 tAfSgvfsjEiI2zrLjnEH6poS/H0j4gM4gD/nkUlARYJwfQI1w3UNUcQRszxXFCMhRM
 rKKaroQHJ7P4jwRgYNMQLxSknBf9xjILmL3FjzmlOdQbk//ikEgPqFqejFICiLcxPx
 bbE9oRhgEvWqfR346DCNJo20sKkbuLuHehcODjMK8ZjUgxmJloKZctUsab5Jxz4iAQ
 yibSrXxBPOvmM5X/XL4ZH9inQunIrh8weDCuW14Cdf4/sX+FH9KXha2yU/m88J9BLI
 fZJYmniGMxzmw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 10/11] drm/i915: Fix BIOS FB memory region name debug prints
Date: Fri, 10 Jul 2026 13:15:37 +0200
Message-ID: <20260710111539.1274555-11-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 4729473A098

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently we never initialize the name of the struct resource
underlying the memory region. Instead we need to look at the
name stored directly in the memory region itself.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patch.msgid.link/20260511214122.8468-14-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/i915_initial_plane.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 08d94f3a1584a..549fe1dc5b6eb 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -58,14 +58,14 @@ initial_plane_phys(struct drm_i915_private *i915,
 
 	if (intel_memory_type_is_local(mem->type) != is_local) {
 		drm_err(&i915->drm, "Initial plane FB PTE unsuitable for %s\n",
-			mem->region.name);
+			mem->name);
 		return false;
 	}
 
 	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
 		drm_err(&i915->drm,
 			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
-			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
+			&dma_addr, mem->name, &mem->region.start, &mem->region.end);
 		return false;
 	}
 
@@ -120,7 +120,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 					       I915_BO_PREALLOC);
 	if (IS_ERR(obj)) {
 		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
-			    mem->region.name);
+			    mem->name);
 		return NULL;
 	}
 
-- 
2.53.0

