Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E435F2CE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3156E92B;
	Wed, 14 Apr 2021 11:51:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A726E92C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:00 +0000 (UTC)
IronPort-SDR: x5nPXRrFJz1a3ZTfbbvnWccFgDEckfRWNgNyQEhgrgxpmnlB0IINagkLzhv5nLkbd/HmCPQEzd
 y0Mf4i+cenfg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119549"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119549"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:00 -0700
IronPort-SDR: uR92JKyQN1jmwRaOvRXWK9Qq5ttkmuE/pMo3ppjfm/0nRRL1KHdIvtgEB0+uK+qaxGl1341GSR
 9x4boaquCwNA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965235"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:58 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:18 +0100
Message-Id: <20210414115028.168504-19-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 18/28] drm/i915: Use Gen Kconfig items in IS_GEN
 macro
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
 drivers/gpu/drm/i915/i915_drv.h | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4f140e95207e..0e65e0bc3d09 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2557,13 +2557,42 @@ intel_info(const struct drm_i915_private *dev_priv)
 		(s) != GEN_FOREVER ? (s) - 1 : 0) \
 )
 
+#define __gen_test_mask(s, e) \
+({ \
+	u16 m__ = (u16)INTEL_GEN_MASK((s), (e)); \
+\
+	m__ &= ~BIT(0); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN2)) \
+		m__ &= ~BIT(1); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN3)) \
+		m__ &= ~BIT(2); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN4)) \
+		m__ &= ~BIT(3); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN5)) \
+		m__ &= ~BIT(4); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN6)) \
+		m__ &= ~BIT(5); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN7)) \
+		m__ &= ~BIT(6); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN8)) \
+		m__ &= ~BIT(7); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN9)) \
+		m__ &= ~BIT(8); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN10)) \
+		m__ &= ~BIT(9); \
+	if (!IS_ENABLED(CONFIG_DRM_I915_GEN11)) \
+		m__ &= ~BIT(10); \
+\
+	m__; \
+})
+
 /*
  * Returns true if Gen is in inclusive range [Start, End].
  *
  * Use GEN_FOREVER for unbound start and or end.
  */
 #define IS_GEN(dev_priv, s, e) \
-	(!!((dev_priv)->info.gen_mask & INTEL_GEN_MASK((s), (e))))
+	(!!(__gen_test_mask((s), (e)) & (dev_priv)->info.gen_mask))
 
 /*
  * Return true if revision is in range [since,until] inclusive.
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
