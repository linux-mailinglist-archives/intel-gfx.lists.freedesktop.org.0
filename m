Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6872335F2D6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5DF6E92F;
	Wed, 14 Apr 2021 11:51:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A5266E92E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:06 +0000 (UTC)
IronPort-SDR: otiYpS/zAyIUMVzuorKEgTcxSDajjEy9EmV+72Ecx/PDHEGb5BHdpJkCGao6jVBhUjr74VRtVT
 mkbezVVTdCtg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119577"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119577"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:06 -0700
IronPort-SDR: DHFYr9rmAnNNCVVTQEz2PEhDM4jpJfoslTZodUWu9DCyesNSxt6WKDG6KEmyP+7upmqP+ci5Gw
 /yr8VFpkAELg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965273"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:05 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:24 +0100
Message-Id: <20210414115028.168504-25-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 24/28] drm/i915: Use IS_GEN in intel_fb_pitch_limit
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_display.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index f7a3cefaaaed..5d1d67a7c368 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -13848,23 +13848,22 @@ static
 u32 intel_fb_pitch_limit(struct drm_i915_private *dev_priv,
 			 uint64_t fb_modifier, uint32_t pixel_format)
 {
-	u32 gen = INTEL_GEN(dev_priv);
-
-	if (gen >= 9) {
+	if (IS_GEN(dev_priv, 9, GEN_FOREVER)) {
 		int cpp = drm_format_plane_cpp(pixel_format, 0);
 
 		/* "The stride in bytes must not exceed the of the size of 8K
 		 *  pixels and 32K bytes."
 		 */
 		return min(8192 * cpp, 32768);
-	} else if (gen >= 5 && !HAS_GMCH_DISPLAY(dev_priv)) {
+	} else if (IS_GEN(dev_priv, 5, GEN_FOREVER) &&
+		   !HAS_GMCH_DISPLAY(dev_priv)) {
 		return 32*1024;
-	} else if (gen >= 4) {
+	} else if (IS_GEN(dev_priv, 4, GEN_FOREVER)) {
 		if (fb_modifier == I915_FORMAT_MOD_X_TILED)
 			return 16*1024;
 		else
 			return 32*1024;
-	} else if (gen >= 3) {
+	} else if (IS_GEN(dev_priv, 3, GEN_FOREVER)) {
 		if (fb_modifier == I915_FORMAT_MOD_X_TILED)
 			return 8*1024;
 		else
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
