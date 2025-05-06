Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D3AAC1D4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC8310E64F;
	Tue,  6 May 2025 10:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1gccOiO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8480D10E64F;
 Tue,  6 May 2025 10:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746529059; x=1778065059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9AN7sl6uz5XvHG47osj5jOJevuZEjw+8hGzZDPd1tMs=;
 b=j1gccOiOoib2dUNIPXpmd9LC7Bf45n0sPfRqOQWccGwRwoOC1ZpoS62y
 clU34S9phJszmE70xUS7m8Usx1taCtQTGTvqbWOpsWHpVHNLlJ144iPVi
 ImNPDwXaHRGFOZATFVvB2RaszoNz1EbWee3t3Z8G9rOj9h1xiRkI9ABCs
 8fH9+AzbmCs/9eVj+Dg175htKhwGA5zd3vYalCHy0dWE58qwaRCZNoD8O
 hZzbGKfKVFvXhOuqUUjMSoG62c8iLrsVAABD0W3eAEp6PVkBPOQcnRxrt
 BSscew7q/GuN1AN91EVFHIvcgJzkuKBfttyhuLTqWuaUmcRLFKzuU+8Hk A==;
X-CSE-ConnectionGUID: +UcVGc57QdWk9k6kzIRDGQ==
X-CSE-MsgGUID: WUX3EgtvQU+WXxOJofG6jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59580323"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59580323"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:39 -0700
X-CSE-ConnectionGUID: q7RqaIIXQReitApXXJxEFw==
X-CSE-MsgGUID: rdnofmVmSMe17bNiZn0TxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="139636372"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/crtc: pass struct intel_display to DISPLAY_VER()
Date: Tue,  6 May 2025 13:57:19 +0300
Message-Id: <cb84073ff92a99e74ff6dfb8e395365b7cbb5332.1746529001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746529001.git.jani.nikula@intel.com>
References: <cover.1746529001.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Drop another reference to struct drm_i915_private.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 537859630363..29cfc38f12e0 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -305,7 +305,6 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
 
 int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *primary, *cursor;
 	const struct drm_crtc_funcs *funcs;
 	struct intel_crtc *crtc;
@@ -333,7 +332,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	for_each_sprite(display, pipe, sprite) {
 		struct intel_plane *plane;
 
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			plane = skl_universal_plane_create(display, pipe, PLANE_2 + sprite);
 		else
 			plane = intel_sprite_plane_create(display, pipe, sprite);
-- 
2.39.5

