Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 664DC802377
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Dec 2023 12:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AADF510E2AC;
	Sun,  3 Dec 2023 11:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B0010E2B0
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 Dec 2023 11:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701604165; x=1733140165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SRSfmBtE2tHkd5/fPSctAFgITeMovtOJ108tMJORJ7c=;
 b=V0NHou/JBwfEfRk2ezG8nOyAyPWCVxPLQAfUF74iufypHMgbhS5AC5qW
 mwI3Zc8FAf01bAoq51oW6Ndhg8AHLtQSdGX8/tTKQHNc986GQTOFV8STj
 ZY0w7ggj6te6+vi1FPU9v/wqbfqTp9OSPrb7KChtz8/B1b457KTwkxfbl
 dHKI8yjGLnHAbs2AAGy+F9OuTDLgOppxHY9YByev+tUdfPj6bGWIMESxw
 Tox8vp4b575JfMKkGriCOkNyH2C5nbsXcwP4UfuFSDxayxherMegpxHcC
 BHM+PrlZA5a1NJOMZOHN7s/ClTNW7sJw+Aqyf1eHvgnUdkncGTjlxZn+0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="397526375"
X-IronPort-AV: E=Sophos;i="6.04,247,1695711600"; d="scan'208";a="397526375"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 03:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="720038379"
X-IronPort-AV: E=Sophos;i="6.04,247,1695711600"; d="scan'208";a="720038379"
Received: from jamullin-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.32.171])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 03:49:12 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 Dec 2023 13:48:39 +0200
Message-Id: <20231203114840.841311-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231203114840.841311-1-jouni.hogander@intel.com>
References: <20231203114840.841311-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 3/4] drm/i915/display: Handle invalid
 fb_modifier in intel_fb_modifier_to_tiling
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

Lookup_modifier is returning INTEL_PLANE_CAP_TILING_4 on invalid
fb_modifier value. Use lookup_modifier_or_null in
intel_fb_modifier_to_tiling and return I915_TILING_NONE in case
lookup_modifier_or_null returns null.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6c89cb2f2002..868e39291e9f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -303,7 +303,14 @@ lookup_format_info(const struct drm_format_info formats[],
 
 unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 {
-	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
+	const struct intel_modifier_desc *md;
+	u8 tiling_caps;
+
+	md = lookup_modifier_or_null(fb_modifier);
+	if (!md)
+		return I915_TILING_NONE;
+
+	tiling_caps = lookup_modifier_or_null(fb_modifier)->plane_caps &
 			 INTEL_PLANE_CAP_TILING_MASK;
 
 	switch (tiling_caps) {
-- 
2.34.1

