Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ5QKB5NAmrGqgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E5F5166B6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE8F10E8E7;
	Mon, 11 May 2026 21:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgEIDnTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B10710E8DB;
 Mon, 11 May 2026 21:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535707; x=1810071707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iBCnCyOP0JC3g1sq6zscXNUoP+a0BlNRaOPEdHVAX7Q=;
 b=cgEIDnTiIdiCZU05CqZ0ZgGY1jionY9eDQmPu2xHP4eOT8sYz39S1/QV
 Jh6y6oNni56nJlChOUZQ39XxZLXa4EhiVFqjl9jn2Rg7WdWPfKCVGGvx3
 kwXgBCWkodD89WuqQKCirW7QFp6+o9RYDyI2uGSVeiBSBzNxm3nDozn0B
 mSgEOsimsK8ggEhm+ohd0uTkgJ4ZsrdjId7/5+YDASsD3DUf9GtuX3Z+5
 11P78IY20Cp64m/xOkJd4ph/TLnDkEA7832YKSHyhAPo7DCduf9pFjTiB
 UbNlw4Fyyl5bJ6HT/YWHQ0sd5GWj2eTZfJzr42RfBF0vEh7yyh9cLRExq g==;
X-CSE-ConnectionGUID: cL32+uFqRdq42R690r2ilw==
X-CSE-MsgGUID: 7bJpivc5SvGB6sThb9fpwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618493"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618493"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:47 -0700
X-CSE-ConnectionGUID: mn8V5aLySYupOhJKZ7Po8A==
X-CSE-MsgGUID: SZ9YTJCAS4injtVRHc1OoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097291"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915: Use drm_dbg_kms() for initial FB debugs
Date: Tue, 12 May 2026 00:41:13 +0300
Message-ID: <20260511214122.8468-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 76E5F5166B6
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The initial FB stuff is ultimately about display stuff, so
use the proper display specific debug level for it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_initial_plane.c     |  4 ++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 56d31f83707b..62365ba1ff97 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -68,8 +68,8 @@ initial_plane_phys(struct drm_i915_private *i915,
 		return false;
 	}
 
-	drm_dbg(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
-		&dma_addr);
+	drm_dbg_kms(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
+		    &dma_addr);
 
 	*out_phys_base = dma_addr - mem->region.start;
 	*out_mem = mem;
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 1f2919797f6f..37cfc8a55031 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -59,9 +59,9 @@ initial_plane_bo(struct xe_device *xe,
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
 
@@ -78,9 +78,9 @@ initial_plane_bo(struct xe_device *xe,
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
2.52.0

