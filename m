Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPNBCaAR2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49853D8E82
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D50910E97A;
	Fri, 10 Apr 2026 15:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NBbAm7uP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF80410E978;
 Fri, 10 Apr 2026 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833501; x=1807369501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fL6Z8SwXbSifJP7dbq1dUMx7scTo2pf97vaYWhNaCEA=;
 b=NBbAm7uPDaeozplP0vTeWB3PuWjne6rW2j5rYoJYXOv1gWZw1aHJ4JU/
 wMk/RKHWXrNsml9gD3XEJ8NWPUq3E2UbqBEsMre1AfuTxIXbV09ChNX9o
 l033rIuLsTweBDfc+GMYOrv1U1sXc2/U+q4aKfNl6O1r/oOpTri5EIMlJ
 nmiAbeIOdbYOjSmIEpDYTtxazByz8Kr+jJiERgMmnS3TUYecs6Ap9qAak
 0O7TPSAUco5d7aCG5nYaAEluT7E010KUXMCjT/27A943yoPEA42QUFvGs
 d7McRiQ7ffrM5pZEOF/wQhkDMNW9fSL/m5w+0JB5ToiOy78YwHuD3eMYM w==;
X-CSE-ConnectionGUID: 6SHpmMPcTiexvebUyW9OcQ==
X-CSE-MsgGUID: F0t7OL97TnKDVaTRd9EVvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76815312"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76815312"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:01 -0700
X-CSE-ConnectionGUID: UAPTKJ70SbWy5wof1vOWtg==
X-CSE-MsgGUID: z4xq3ZgMQ6ioYHbT9wIAEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230827802"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:04:59 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/10] drm/i915: Remove 'mem' and 'phy_base' from struct
 intel_initial_plane_config
Date: Fri, 10 Apr 2026 18:04:41 +0300
Message-ID: <20260410150449.9699-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: C49853D8E82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The 'mem' and 'phy_base' members or struct intel_initial_plane_config
only exist to be passed from initial_plane_phys() to its sole caller.
Just return them via function arguments.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 --
 drivers/gpu/drm/i915/i915_initial_plane.c          | 13 ++++++-------
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ca2581fb7bbd..eaa37b8d9584 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -756,8 +756,6 @@ struct intel_plane_state {
 
 struct intel_initial_plane_config {
 	struct intel_framebuffer *fb;
-	struct intel_memory_region *mem;
-	resource_size_t phys_base;
 	struct i915_vma *vma;
 	int size;
 	u32 base;
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index c1a12bf6b66c..060aa0388c39 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -34,7 +34,9 @@ initial_plane_memory_type(struct drm_i915_private *i915)
 
 static bool
 initial_plane_phys(struct drm_i915_private *i915,
-		   struct intel_initial_plane_config *plane_config)
+		   struct intel_initial_plane_config *plane_config,
+		   resource_size_t *out_phys_base,
+		   struct intel_memory_region **out_mem)
 {
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
@@ -77,8 +79,8 @@ initial_plane_phys(struct drm_i915_private *i915,
 	drm_dbg(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
 		&dma_addr);
 
-	plane_config->phys_base = dma_addr - mem->region.start;
-	plane_config->mem = mem;
+	*out_phys_base = dma_addr - mem->region.start;
+	*out_mem = mem;
 
 	return true;
 }
@@ -99,12 +101,9 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (plane_config->size == 0)
 		return NULL;
 
-	if (!initial_plane_phys(i915, plane_config))
+	if (!initial_plane_phys(i915, plane_config, &phys_base, &mem))
 		return NULL;
 
-	phys_base = plane_config->phys_base;
-	mem = plane_config->mem;
-
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 	size = round_up(plane_config->base + plane_config->size,
 			mem->min_page_size);
-- 
2.52.0

