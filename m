Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A34F5B5EA2
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D052510E045;
	Mon, 12 Sep 2022 16:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894C610E44A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001734; x=1694537734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Y7Tn6j5kXzlR3q4hGk+XTfxSTHEFjV+c8aEKRioSHU=;
 b=hbOecu3vCv4cSQkLFfKdp9Gwj9P51gpnicITljuttF6t6bFOnjyZ66A4
 /FYRtqypjJ8BsW75CA9GCYC47HTCylLrRCagXCUxRwQDyPpvF9q0FtlN1
 Zd82dvXWD3Vqca6hH5lQvEaKSSmeiMaOgpbKifZIxI+Ju9DZ5nUPxVXCJ
 kZnglO46WhckuTohJLO5C9JriAAQkKNMj50y2D1UQ2Mv2VGTCcoXpQtpx
 wOFs4COnGZmfyl+E7wSQYTMyJhCGltKEGDdvivUaPanQ/bUfdx7wxuepA
 iX7GfTQo0kwX3H5JEkmCKOyIXQNgkCsd8K+zVSaHkr+yad3WKKM0yZQou Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="299256997"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299256997"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="741843678"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:35 +0300
Message-Id: <940e4c0853a4ffdbfd1be3d93a064f3718680ad2.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/reg: move pick even and pick to
 reg defs
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a more logical place for generic helpers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 15 ---------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3727fc1d5d61..03ff6039b27f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -117,21 +117,6 @@
 
 #define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
 
-/*
- * Given the first two numbers __a and __b of arbitrarily many evenly spaced
- * numbers, pick the 0-based __index'th value.
- *
- * Always prefer this over _PICK() if the numbers are evenly spaced.
- */
-#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
-
-/*
- * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
- *
- * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
- */
-#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
-
 /*
  * Named helper wrappers around _PICK_EVEN() and _PICK().
  */
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 7536f1b72778..344e5006650e 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -111,6 +111,21 @@
 #define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
 #define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
 
+/*
+ * Given the first two numbers __a and __b of arbitrarily many evenly spaced
+ * numbers, pick the 0-based __index'th value.
+ *
+ * Always prefer this over _PICK() if the numbers are evenly spaced.
+ */
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
+
+/*
+ * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
+ *
+ * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
+ */
+#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.34.1

