Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93817BCAE3A
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F2710EB26;
	Thu,  9 Oct 2025 21:13:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zy6RXZpZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986EA10EB26;
 Thu,  9 Oct 2025 21:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044426; x=1791580426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYnYP05QrD1SldD4jpLiSIKqsmw/qDWgRKBBJUjhJQg=;
 b=Zy6RXZpZGgB+Po9jWadNHEkX5o4kkmTgS8v/pEfoe5bfqNfU6qjZf708
 fudoJgKDflobxTG48VF/UNUte8n7rhw160NtoEgX2CDhfJ/n/xNXRbiYK
 QALnvxDzMWKaZHW5qpVSISdbevYXI6guY2JWQmi8f0c8iwGknnzALdWCT
 AkperOjfDHCWJxM4yjF4rp0I3zLoVA4nHa+w1Nv8YAgCBkPLcIGmc2oDZ
 MEkFrK7dLBEuqc5lBm4LF2BDSNOu33j8I96jpd7vfAKNi1efjN/lv81w2
 WT11YQblF6t2LRufkcH/ZIKwclGiZ2+2108uF9BWN0Dm2npYRUwsnMEZU g==;
X-CSE-ConnectionGUID: UF/tuWBcTN+2xKJ1fNGJOg==
X-CSE-MsgGUID: wgWRf0ABT9qHCO1H62yu7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62306750"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="62306750"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:46 -0700
X-CSE-ConnectionGUID: T9/EJuk3T+2unhOpItAaaw==
X-CSE-MsgGUID: QLoP5zhDQMKyE4qMFi7wkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="185933284"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915: Extract glk_plane_has_planar()
Date: Fri, 10 Oct 2025 00:13:11 +0300
Message-ID: <20251009211313.30234-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract glk_plane_has_planar() out from skl_plane_has_planar()
to make the logic a bit less convoluted.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 64b30fad75ee..53130b5e4249 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2424,7 +2424,7 @@ static bool skl_plane_has_planar(struct intel_display *display,
 	if (display->platform.skylake || display->platform.broxton)
 		return false;
 
-	if (DISPLAY_VER(display) == 9 && pipe == PIPE_C)
+	if (pipe == PIPE_C)
 		return false;
 
 	if (plane_id != PLANE_1 && plane_id != PLANE_2)
@@ -2446,11 +2446,20 @@ static const u32 *skl_get_plane_formats(struct intel_display *display,
 	}
 }
 
+static bool glk_plane_has_planar(struct intel_display *display,
+				 enum pipe pipe, enum plane_id plane_id)
+{
+	if (plane_id != PLANE_1 && plane_id != PLANE_2)
+		return false;
+
+	return true;
+}
+
 static const u32 *glk_get_plane_formats(struct intel_display *display,
 					enum pipe pipe, enum plane_id plane_id,
 					int *num_formats)
 {
-	if (skl_plane_has_planar(display, pipe, plane_id)) {
+	if (glk_plane_has_planar(display, pipe, plane_id)) {
 		*num_formats = ARRAY_SIZE(glk_planar_formats);
 		return glk_planar_formats;
 	} else {
-- 
2.49.1

