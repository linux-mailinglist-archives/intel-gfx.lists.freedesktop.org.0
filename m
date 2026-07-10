Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ICPoJTjUUGqL5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1BA73A088
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=lq8mV1ON;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6690910F872;
	Fri, 10 Jul 2026 11:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F1910F85E;
 Fri, 10 Jul 2026 11:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682098;
 bh=3JVk7Ii6bOZK+y7mCUOxJrpfJz6aU21nRzuk0gjuZyM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lq8mV1ONDjuVe/t5TJWHZEoQjxtm+FwkOaFKxcy+ReQAwXm1yR39gymP+i8yhFoLB
 +po6x/zRI/4Flw5sOMRa9ZHpD6wreu0NtNZoFi3nQA3b7RjgP9Q/pP0KMiya2MMAWC
 VGGLi5R5uwWAPxKPkVIS5zdgafuU/nlWH58skG/L1k539dNHral76YKo5GCx+FNlvq
 g692NcBDrW5g2ffucAK0uQYM/UJoIrR/yqAh6E9pBORAfNaVP4ZL4+6Hkvs5oXAIqL
 DxiQ5LIqSXjKujbdTIV9j3V/h5LYjwY2rXh1/ZQFdNMwno25C52vQdtcfZUGaCVSyJ
 2iioXjL/TZ43w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 04/11] drm/i915: Use drm_dbg_kms() for initial FB debugs
Date: Fri, 10 Jul 2026 13:15:31 +0200
Message-ID: <20260710111539.1274555-5-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 5F1BA73A088

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The initial FB stuff is ultimately about display stuff, so
use the proper display specific debug level for it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patch.msgid.link/20260511214122.8468-6-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/i915_initial_plane.c     |  4 ++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 4902c07486640..08d94f3a1584a 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -69,8 +69,8 @@ initial_plane_phys(struct drm_i915_private *i915,
 		return false;
 	}
 
-	drm_dbg(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
-		&dma_addr);
+	drm_dbg_kms(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
+		    &dma_addr);
 
 	*out_phys_base = dma_addr - mem->region.start;
 	*out_mem = mem;
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 02b46cc3b6df9..da04ee66252ad 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -60,9 +60,9 @@ initial_plane_bo(struct xe_device *xe,
 			return NULL;
 		}
 
-		drm_dbg(&xe->drm,
-			"Using phys_base=%pa, based on initial plane programming\n",
-			&phys_base);
+		drm_dbg_kms(&xe->drm,
+			    "Using phys_base=%pa, based on initial plane programming\n",
+			    &phys_base);
 	} else {
 		struct ttm_resource_manager *stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
 
@@ -86,9 +86,9 @@ initial_plane_bo(struct xe_device *xe,
 	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base,
 					  ttm_bo_type_kernel, flags, 0, false);
 	if (IS_ERR(bo)) {
-		drm_dbg(&xe->drm,
-			"Failed to create bo phys_base=%pa size %u with flags %x: %li\n",
-			&phys_base, size, flags, PTR_ERR(bo));
+		drm_dbg_kms(&xe->drm,
+			    "Failed to create bo phys_base=%pa size %u with flags %x: %li\n",
+			    &phys_base, size, flags, PTR_ERR(bo));
 		return NULL;
 	}
 
-- 
2.53.0

