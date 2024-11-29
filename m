Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1C39DBF90
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 07:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C64B10EDAD;
	Fri, 29 Nov 2024 06:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naeZGWrl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0D210EDAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 06:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732863029; x=1764399029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LbTQjlh4pQ0UVNwHqzoBMm2loS8AMIHp7l1RmJVa5fA=;
 b=naeZGWrlgvvRL6LMTWWBpbMH+NYdpwNljzoAL5FhdJmxDOLl6Ez4up8P
 kk2hZQFZzYy6JdW4yVMjviAr/E8SVcNWuJliRVmnSAYyFr772g4tzQ793
 M9kNXqkbJGNGULao6VRp9H84NiCJFjnVKYUJ/MrVhtbi1P6cAm5xJytjm
 BIgV1751sP3+S7prWJf6fp2V8tMzUjOxlGgWP0+H2My6jic3JvlT4Kxwe
 jYOjeZWc2ZC11ZeiNe2N1QDDW66Kre0bilf6ItiQsD5feyPOVcJwdUbMm
 xp60/TyTAFj7UYPmgZbLQBTrDGmHUR2igKoejeNpiYx7AZy2jHvaBm6Sq w==;
X-CSE-ConnectionGUID: popSwZv4Rx2+ajwHmrFBvA==
X-CSE-MsgGUID: C5L7CTB2T+mpvmhSb9iphA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44468039"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="44468039"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 22:50:29 -0800
X-CSE-ConnectionGUID: 6ap9CiN0SnGn1a9w5MhXCg==
X-CSE-MsgGUID: gPNveTl+TayXMuvrNfF/Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92589202"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 22:50:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2024 08:50:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sagar Ghuge <sagar.ghuge@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 3/4] drm/i915/fb: Check that the clear color fits within the BO
Date: Fri, 29 Nov 2024 08:50:13 +0200
Message-ID: <20241129065014.8363-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
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

Make sure the user supplied offset[] for the clear color plane
fits within the actual BO. Note that we use tile units to track
the size here. All the other color/aux planes are already
being checked correctly.

Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e478d412785e..9f7f1b9f3275 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1694,6 +1694,8 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		 * arithmetic related to alignment and offset calculation.
 		 */
 		if (is_gen12_ccs_cc_plane(&fb->base, i)) {
+			unsigned int end;
+
 			if (!IS_ALIGNED(fb->base.offsets[i], 64)) {
 				drm_dbg_kms(&i915->drm,
 					    "fb misaligned clear color plane %d offset (0x%x)\n",
@@ -1701,6 +1703,14 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 				return -EINVAL;
 			}
 
+			if (check_add_overflow(fb->base.offsets[i], 64, &end)) {
+				drm_dbg_kms(&i915->drm,
+					    "fb bad clear color plane %d offset (0x%x)\n",
+					    i, fb->base.offsets[i]);
+				return -EINVAL;
+			}
+
+			max_size = max(max_size, DIV_ROUND_UP(end, tile_size));
 			continue;
 		}
 
-- 
2.45.2

