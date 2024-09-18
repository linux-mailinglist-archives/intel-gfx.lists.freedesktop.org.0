Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BB97BE31
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2552110E5C1;
	Wed, 18 Sep 2024 14:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MyRY6uKu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E24CB10E5C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670705; x=1758206705;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MfWuny0JwFcL3zB8OrLNfz7XENEOakAQGbAp18Qh0xk=;
 b=MyRY6uKuyWz4xHBjjvFS6UPjL8lvfWub/9x4aTURTssMl2XA+B1zsEkF
 KT1uTgNUrAQqxA+Xuz7B/Su2+hSgHfv5vTkY1UEu1LvatxVKYevLsco/x
 thLuNw5ZIs0ZCE132JmpGuhkguILY8gRp/40t1WKcfFD44MUuOmiRUnHM
 ShqvSbhldO3GeYvfb7HEyRqoYJzknGkTieHZSNCxkGy7OqIGWun0IOry9
 fuRzJIho1tst8A6byop3C7jTnbALU/TY60c80vQ+Vl6gO5KUGqM76rKbW
 UTPQwNwleFsEaV0lAvlfvkTUiI3aA3+DuHGuez3+stSCuHjH/VuFNY5KC g==;
X-CSE-ConnectionGUID: p8NJA866SwmcYqm5eLA7LA==
X-CSE-MsgGUID: dX+kHlnRRjmBP0daFre/Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963613"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963613"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:45:05 -0700
X-CSE-ConnectionGUID: Tw+u86DES36BxTSCMZGVjQ==
X-CSE-MsgGUID: ed/IlUUDSu+r0jwq5s6e5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:45:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:45:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: Drop GEN12_MC_CCS check from
 skl_plane_max_width()
Date: Wed, 18 Sep 2024 17:44:44 +0300
Message-ID: <20240918144445.5716-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
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

I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS is tgl+ only, so checking for
in skl_plane_max_width() (which only applies to pre-glk hardware)
is pointless.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index afaa92a6d91c..f56d679b0143 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -349,7 +349,6 @@ static int skl_plane_max_width(const struct drm_framebuffer *fb,
 			return 5120;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 		/* FIXME AUX plane? */
 	case I915_FORMAT_MOD_Y_TILED:
 	case I915_FORMAT_MOD_Yf_TILED:
-- 
2.44.2

