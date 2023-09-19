Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622BE7A6B82
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4C610E2A1;
	Tue, 19 Sep 2023 19:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461A410E293
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wMhognfuhmnzyC+G0kAy+YIuiBEM/O/I11llUTHQ71c=;
 b=MRnswWHlFe1O9oyfgC/puTOY64buTFOkrR4q4Gh90g9+jjeBS4qMnLod
 muurIBXHuutlnJYVRpLI7iPI7KH6OZ28fysFB5nZvCkwOugjQ2UUtMx+v
 +DV7XMXyCrqOLgwq5clrbozrVKfrf8rlILgT+XJEVKWXwvC+LfqSD5Iyw
 MpOJ6c3g4YDWJTgN4zgMY1VaD0ah5OgDfVajJNUN8WZqd5NQ38BeY7nta
 7osi25W+pMET8J4sYl9Lyrv835SqnjEEHoVoE2bYGyTBDaSc1lnslmo9i
 +94G6p1CjSPqToC0/dZIBBUb1wbsoQvfUHLlEbch3SU64+GwCAlnlK0nc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423145"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423145"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350092"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350092"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:21 -0700
Message-Id: <20230919192128.2045154-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 15/22] drm/i915/xe2lpd: Enable odd size and panning
 for planar yuv
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

From: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>

Enable odd size and panning for planar yuv formats.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d7a0bd686e49..b1074350616c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -981,6 +981,14 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 	if (fb->format->format == DRM_FORMAT_RGB565 && rotated) {
 		hsub = 2;
 		vsub = 2;
+	} else if (DISPLAY_VER(i915) >= 20 &&
+		   intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
+		/*
+		 * This allows NV12 and P0xx formats to have odd size and/or odd
+		 * source coordinates on DISPLAY_VER(i915) >= 20
+		 */
+		hsub = 1;
+		vsub = 1;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.40.1

