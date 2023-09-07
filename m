Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E717974C0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E17810E032;
	Thu,  7 Sep 2023 15:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFE310E813;
 Thu,  7 Sep 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101207; x=1725637207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wMhognfuhmnzyC+G0kAy+YIuiBEM/O/I11llUTHQ71c=;
 b=AgGMWcYYB0GrfwB9l6s44GGnCDgArvaRNTE4AD0I5Ab7eRdqHGjVa+Yv
 rvQtJGyqHJtDBMqR5AiRZm8LC3a122W2NkbWUiE7Wnf5mjQfa8eLxZJ+E
 en+3+aVHJgCpO7OrQKhOEYlpSNN7MKnDcvO3QUaoBYSc0nRc3xTD9xiW6
 WLqgdvjGyik/Bw93ncvFbrXwXFcdi+Bg8oAnR89/CQ4J9uQ/pOCuT8vQn
 6ZDj1Ny4qTNg3wZ2zzbpifTROfTOYs2vf0Z5u48ZDQrYZeJBr8xHTBpIb
 +1X6aKXmd4CURleusU62ginieCAd5IMvFfOF2vIhLuUw6zvmUAxEYAVbq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445799"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445799"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930288"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930288"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:48 -0700
Message-Id: <20230907153757.2249452-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 18/27] drm/i915/xe2lpd: Enable odd size and
 panning for planar yuv
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
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

