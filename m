Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F0DA194E0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 16:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B46210E706;
	Wed, 22 Jan 2025 15:18:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJh4nYCJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE7810E706;
 Wed, 22 Jan 2025 15:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737559084; x=1769095084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O2l444ttznRZ4LiqqrCajE0NB7ee01oJU+H9zotsvTs=;
 b=mJh4nYCJM+PiFvj2FooTkxuvNNE70pkNzHAPA7urODPOaqYDXlPE8h7T
 RTdHsgvh7i/G7qFUVrryriiBSPJpBB6p40tJ+5ZWum0L6oTaDRXPOh2QQ
 aPBuCNlhNnAPPFGeBxdhCZztNqFh2tyWonQ4AdXImASDGPqKkLsZvT1tH
 6COJt0LRAR13UnSjjs9BSld3PbvFgOC0W8khPvSVKgMUcQCoZ4pTvGEMn
 /BZaUJlxnGjrfoVAc8SljFUIsq36hsuK5ZOQ0/DiUvEmMY+MP+dMtiMMA
 9EU26sUPGA0U5BpXDXnKpgX39OJeHngAPx9il/w1b+1aXBguVZQNF/RMG Q==;
X-CSE-ConnectionGUID: 1Tk5P8wZTv2cX4rUkStS+w==
X-CSE-MsgGUID: 3hA6zkS6RuGaB70zmmXrEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40841188"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="40841188"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:18:04 -0800
X-CSE-ConnectionGUID: 8/RrxtXOTwqh71TTm4r1Yg==
X-CSE-MsgGUID: 2CQPDgNlSVScrVwKYY2kYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107274689"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 07:18:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 17:18:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915: Use more optimal VTd alignment for planes
Date: Wed, 22 Jan 2025 17:17:52 +0200
Message-ID: <20250122151755.6928-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Depending on the platform and/or plane type we can get away
with a bit less alignment in the VT-d w/a. Reduce the numbers
accordingly.

Note that it's not actually clear in VLV/CHV need this w/a,
and if they do we don't actually know what kind of alignment
is sufficient. Leave the 256k alignment in place for now, but
toss in a FIXME.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c   | 1 +
 drivers/gpu/drm/i915/display/intel_cursor.c | 2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c | 2 +-
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 19cc34babef3..65a2eb9e92c4 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -785,6 +785,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 	if (intel_plane_can_async_flip(plane, fb->modifier))
 		return 256 * 1024;
 
+	/* FIXME undocumented so not sure what's actually needed */
 	if (intel_scanout_needs_vtd_wa(i915))
 		return 256 * 1024;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9157825e370b..ea7cd7b5093c 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -375,7 +375,7 @@ static unsigned int i9xx_cursor_min_alignment(struct intel_plane *plane,
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	if (intel_scanout_needs_vtd_wa(i915))
-		return 256 * 1024;
+		return 64 * 1024;
 
 	return 4 * 1024; /* physical for i915/i945 */
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index d63e71fe469e..af121c720b89 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -983,7 +983,7 @@ static unsigned int g4x_sprite_min_alignment(struct intel_plane *plane,
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 
 	if (intel_scanout_needs_vtd_wa(i915))
-		return 256 * 1024;
+		return 128 * 1024;
 
 	return 4 * 1024;
 }
-- 
2.45.2

