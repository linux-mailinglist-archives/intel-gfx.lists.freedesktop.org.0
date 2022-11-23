Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED42636378
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B43F10E575;
	Wed, 23 Nov 2022 15:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C127A10E575
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217217; x=1700753217;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QOg5fUPBz7exMl7hXv7Iv7Y6dRS1FxMJihw14aGXFEI=;
 b=T4PmbueT7YBUSoQT+XF/eFv8c4GC4U/4raksLRh0PcuniEHL0xQcS899
 jjiDJp3dJsXc0FO2Hvq8UQ8rw9nwp3CmDm0e09TJJFc+mxSwaZZQqa5g2
 VEwEYu4hk6HBrYwMuaifOK2aGRNBah6Ir90ZULZnTCkw28Mg5oTGtwb/j
 ycdK4wvxekpRIG3M8+9C3Dk+q8jbFjNUKPa5e4lUj0y8cRhRc0v977ARk
 SwLJFob7+9v8xQe9DzDJ4m4TFAmnbGEDWNHQx0v4REoixwd44b+CgwgiP
 X/WYAMQsKtHkLAp243e+iNvV6FfhEBVLFRZgOiLtENYr2lBU3WhsveVRT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789879"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789879"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650941"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650941"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:27 +0200
Message-Id: <20221123152638.20622-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Clean up GAMMA_MODE defines
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

Use REG_BIT() & co. for GAMMA_MODE bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b1c314093737..52d289f55ce1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5309,14 +5309,14 @@
 #define _GAMMA_MODE_A		0x4a480
 #define _GAMMA_MODE_B		0x4ac80
 #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
-#define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
-#define  POST_CSC_GAMMA_ENABLE	(1 << 30)
-#define  GAMMA_MODE_MODE_MASK	(3 << 0)
-#define  GAMMA_MODE_MODE_8BIT	(0 << 0)
-#define  GAMMA_MODE_MODE_10BIT	(1 << 0)
-#define  GAMMA_MODE_MODE_12BIT	(2 << 0)
-#define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
-#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	(3 << 0) /* icl-tgl */
+#define  PRE_CSC_GAMMA_ENABLE			REG_BIT(31) /* icl+ */
+#define  POST_CSC_GAMMA_ENABLE			REG_BIT(30) /* icl+ */
+#define  GAMMA_MODE_MODE_MASK			REG_GENMASK(1, 0)
+#define  GAMMA_MODE_MODE_8BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 0)
+#define  GAMMA_MODE_MODE_10BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 1)
+#define  GAMMA_MODE_MODE_12BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 2)
+#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
-- 
2.37.4

