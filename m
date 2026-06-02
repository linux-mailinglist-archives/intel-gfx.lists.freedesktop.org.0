Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HbFF9qrHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173D162C329
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B7F10EE50;
	Tue,  2 Jun 2026 10:09:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkSC+5Fi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D11D10EE50;
 Tue,  2 Jun 2026 10:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394967; x=1811930967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2a827AnyCL7YgPIlGJ1JoSlSYkxJqhfBRC8epGVzlmo=;
 b=kkSC+5FiW9S8idpMmlLKNQ7ibyFfzr2mrobOShmWp3vZY/iagfOc7BzS
 d4netMoEBVYe7MenpiaGF/IL4qoLoytTPaP1qHhM/OacAoWbpgCctEybP
 M9ZVrCbSZZxp2tPu7JPC6eOA4LT7GeTsfRFFJzpRHEZGoBTX4Pm0pNhp+
 kiKD2lssKZIGxXTwkQc1hbWRfT/skloD+3Y4nPH6xNNMIZzWkcz5TLQgT
 UgE9WNBx04I0b1uVoPQ8DsRXNtyPuHY0w85zo0Kt42NgZcog7FK4RJ1gE
 Ny75Bvn0ekmUD7PlX7jlLS8lyEAGJgNrZEHcofg6y6SrW2vUvGbz/Bp3M Q==;
X-CSE-ConnectionGUID: MtVSB6bhQgqfOM7rbhjGzw==
X-CSE-MsgGUID: IXZrMrh9TeanOZJEEQ0GMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81038250"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81038250"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:27 -0700
X-CSE-ConnectionGUID: O0BD2lEAR9C8Ttvb4/nuuA==
X-CSE-MsgGUID: 9mP5n8clQH6/ShhxNA1J6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="245670033"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 3/6] drm/i915/panic: remove the extra layer from panic hooks
Date: Tue,  2 Jun 2026 13:09:06 +0300
Message-ID: <69a776c2951b3d1f81d8eb3870cbc7fda4d1c6e0.1780394867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780394867.git.jani.nikula@intel.com>
References: <cover.1780394867.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 173D162C329
X-Rspamd-Server: lfdr
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
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Action: no action

The extra layer in the panic hooks is useless. Remove it.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_panic.c | 30 ++++++-----------------
 1 file changed, 7 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
index 14ea45dcdd8f..bb26a0ece176 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
@@ -98,9 +98,11 @@ static struct intel_panic *i915_gem_object_alloc_panic(void)
  * Use current vaddr if it exists, or setup a list of pages.
  * pfn is not supported yet.
  */
-static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				       struct drm_gem_object *_obj, bool panic_tiling)
+static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
+	struct intel_framebuffer *fb = sb->private;
+	struct drm_gem_object *_obj = intel_fb_bo(&fb->base);
+	bool panic_tiling = fb->panic_tiling;
 	enum i915_map_type has_type;
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	void *ptr;
@@ -135,26 +137,8 @@ static void i915_gem_object_panic_finish(struct intel_panic *panic)
 	panic->pages = NULL;
 }
 
-static struct intel_panic *intel_panic_alloc(void)
-{
-	return i915_gem_object_alloc_panic();
-}
-
-static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
-{
-	struct intel_framebuffer *fb = sb->private;
-	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
-
-	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
-}
-
-static void intel_panic_finish(struct intel_panic *panic)
-{
-	return i915_gem_object_panic_finish(panic);
-}
-
 const struct intel_display_panic_interface i915_display_panic_interface = {
-	.alloc = intel_panic_alloc,
-	.setup = intel_panic_setup,
-	.finish = intel_panic_finish,
+	.alloc = i915_gem_object_alloc_panic,
+	.setup = i915_gem_object_panic_setup,
+	.finish = i915_gem_object_panic_finish,
 };
-- 
2.47.3

