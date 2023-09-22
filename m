Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 552FC7AB2BC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34C410E667;
	Fri, 22 Sep 2023 13:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F34B10E66C;
 Fri, 22 Sep 2023 13:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695389446; x=1726925446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ExnZHFiUvvkZEaljUvD+RczBaTFBqPSQXIpBOmyUt2E=;
 b=SEGZnerG8oDm+Nw9lalMFTNh3k5X6UMMJHFM0R0qu7pL2Il4RKJbcNxC
 9oTuvYGN/cXzQ3qQasFODiewWhq0MBbS9RLlzHnjx7aKC3XyG+50714BB
 jTXy5VuwFu9anL0xupXseW3OFuraCSzZ2rr8FpLDKVGm9nV8TLDK88MgM
 xheLYVziqgUuYL9GHZ24QdAKDgDSf8cDhe8tFMFJs+KqdQFEnj71v/f2L
 yw5T6Lc2TNktnyEBYADVzlMPNcYX4LN3bZKGQ+Czz2JI2Oz9oW37g+EsV
 kGgkpC/AI8amlACd0K7RgwAHQnI3g3no038GW+3HtxO6rnWjJvdv9NXxe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="361078362"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="361078362"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="1078374389"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="1078374389"
Received: from rvaittin-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.220.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:30:22 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri, 22 Sep 2023 16:30:03 +0300
Message-Id: <20230922133003.150578-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922133003.150578-1-vinod.govindapillai@intel.com>
References: <20230922133003.150578-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/lnl: update the supported plane
 formats with FBC
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC is supported with RGB32 8:8:8:8 with or without alpha

Bspec: 68904, 69560
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index aef5a4f6ad09..9b19fe018bce 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -903,6 +903,11 @@ static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 		if (IS_G4X(i915))
 			return false;
 		return true;
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_ABGR8888:
+		if (DISPLAY_VER(i915) >= 20)
+			return true;
+		fallthrough;
 	default:
 		return false;
 	}
@@ -1132,7 +1137,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
+	if (DISPLAY_VER(i915) < 20 &&
+	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
 	    fb->format->has_alpha) {
 		plane_state->no_fbc_reason = "per-pixel alpha not supported";
 		return 0;
-- 
2.34.1

